import 'package:flutter/material.dart';

class MathThemeData {
  final String id;
  final String title;
  final String description;
  final Color primaryColor;
  final Color backgroundColor;
  final List<String> topics;

  MathThemeData({
    required this.id,
    required this.title,
    required this.description,
    required this.primaryColor,
    required this.backgroundColor,
    required this.topics,
  });
}
