import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../enums/conversation_state.dart';
import '../models/learning_data.dart';
import '../models/exercise.dart';
import '../models/message.dart';
import '../widgets/typing_indicator.dart';
import '../widgets/message_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _messageController = TextEditingController();
  final List<Message> _messages = [];
  final ScrollController _scrollController = ScrollController();

  bool _isTyping = false;
  late AnimationController _typingAnimationController;

  ConversationState _currentState = ConversationState.selectTheme;
  String? _selectedTheme;
  String? _selectedLesson;
  int _currentExerciseIndex = 0;
  bool _showingSolution = false;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _initMessages();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    _typingAnimationController.dispose();
    super.dispose();
  }

  void _initializeAnimations() {
    _typingAnimationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat();
  }

  Future<void> _initMessages() async {
    await _loadMessages();
    if (_messages.isEmpty) {
      _addMessage(Message(
        text:
            "Bonjour ! Je suis votre assistant mathématiques pour le programme IB maths AA.\n\n**Choisissez un thème :**\n\n• Thème 1: Nombres et Algèbre \n• Thème 2: Fonctions\n• Thème 3: Géométrie et Trigonométrie \n• Thème 4: Statistiques et Probabilités\n• Thème 5: Analyse mathématique\n\nTapez simplement le numéro du thème (1, 2, 3, 4, ou 5).",
        isUser: false,
        timestamp: DateTime.now(),
        id: DateTime.now().millisecondsSinceEpoch.toString(),
      ));
    }
  }

  Future<void> _loadMessages() async {
    final prefs = await SharedPreferences.getInstance();
    final messagesJson = prefs.getStringList('chat_messages') ?? [];
    setState(() {
      _messages.clear();
      _messages.addAll(
        messagesJson.map((json) => Message.fromJson(jsonDecode(json))).toList(),
      );
    });
  }

  Future<void> _saveMessages() async {
    final prefs = await SharedPreferences.getInstance();
    final messagesJson =
        _messages.map((msg) => jsonEncode(msg.toJson())).toList();
    await prefs.setStringList('chat_messages', messagesJson);
  }

  void _addMessage(Message message) {
    setState(() => _messages.add(message));
    _saveMessages();
    _scrollToBottom();
  }

  Future<void> _deleteMessage(String messageId) async {
    setState(() {
      _messages.removeWhere((msg) => msg.id == messageId);
    });
    await _saveMessages();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
        );
      }
    });
  }

  String _processUserInput(String userInput) {
    String input = userInput.toLowerCase().trim();

    switch (_currentState) {
      case ConversationState.selectTheme:
        return _handleThemeSelection(input);
      case ConversationState.selectLesson:
        return _handleLessonSelection(input);
      case ConversationState.inExercise:
        return _handleExerciseInteraction(input);
      default:
        return "Je n'ai pas compris votre demande.";
    }
  }

  String _handleThemeSelection(String input) {
    Map<String, String> themeMap = {
      '1': 'Thème 1: Nombres et Algèbre',
      '2': 'Thème 2: Fonctions',
      '3': 'Thème 3: Géométrie et Trigonométrie',
      '4': 'Thème 4: Statistiques et Probabilités',
      '5': 'Thème 5: Analyse mathématique',
    };

    String? selectedTheme = themeMap[input];
    if (selectedTheme != null &&
        LearningData.themes.containsKey(selectedTheme)) {
      _selectedTheme = selectedTheme;
      _currentState = ConversationState.selectLesson;
      var lessons = LearningData.themes[selectedTheme]!.keys.toList();
      String lessonsList = lessons
          .asMap()
          .entries
          .map((entry) => "• ${entry.key + 1}. ${entry.value}")
          .join('\n');
      return "Excellent choix ! Vous avez sélectionné : **$selectedTheme**\n\n**Choisissez une leçon :**\n\n$lessonsList\n\nTapez le numéro de la leçon que vous souhaitez travailler.";
    }

    return "Je n'ai pas reconnu votre choix. Veuillez taper le numéro du thème (1 à 5).";
  }

  String _handleLessonSelection(String input) {
    if (_selectedTheme == null) {
      _currentState = ConversationState.selectTheme;
      return "Erreur : thème non sélectionné. Recommençons.";
    }

    var lessons = LearningData.themes[_selectedTheme!]!.keys.toList();
    int? lessonIndex;
    try {
      lessonIndex = int.parse(input) - 1;
    } catch (_) {
      for (int i = 0; i < lessons.length; i++) {
        if (lessons[i].toLowerCase().contains(input)) {
          lessonIndex = i;
          break;
        }
      }
    }

    if (lessonIndex != null &&
        lessonIndex >= 0 &&
        lessonIndex < lessons.length) {
      _selectedLesson = lessons[lessonIndex];
      _currentState = ConversationState.inExercise;
      _currentExerciseIndex = 0;
      _showingSolution = false;
      var exercises = LearningData.themes[_selectedTheme!]![_selectedLesson!]!;
      return "Parfait ! Commençons avec : **$_selectedLesson**\n\n**Exercice 1/${exercises.length}:**\n\n${exercises[0].question}\n\n💡 Tapez 'correction' pour voir la solution ou donnez votre réponse !";
    }

    return "Numéro de leçon invalide. Choisissez un numéro entre 1 et ${lessons.length}.";
  }

  String _handleExerciseInteraction(String input) {
    if (_selectedTheme == null || _selectedLesson == null) {
      _currentState = ConversationState.selectTheme;
      return "Erreur : thème ou leçon non sélectionné. Recommençons.";
    }

    var exercises = LearningData.themes[_selectedTheme!]![_selectedLesson!]!;
    var totalExercices = exercises.length;

    if (input.contains('correction') || input.contains('solution')) {
      if (!_showingSolution) {
        _showingSolution = true;
        return "**Solution exercice ${_currentExerciseIndex + 1}:**\n\n${exercises[_currentExerciseIndex].solution}\n\n📚 Tapez 'suivant', 'menu', ou 'leçons'.";
      } else {
        return "La solution est déjà affichée ! Tapez 'suivant' pour continuer.";
      }
    }

    if (input.contains('suivant') || input.contains('next')) {
      if (_currentExerciseIndex < exercises.length - 1) {
        _currentExerciseIndex++;
        _showingSolution = false;
        return "**Exercice ${_currentExerciseIndex + 1}/$totalExercices:**\n\n${exercises[_currentExerciseIndex].question}\n\n💡 Tapez 'correction' pour la solution !";
      } else {
        return "🎉 Félicitations ! Tous les exercices de cette leçon sont terminés.\n\nOptions : 'recommencer', 'leçons', 'menu'";
      }
    }

    if (input.contains('recommencer') || input.contains('restart')) {
      _currentExerciseIndex = 0;
      _showingSolution = false;
      return "**Recommençons $_selectedLesson**\n\n**Exercice 1/$totalExercices:**\n\n${exercises[0].question}\n\n💡 Tapez 'correction' pour voir la solution !";
    }

    if (input.contains('leçons') || input.contains('lessons')) {
      _currentState = ConversationState.selectLesson;
      _selectedLesson = null;
      var lessons = LearningData.themes[_selectedTheme!]!.keys.toList();
      String lessonsList = lessons
          .asMap()
          .entries
          .map((entry) => "• ${entry.key + 1}. ${entry.value}")
          .join('\n');
      return "**Choisissez une nouvelle leçon de $_selectedTheme :**\n\n$lessonsList";
    }

    if (input.contains('menu') ||
        input.contains('thèmes') ||
        input.contains('themes')) {
      _currentState = ConversationState.selectTheme;
      _selectedTheme = null;
      _selectedLesson = null;
      _currentExerciseIndex = 0;
      _showingSolution = false;
      return "Retour au menu principal. Choisissez un thème :\n\n• Thème 1: Nombres et Algèbre\n• Thème 2: Fonctions\n• Thème 3: Géométrie et Trigonométrie\n• Thème 4: Statistiques et Probabilités\n• Thème 5: Analyse mathématique";
    }

    if (!_showingSolution) {
      return "Merci pour votre réponse ! 📝\nTapez 'correction' pour voir la solution détaillée.";
    }

    return "Commandes : 'correction', 'suivant', 'leçons', 'menu'.";
  }

  Future<void> _sendMessage() async {
    if (_messageController.text.trim().isEmpty) return;

    final userMessage = Message(
      text: _messageController.text.trim(),
      isUser: true,
      timestamp: DateTime.now(),
      id: DateTime.now().millisecondsSinceEpoch.toString(),
    );

    _addMessage(userMessage);
    String userInput = _messageController.text.trim();
    _messageController.clear();

    setState(() => _isTyping = true);
    await Future.delayed(const Duration(milliseconds: 100));
    setState(() => _isTyping = false);

    String response = _processUserInput(userInput);
    _addMessage(Message(
      text: response,
      isUser: false,
      timestamp: DateTime.now(),
      id: DateTime.now().millisecondsSinceEpoch.toString() + '_bot',
    ));
  }

  void _showDeleteDialog(Message message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Supprimer le message'),
        content: const Text('Êtes-vous sûr de vouloir supprimer ce message ?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Annuler'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _deleteMessage(message.id);
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Supprimer'),
          ),
        ],
      ),
    );
  }

  Widget _buildInputSection(bool isDark) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E1E1E) : Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -2))
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color:
                    isDark ? const Color(0xFF2D2D2D) : const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
              ),
              child: TextField(
                controller: _messageController,
                style: const TextStyle(fontSize: 17),
                decoration: const InputDecoration(
                  hintText: 'Tapez votre réponse ou une commande...',
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                maxLines: null,
                onSubmitted: (_) => _sendMessage(),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF6C5CE7), Color(0xFF74B9FF)]),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: _sendMessage,
              icon: const Icon(Icons.send, color: Colors.white, size: 25),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Assistant Mathématiques',
            style: TextStyle(fontWeight: FontWeight.w600)),
        backgroundColor: isDark ? const Color(0xFF1E1E1E) : Colors.white,
        foregroundColor: isDark ? Colors.white : Colors.black,
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () async {
              bool confirm = false;
              await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Effacer l\'historique'),
                  content: const Text(
                      'Voulez-vous supprimer tout l\'historique des conversations ?'),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Annuler')),
                    TextButton(
                      onPressed: () {
                        confirm = true;
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(foregroundColor: Colors.red),
                      child: const Text('Effacer'),
                    ),
                  ],
                ),
              );
              if (confirm) {
                setState(() {
                  _messages.clear();
                  _currentState = ConversationState.selectTheme;
                  _selectedTheme = null;
                  _selectedLesson = null;
                  _currentExerciseIndex = 0;
                  _showingSolution = false;
                });
                await _saveMessages();
                _addMessage(Message(
                  text:
                      "Bonjour ! Je suis votre assistant mathématiques pour le programme IB maths AA.\n\n**Choisissez un thème :**\n\n• Thème 1: Nombres et Algèbre \n• Thème 2: Fonctions\n• Thème 3: Géométrie et Trigonométrie \n• Thème 4: Statistiques et Probabilités\n• Thème 5: Analyse mathématique\n\nTapez simplement le numéro du thème (1, 2, 3, 4, ou 5).",
                  isUser: false,
                  timestamp: DateTime.now(),
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                ));
              }
            },
            icon: const Icon(Icons.delete_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: _messages.length + (_isTyping ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == _messages.length && _isTyping) {
                  return TypingIndicator(
                      typingAnimationController: _typingAnimationController);
                }
                return MessageBubble(
                  message: _messages[index],
                  index: index,
                  onLongPress: _showDeleteDialog,
                );
              },
            ),
          ),
          _buildInputSection(isDark),
        ],
      ),
    );
  }
}
