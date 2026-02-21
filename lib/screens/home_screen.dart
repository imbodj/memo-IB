import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../data/themes_data.dart';
import 'chat_screen.dart';
import 'theme_detail_screen.dart';
import 'booklet_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  final themes = mathThemes;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutBack),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _showAboutDialog(BuildContext context, bool isDark) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 16,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: isDark
                    ? [const Color(0xFF1A1A2E), const Color(0xFF16213E)]
                    : [
                        const Color(0xFF6C5CE7).withOpacity(0.1),
                        const Color(0xFF74B9FF).withOpacity(0.1),
                      ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6C5CE7), Color(0xFF74B9FF)],
                      ),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF6C5CE7).withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child:
                        const Icon(Icons.school, color: Colors.white, size: 40),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'À propos',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : const Color(0xFF2D3436),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFF6C5CE7).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: const Color(0xFF6C5CE7).withOpacity(0.3)),
                    ),
                    child: const Text(
                      'Version 1.0.0',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6C5CE7),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Cette application est actuellement conçue pour Mathématiques AA SL et sera élargie pour les autres niveaux et options du programme IB.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: isDark ? Colors.white70 : const Color(0xFF636E72),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: isDark
                          ? Colors.white.withOpacity(0.05)
                          : const Color(0xFF6C5CE7).withOpacity(0.05),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: const Color(0xFF6C5CE7).withOpacity(0.2)),
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.person, color: Color(0xFF6C5CE7), size: 24),
                        SizedBox(height: 8),
                        Text(
                          'Développé par',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF636E72)),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Ismaila Mbodji',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF6C5CE7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: const Color(0xFF6C5CE7),
                        foregroundColor: Colors.white,
                        elevation: 8,
                        shadowColor: const Color(0xFF6C5CE7).withOpacity(0.3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      child: const Text(
                        'Fermer',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isDark
                ? [
                    const Color(0xFF1A1A2E),
                    const Color(0xFF16213E),
                    const Color(0xFF0F3460)
                  ]
                : [
                    const Color(0xFF6C5CE7),
                    const Color(0xFF74B9FF),
                    const Color(0xFF00B894)
                  ],
          ),
        ),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // Header
              AnimatedBuilder(
                animation: _fadeAnimation,
                builder: (context, child) {
                  return Opacity(
                    opacity: _fadeAnimation.value,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Memo IB',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              Text(
                                'Mathématiques AA',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.8),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () =>
                                    _showAboutDialog(context, isDark),
                                icon: const Icon(Icons.info_outline,
                                    color: Colors.white, size: 28),
                              ),
                              IconButton(
                                onPressed: themeProvider.toggleTheme,
                                icon: Icon(
                                    isDark ? Icons.light_mode : Icons.dark_mode,
                                    color: Colors.white,
                                    size: 28),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

              // Bouton Chat
              SlideTransition(
                position: _slideAnimation,
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChatScreen()));
                      },
                      icon: const Icon(Icons.chat_bubble_outline, size: 24),
                      label: const Text(
                        'Résoudre des Maths',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF6C5CE7),
                        elevation: 8,
                        shadowColor: Colors.black.withOpacity(0.3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Liste des thèmes
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Thèmes du Programme',
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: screenHeight * 0.55,
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.85),
                  itemCount: themes.length,
                  itemBuilder: (context, index) {
                    final theme = themes[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ThemeDetailScreen(themeData: theme)));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 20,
                                  offset: const Offset(0, 8))
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xFF6C5CE7).withOpacity(0.8),
                                      Color(0xFF74B9FF).withOpacity(0.8)
                                    ]),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Center(
                                      child: Text('${index + 1}',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold))),
                                ),
                                const SizedBox(height: 20),
                                Text(theme.title,
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2D3436))),
                                const SizedBox(height: 20),
                                Wrap(
                                  spacing: 8,
                                  runSpacing: 8,
                                  children: theme.topics.map((topic) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 6),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF6C5CE7)
                                            .withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: const Color(0xFF6C5CE7)
                                                .withOpacity(0.3)),
                                      ),
                                      child: Text(topic,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF6C5CE7),
                                              fontWeight: FontWeight.w500)),
                                    );
                                  }).toList(),
                                ),
                                const Spacer(),
                                Container(
                                  width: double.infinity,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [
                                      Color(0xFF6C5CE7),
                                      Color(0xFF74B9FF)
                                    ]),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Text('Voir le Résumé',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Bouton Booklet
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookletScreen()));
                  },
                  icon: const Icon(Icons.menu_book, size: 24),
                  label: const Text('Booklet de Formules',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF00B894),
                    elevation: 8,
                    shadowColor: Colors.black.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
