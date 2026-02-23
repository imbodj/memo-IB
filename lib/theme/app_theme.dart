import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF6C5CE7);
  static const Color secondaryColor = Color(0xFF74B9FF);
  static const Color accentColor = Color(0xFFE17055);
  
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
    ),
    
    // Couleurs de fond pour le mode clair
    scaffoldBackgroundColor: const Color(0xFFF8F9FA),
    
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black87,
    ),
    
    cardTheme: CardThemeData(
      elevation: 4,
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    
    // Thème de texte pour le mode clair
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFF2D3748)),
      bodyMedium: TextStyle(color: Color(0xFF4A5568)),
      bodySmall: TextStyle(color: Color(0xFF718096)),
      headlineLarge: TextStyle(color: Color(0xFF1A202C), fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(color: Color(0xFF1A202C), fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(color: Color(0xFF2D3748), fontWeight: FontWeight.w600),
      titleLarge: TextStyle(color: Color(0xFF2D3748), fontWeight: FontWeight.w600),
      titleMedium: TextStyle(color: Color(0xFF2D3748), fontWeight: FontWeight.w500),
      titleSmall: TextStyle(color: Color(0xFF4A5568), fontWeight: FontWeight.w500),
    ),
    
    // Couleurs d'interface pour le mode clair
    dividerColor: const Color(0xFFE2E8F0),
    hintColor: const Color(0xFF718096),
    disabledColor: const Color(0xFFA0AEC0),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.dark,
    ),
    
    // Couleurs de fond pour le mode sombre
    scaffoldBackgroundColor: const Color(0xFF121212),
    
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
    ),
    
    cardTheme: CardThemeData(
      elevation: 4,
      color: const Color(0xFF1E1E1E),
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    
    // Thème de texte pour le mode sombre avec bon contraste
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFFE2E8F0)),
      bodyMedium: TextStyle(color: Color(0xFFCBD5E0)),
      bodySmall: TextStyle(color: Color(0xFFA0AEC0)),
      headlineLarge: TextStyle(color: Color(0xFFF7FAFC), fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(color: Color(0xFFF7FAFC), fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(color: Color(0xFFE2E8F0), fontWeight: FontWeight.w600),
      titleLarge: TextStyle(color: Color(0xFFE2E8F0), fontWeight: FontWeight.w600),
      titleMedium: TextStyle(color: Color(0xFFE2E8F0), fontWeight: FontWeight.w500),
      titleSmall: TextStyle(color: Color(0xFFCBD5E0), fontWeight: FontWeight.w500),
    ),
    
    // Couleurs d'interface pour le mode sombre
    dividerColor: const Color(0xFF2D3748),
    hintColor: const Color(0xFFA0AEC0),
    disabledColor: const Color(0xFF4A5568),
  );
}