// screens/theme_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import '../models/math_theme_data.dart';

class ThemeDetailScreen extends StatefulWidget {
  final MathThemeData themeData;

  const ThemeDetailScreen({super.key, required this.themeData});

  @override
  State<ThemeDetailScreen> createState() => _ThemeDetailScreenState();
}

class _ThemeDetailScreenState extends State<ThemeDetailScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutBack,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

// --- Helper : prétraitement en LaTeX ---
String _preprocessFormula(String input) {
  String s = input.trim();

  // 1) Normalisation de symboles courants
  s = s
      .replaceAll('∞', r'\infty')
      .replaceAll('×', r'\times')
      .replaceAll('·', r'\cdot')
      .replaceAll('−', '-')        // vrai signe moins → tiret
      .replaceAll('Δ', r'\Delta');
      

  // 2) Indices Unicode → _{...}
const subMap = {
  '₀': '_{0}', '₁': '_{1}', '₂': '_{2}', '₃': '_{3}', '₄': '_{4}',
  '₅': '_{5}', '₆': '_{6}', '₇': '_{7}', '₈': '_{8}', '₉': '_{9}',
  'ₙ': '_{n}',
  'ₙ₋₁': '_{n-1}', // Ajout pour l'indice n-1
};


  // 3) Exposants Unicode → ^{...}
 const supMap = {
  '⁰': '^{0}', '¹': '^{1}', '²': '^{2}', '³': '^{3}', '⁴': '^{4}',
  '⁵': '^{5}', '⁶': '^{6}', '⁷': '^{7}', '⁸': '^{8}', '⁹': '^{9}',
  'ⁿ': '^{n}',
  'ⁿ⁻¹': '^{n-1}',
};
supMap.forEach((k, v) => s = s.replaceAll(k, v));

  // 4) NOUVEAU : Conversion des indices avec underscore (u_n → u_{n})
  // Traite les patterns comme u_1, u_n, S_n, etc.
  s = s.replaceAllMapped(RegExp(r'([A-Za-z])_([A-Za-z0-9]+)(?![}])'), (m) {
    return '${m[1]}_{${m[2]}}';
  });

  // 5) NOUVEAU : Conversion des lettres suivies de chiffres (u1 → u_{1})
  // Attention : on évite les mots entiers comme "sin", "cos", etc.
  s = s.replaceAllMapped(RegExp(r'(?<!\\)([A-Za-z])([0-9]+)(?![A-Za-z])'), (m) {
    // Éviter les fonctions mathématiques courantes
    final letter = m[1]!;
    if (['sin', 'cos', 'tan', 'log', 'ln', 'exp'].any((func) => func.contains(letter))) {
      return m[0]!; // Ne pas modifier
    }
    return '${m[1]}_{${m[2]}}';
  });

  // 6) NOUVEAU : Conversion des exposants avec ^ (a^2 → a^{2})
 // Traitement spécial pour les parenthèses : r^(n-1) → r^{n-1}
s = s.replaceAllMapped(RegExp(r'([A-Za-z0-9\)])\^(\(([^)]+)\))'), (m) {
  return '${m[1]}^{${m[3]}}';
});
// 6') Conversion spéciale : a^(m/n) → a^{\frac{m}{n}}

// Puis traitement normal pour les autres exposants
s = s.replaceAllMapped(RegExp(r'([A-Za-z0-9\)])(\^)([A-Za-z0-9\-\+]+)(?![{\(])'), (m) {
  return '${m[1]}^{${m[3]}}';
});


  // 7) NOUVEAU : Conversion des limites (lim[h→0] → \lim_{h \to 0})
  s = s.replaceAllMapped(RegExp(r'lim\[([^\]]+)→([^\]]+)\]'), (m) {
    return '\\lim_{${m[1]} \\to ${m[2]}}';
  });
  s = s.replaceAllMapped(RegExp(r'lim\[([^\]]+)→([^\]]+)\]'), (m) {
    return '\\lim_{${m[1]} \\to ${m[2]}}';
  });

  // 8) NOUVEAU : Conversion des combinaisons C(n,r) ou nCr → \binom{n}{r}
s = s.replaceAllMapped(RegExp(r'C\(([^,]+),\s*([^)]+)\)'), (m) {
  return '\\binom{${m[1]}}{${m[2]}}';
});
s = s.replaceAllMapped(RegExp(r'([A-Za-z0-9]+)C([A-Za-z0-9]+)'), (m) {
  return '\\binom{${m[1]}}{${m[2]}}';
});

// 8'
s = s.replaceAllMapped(
  RegExp(r'f\(x\)\s*=\s*\{(.*?)\}'),
  (m) {
    final content = m[1]!.trim();
    final parts = content.split(',').map((e) => e.trim()).toList();
    if (parts.length != 4) {
      return m[0]!; // Retourne la chaîne originale si le format est invalide
    }
    final expr1 = parts[0];
    final expr2 = parts[1];
    final cond1 = parts[2].replaceFirst(RegExp(r'si\s*x\s*<'), '').trim();
    final cond2 = parts[3].replaceFirst(RegExp(r'si\s*x\s*>'), '').trim();
    return 'f(x) = \\begin{cases}\n'
           '${expr1}, & \\text{si } x < ${cond1} \\\\\n'
           '${expr2}, & \\text{si } x > ${cond2}\n'
           '\\end{cases}';
  },
);


  // 9) Lettre suivie de ∞ → sous-indice \infty (ex: S∞ → S_{\infty})
  s = s.replaceAllMapped(RegExp(r'([A-Za-z])\\infty'), (m) => '${m[1]}_{\\infty}');
  s = s.replaceAllMapped(RegExp(r'([A-Za-z])∞'),      (m) => '${m[1]}_{\\infty}');

// Conversion log_a(x) → \log_{a}(x)
s = s.replaceAllMapped(RegExp(r'log_([a-zA-Z0-9]+)\(([^)]+)\)'), (m) {
  return '\\log_{${m[1]}}(${m[2]})';
});

// Conversion √(...) → \sqrt{...}
s = s.replaceAllMapped(RegExp(r'√(?:\[(\d+)\])?\(([^)]+)\)'), (m) {
  if (m[1] != null) {
    // Cas d'une racine nième, par exemple ∛(x) → \sqrt[3]{x}
    return '\\sqrt[${m[1]}]{${m[2]}}';
  } else {
    // Cas d'une racine carrée, par exemple √(x) → \sqrt{x}
    return '\\sqrt{${m[2]}}';
  }
});


// Racine nième de a → \sqrt[n]{a}
s = s.replaceAllMapped(
  RegExp(r'racine\s+(\d+)(?:e|ème|ième)?\s+de\s+([A-Za-z0-9]+)'),
  (m) {
    final n = m[1]!;
    final a = m[2]!;
    if (n == '2') {
      return '\\sqrt{$a}';
    } else {
      return '\\sqrt[$n]{$a}';
    }
  },
);


// Conversion ± → \pm
s = s.replaceAll('±', r'\pm');
// Fonction générique qui applique la transformation en \frac{...}{...}
String applyFrac(String t, RegExp re) {
  String prev;
  do {
    prev = t;
    t = t.replaceAllMapped(re, (m) {
      var left  = m[1]!.trim();   // numérateur
      var right = m[2]!.trim();   // dénominateur

      // 🔹 Enlève les parenthèses extérieures si elles englobent tout
      if (left.startsWith('(') && left.endsWith(')')) {
        left = left.substring(1, left.length - 1);
      }
      if (right.startsWith('(') && right.endsWith(')')) {
        right = right.substring(1, right.length - 1);
      }

      return '\\frac{$left}{$right}';
    });
  } while (t != prev); // répète tant qu’il y a encore des correspondances
  return t;
}



// ======================
// Conversion des fractions
// ======================

// (a) Cas où le dénominateur est entre crochets :  a / [b]  →  \frac{a}{b}
// (pas besoin d'ajouter ∩∪ ici car tout est capté)
s = applyFrac(s, RegExp(
  r'([^/\s]+)\s*/\s*\[([^\]]+)\]'
));

// (b) Cas parenthèses des deux côtés :  (a+b) / (c+d)  →  \frac{a+b}{c+d}
s = applyFrac(s, RegExp(
  r'\(([^()∩∪]+)\)\s*/\s*\(([^()∩∪]+)\)'
));

// (c) Cas : token / ( ... )  
// Exemple :  x / (y+z)  →  \frac{x}{y+z}
s = applyFrac(s, RegExp(
  r'([A-Za-z0-9!_\\\{\}\^\+\-\s∩∪]+?)\s*/\s*\(([^()∩∪]+)\)'
));

// (d) Cas : ( ... ) / token  
// Exemple :  (x+1) / y  →  \frac{x+1}{y}
s = applyFrac(s, RegExp(
  r'\(([^()∩∪]+)\)\s*/\s*([A-Za-z0-9!_\\\{\}\^\+\-∩∪]+)'
));

// (e) Cas simple : token / token  
// Exemple :  x / y  →  \frac{x}{y}
s = applyFrac(s, RegExp(
  r'([A-Za-z0-9!_\\\{\}\^\+\-∩∪]+)\s*/\s*([A-Za-z0-9!_\\\{\}\^\+\-∩∪]+)'
));

// (e') version améliorée pour log_b(x)/log_b(a), etc.
s = applyFrac(
  s,
  RegExp(
    r'([A-Za-z0-9!_\\\{\}\^\+\-\(\),∩∪]+)\s*/\s*([A-Za-z0-9!_\\\{\}\^\+\-\(\),∩∪]+)'
  )
);

  
  // 13) NOUVEAU : Support pour du texte normal dans les formules
  // Conversion de mots entre guillemets → \text{} avec espaces
  s = s.replaceAllMapped(RegExp(r'"([^"]+)"'), (m) {
    return '\\quad\\text{${m[1]}}\\quad';
  });
  
  // Conversion de mots spéciaux courants → \text{} avec espaces
  const textWords = ['et', 'ou', 'si', 'alors', 'pour', 'avec', 'sans', 'où', 'quand', 'soit'];
  for (String word in textWords) {
    s = s.replaceAll(RegExp(r'\b$word\b'), '\\quad\\text{$word}\\quad');
  }

  // 14) Petits nettoyages
  s = s.replaceAll(RegExp(r'\s+'), ' ').trim();

  return s;
}

  // Méthode pour créer un widget mathématique sécurisé
  Widget _buildMathWidget(String formula) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    try {
      final latex = _preprocessFormula(formula);
      return Math.tex(
        latex,
        mathStyle: MathStyle.display, // beau rendu de bloc
        textStyle: TextStyle(
          fontSize: 20,
          // Couleur adaptative pour les formules mathématiques
          color: isDark ? const Color(0xFFE2E8F0) : const Color(0xFF2D3436),
        ),
      );
    } catch (e) {
      return Text(
        formula,
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'monospace',
          // Couleur adaptative pour le texte de fallback
          color: isDark ? const Color(0xFFE2E8F0) : const Color(0xFF2D3436),
          fontWeight: FontWeight.w500,
        ),
      );
    }
  }

 Widget _buildContent(String content) {
  final isDark = Theme.of(context).brightness == Brightness.dark;
  
  List<Widget> widgets = [];
  List<String> lines = content.split('\n');

  for (String line in lines) {
    if (line.trim().isEmpty) {
      widgets.add(const SizedBox(height: 12));
      continue;
    }

    if (line.startsWith('# ')) {
      // Titre principal
      widgets.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            line.replaceFirst('# ', ''),
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C5CE7), // Garde la couleur primaire
            ),
          ),
        ),
      );
    } else if (line.startsWith('## ')) {
      // Sous-titre
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 12),
          child: Text(
            line.replaceFirst('## ', ''),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2ECC71), // Garde la couleur verte
            ),
          ),
        ),
      );
    } else if (line.startsWith('### ')) {
      // Sous-sous-titre
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: Text(
            line.replaceFirst('### ', ''),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              // Couleur adaptative pour les sous-sous-titres
              color: isDark ? const Color(0xFFA0AEC0) : const Color(0xFF636E72),
            ),
          ),
        ),
      );
    } else if (line.startsWith('- ')) {
      // Liste à puces
      widgets.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '• ',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF6C5CE7), // Garde la couleur primaire pour les puces
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Text(
                  line.replaceFirst('- ', ''),
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                    // Couleur adaptative pour le texte des listes
                    color: isDark ? const Color(0xFFE2E8F0) : const Color(0xFF2D3436),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (_isMathFormula(line)) {
      // Formule mathématique - CONDITION SPÉCIFIQUE
      widgets.add(
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF6C5CE7).withOpacity(isDark ? 0.2 : 0.1),
                const Color(0xFF74B9FF).withOpacity(isDark ? 0.2 : 0.1),
              ],
            ),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFF6C5CE7).withOpacity(isDark ? 0.5 : 0.3),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: _buildMathWidget(line),
          ),
        ),
      );
    } else {
      // Texte normal
      widgets.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            line,
            style: TextStyle(
              fontSize: 20,
              height: 1.6,
              // Couleur adaptative pour le texte normal
              color: isDark ? const Color(0xFFE2E8F0) : const Color(0xFF2D3436),
            ),
          ),
        ),
      );
    }
  }

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: widgets,
  );
}

// Nouvelle méthode pour détecter les formules mathématiques
bool _isMathFormula(String line) {
  // Ne traite pas les titres comme des formules
  if (line.startsWith('#') || line.startsWith('-')) {
    return false;
  }
  
  // Vérifie si c'est une formule mathématique autonome
  return line.contains('=') || 
         line.contains('∫') || 
         line.contains('Σ') ||
         line.contains('²') || 
         line.contains('³') || 
         line.contains('√') ||
         line.contains('/') ||
         line.contains(r'\frac') ||
         line.contains('^') ||
         line.contains('≤') ||
         line.contains('≥') ||
         line.contains('≠') ||
         line.contains('∞') ||
         line.contains('±') ||
         line.contains('·') ||
         line.contains('×') ||
         line.contains('÷') ||
         line.contains('\\overline') ||
         // Détecte les patterns de formules courantes
         RegExp(r'[a-zA-Z]\s*=\s*').hasMatch(line) ||
         RegExp(r'\w+\(\w+\)').hasMatch(line) ||
         RegExp(r'\w+_\{\w+\}').hasMatch(line);
}

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

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
                  ]
                : [
                    const Color(0xFF6C5CE7).withOpacity(0.1),
                    const Color(0xFF74B9FF).withOpacity(0.1),
                  ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header avec retour et titre
              SlideTransition(
                position: _slideAnimation,
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: isDark ? Colors.white : const Color(0xFF2D3436),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.themeData.title,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: isDark ? Colors.white : const Color(0xFF2D3436),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Contenu scrollable
              Expanded(
                child: SlideTransition(
                  position: _slideAnimation,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: isDark ? const Color(0xFF1E1E1E) : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(isDark ? 0.5 : 0.1),
                            blurRadius: 20,
                            offset: const Offset(0, -5),
                          ),
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: _buildContent(widget.themeData.description),
                      ),
                    ),
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