import 'package:flutter/material.dart';

class TypingIndicator extends StatelessWidget {
  final AnimationController typingAnimationController;

  const TypingIndicator({super.key, required this.typingAnimationController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 16,
            backgroundColor: Color(0xFF6C5CE7),
            child: Icon(Icons.smart_toy, color: Colors.white, size: 16),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              borderRadius: BorderRadius.circular(18),
            ),
            child: AnimatedBuilder(
              animation: typingAnimationController,
              builder: (context, child) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildDot(0),
                    const SizedBox(width: 4),
                    _buildDot(1),
                    const SizedBox(width: 4),
                    _buildDot(2),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    final animationValue = typingAnimationController.value;
    final dotAnimation = ((animationValue * 3) - index).clamp(0.0, 1.0);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 30),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: Color.lerp(
          Colors.grey.withOpacity(0.5),
          const Color(0xFF6C5CE7),
          dotAnimation,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

