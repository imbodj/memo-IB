import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import '../models/message.dart';

class MessageBubble extends StatelessWidget {
  final Message message;
  final int index;
  final Function(Message) onLongPress;

  const MessageBubble({
    super.key,
    required this.message,
    required this.index,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final isUser = message.isUser;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 100 + (index * 100)),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, animationValue, child) {
        return Transform.translate(
          offset: Offset(0, 20 * (1 - animationValue)),
          child: Opacity(
            opacity: animationValue,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              child: Row(
                mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (!isUser) ...[
                    const CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xFF6C5CE7),
                      child: Icon(Icons.smart_toy, color: Colors.white, size: 16),
                    ),
                    const SizedBox(width: 8),
                  ],
                  Flexible(
                    child: GestureDetector(
                      onLongPress: () => onLongPress(message),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.75,
                          minWidth: 100,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          gradient: isUser
                              ? const LinearGradient(
                                  colors: [Color(0xFF6C5CE7), Color(0xFF74B9FF)],
                                )
                              : null,
                          color: isUser
                              ? null
                              : isDark
                                  ? const Color(0xFF2D2D2D)
                                  : const Color(0xFFF0F0F0),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(18),
                            topRight: const Radius.circular(18),
                            bottomLeft: Radius.circular(isUser ? 18 : 4),
                            bottomRight: Radius.circular(isUser ? 4 : 18),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildMessageContent(message.text, isUser, isDark),
                            const SizedBox(height: 4),
                            Text(
                              "${message.timestamp.hour.toString().padLeft(2, '0')}:${message.timestamp.minute.toString().padLeft(2, '0')}",
                              style: TextStyle(
                                fontSize: 10,
                                color: isUser
                                    ? Colors.white.withOpacity(0.7)
                                    : Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (isUser) ...[
                    const SizedBox(width: 8),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.grey[300],
                      child: const Icon(Icons.person, color: Colors.grey, size: 16),
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMessageContent(String text, bool isUser, bool isDark) {
    if (text.contains('∫') || text.contains('Σ') || text.contains('²') ||
        text.contains('³') || text.contains('√') || text.contains('dx') ||
        text.contains('sin') || text.contains('cos') || text.contains('tan') ||
        text.contains('_') || text.contains('=') || text.contains('^') ||
        text.contains('^{-1}')) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _parseTextWithMath(text, isUser, isDark),
      );
    } else {
      return Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: isUser
              ? Colors.white
              : isDark
                  ? Colors.white
                  : Colors.black87,
          height: 1.4,
        ),
      );
    }
  }

  List<Widget> _parseTextWithMath(String text, bool isUser, bool isDark) {
    List<Widget> widgets = [];
    List<String> lines = text.split('\n');

    for (String line in lines) {
      if (line.trim().isEmpty) {
        widgets.add(const SizedBox(height: 8));
        continue;
      }

      if (line.startsWith('**') && line.endsWith('**')) {
        widgets.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              line.replaceAll('**', ''),
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: isUser
                    ? Colors.white
                    : isDark
                        ? Colors.white
                        : Colors.black87,
              ),
            ),
          ),
        );
      } else if (_containsLatex(line)) {
        widgets.add(_buildLatexLine(line, isUser, isDark));
      } else {
        widgets.add(
          Text(
            line,
            style: TextStyle(
              fontSize: 18,
              color: isUser
                  ? Colors.white
                  : isDark
                      ? Colors.white
                      : Colors.black87,
              height: 1.4,
            ),
          ),
        );
      }
    }

    return widgets;
  }

  bool _containsLatex(String text) {
    return (text.contains(r'\(') && text.contains(r'\)')) ||
           (text.contains(r'\[') && text.contains(r'\]')) ||
           text.contains('∫') || text.contains('Σ') ||
           text.contains('²') || text.contains('³') ||
           text.contains('√') || text.contains('dx') ||
           text.contains('_') || text.contains('=') ||
           text.contains('^');
  }
  
   bool _containsMathSymbols(String text) {
    final mathPatterns = [
      r'∫', r'Σ', r'√', r'dx',
      r'sin', r'cos', r'tan',
      r'log', r'ln', r'π', r'theta',
      r'\^', r'_', r'frac', r'\\[a-zA-Z]+',
    ];
    for (final pattern in mathPatterns) {
      if (RegExp(pattern).hasMatch(text)) return true;
    }
    return false;
  }

 Widget _buildLatexLine(String line, bool isUser, bool isDark) {
  line = line
    .replaceAll(r'\\\\\(', r'\(')
    .replaceAll(r'\\\\\)', r'\)')
    .replaceAll(r'\\\\\[', r'\[')
    .replaceAll(r'\\\\\]', r'\]')
    .replaceAll(r'\\(', r'\(')
    .replaceAll(r'\\)', r'\)')
    .replaceAll(r'\\[', r'\[')
    .replaceAll(r'\\]', r'\]');

  List<Widget> lineWidgets = [];
  RegExp latexRegex = RegExp(r'\\\((.*?)\\\)|\\\[(.*?)\\\]');
  int lastIndex = 0;

  for (Match match in latexRegex.allMatches(line)) {
    if (match.start > lastIndex) {
      String beforeText = line.substring(lastIndex, match.start);
      if (beforeText.isNotEmpty) {
        lineWidgets.add(
          Flexible(
            child: Text(
              beforeText,
              style: TextStyle(
                fontSize: 18,
                color: isUser
                    ? Colors.white
                    : isDark
                        ? Colors.white
                        : Colors.black87,
              ),
            ),
          ),
        );
      }
    }

    String latexContent = match.group(1) ?? match.group(2) ?? '';
    if (latexContent.isNotEmpty) {
      try {
        lineWidgets.add(
          Flexible(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Math.tex(
                  latexContent,
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: isUser
                        ? Colors.white
                        : isDark
                            ? Colors.white
                            : Colors.black87,
                  ),
                ),
              ),
            ),
          ),
        );
      } catch (e) {
        lineWidgets.add(
          Flexible(
            child: Text(
              '\\($latexContent\\)',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'monospace',
                color: isUser
                    ? Colors.white
                    : isDark
                        ? Colors.white
                        : Colors.black87,
              ),
            ),
          ),
        );
      }
    }

    lastIndex = match.end;
  }

  if (lastIndex < line.length) {
    String remainingText = line.substring(lastIndex);
    if (remainingText.isNotEmpty) {
      lineWidgets.add(
        Flexible(
          child: Text(
            remainingText,
            style: TextStyle(
              fontSize: 18,
              color: isUser
                  ? Colors.white
                  : isDark
                      ? Colors.white
                      : Colors.black87,
            ),
          ),
        ),
      );
    }
  }

  if (lineWidgets.isEmpty && _containsMathSymbols(line)) {
    try {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isUser
              ? Colors.white.withOpacity(0.2)
              : isDark
                  ? Colors.grey[800]
                  : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isUser
                ? Colors.white.withOpacity(0.3)
                : Colors.grey.withOpacity(0.3),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Math.tex(
            line,
            textStyle: TextStyle(
              fontSize: 20,
              color: isUser
                  ? Colors.white
                  : isDark
                      ? Colors.white
                      : Colors.black87,
            ),
          ),
        ),
      );
    } catch (e) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          line,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'monospace',
            color: isUser
                ? Colors.white
                : isDark
                    ? Colors.white
                    : Colors.black87,
          ),
        ),
      );
    }
  }

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (lineWidgets.isNotEmpty)
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: lineWidgets.map((widget) {
              if (widget is Flexible) {
                return widget.child!;
              }
              return widget;
            }).toList(),
          ),
        ),
    ],
  );
}

}

