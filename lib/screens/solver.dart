import 'dart:math';
import 'package:math_expressions/math_expressions.dart';

class MathSolverService {
  Map<String, dynamic> solve(String input) {
    final s = input.replaceAll(' ', '').replaceAll('−', '-').toLowerCase();

    // 1. Calculs simples (ex: 2+3, 5*6)
    if (RegExp(r'^\d+[\+\-\*/]\d+$').hasMatch(s) || RegExp(r'^\d+[\^]\d+$').hasMatch(s)) {
      return _solveSimpleArithmetic(s);
    }

    // 2. Développement du binôme (ex: (x+2)^3)
    if (_isBinomialExpansion(s)) {
      return _solveBinomialExpansion(s);
    }

    // 3. Lois des exposants (ex: 2^3 * 2^4)
    if (_isExponentLaw(s)) {
      return _solveExponentLaw(s);
    }

    // 4. Logarithmes (ex: log(100), ln(e))
    if (_isLogarithm(s)) {
      return _solveLogarithm(s);
    }

    // 5. Dérivées (ex: d/dx(3x^2 + 2x + 1))
    if (_isDerivative(s)) {
      return _solveDerivative(s);
    }

    // 6. Primitives/Intégrales (ex: ∫(x^2 + 1)dx)
    if (_isIntegral(s)) {
      return _solveIntegral(s);
    }

    // 7. Trigonométrie (ex: sin(30), cos(45))
    if (_isTrigonometry(s)) {
      return _solveTrigonometry(s);
    }

    // 8. Probabilités (ex: 3/5, P(A|B))
    if (_isProbability(s)) {
      return _solveProbability(s);
    }

    // 9. Équations (ex: x^2 - 5x + 6 = 0)
    if (s.contains('=')) {
      final parts = s.split('=');
      final left = parts[0];
      final right = parts.sublist(1).join('=');
      final eq = '$left-($right)';
      return _solvePolynomial(eq);
    }

    // 10. Terme général du binôme (ex: terme k=2 de (x+2)^5)
    if (_isBinomialTerm(s)) {
      return _solveBinomialTerm(s);
    }

    // Si rien n'est reconnu, retourne une erreur
    return {'type': 'error', 'steps': [], 'result': 'Expression non reconnue. Essayez une équation, une dérivée, une intégrale, ou un développement.'};
  }

  // =================== CALCULS SIMPLES ===================
  Map<String, dynamic> _solveSimpleArithmetic(String s) {
    try {
      final parser = Parser();
      final expression = parser.parse(s);
      final context = ContextModel();
      final result = expression.evaluate(EvaluationType.REAL, context);
      return {
        'type': 'arithmetic',
        'steps': ['Calcul : $s = ${_formatNumber(result)}'],
        'result': _formatNumber(result)
      };
    } catch (e) {
      return {'type': 'error', 'steps': [], 'result': 'Expression non reconnue'};
    }
  }

  // =================== DÉVELOPPEMENT DU BINÔME ===================
  bool _isBinomialExpansion(String s) {
    return RegExp(r'\([^)]+\)\^?\d+').hasMatch(s) ||
           s.contains('(a+b)') || s.contains('(x+') ||
           s.contains('binome') || s.contains('binôme');
  }

  Map<String, dynamic> _solveBinomialExpansion(String s) {
    final steps = <String>[];
    final patterns = [
      RegExp(r'\(([^+\-]+)\+([^)]+)\)\^(\d+)'),
      RegExp(r'\(([^+\-]+)-([^)]+)\)\^(\d+)'),
    ];

    for (var pattern in patterns) {
      final match = pattern.firstMatch(s);
      if (match != null) {
        final a = match.group(1)!;
        final b = match.group(2)!;
        final n = int.parse(match.group(3)!);
        final isNegative = s.contains('-');
        steps.add('Développement de (${a} ${isNegative ? '-' : '+'} ${b})^$n');
        steps.add('Formule: (a+b)^n = Σ C(n,k) × a^(n-k) × b^k');
        if (n <= 5) {
          final result = _expandBinomial(a, b, n, isNegative);
          steps.addAll(result['steps']);
          return {
            'type': 'binomial',
            'steps': steps,
            'result': result['expression'],
            'numericResult': result['numericResult']
          };
        } else {
          return {'type': 'error', 'steps': [], 'result': 'Exposant trop grand (max 5)'};
        }
      }
    }

    if (s.contains('(a+b)')) {
      final nMatch = RegExp(r'\^(\d+)').firstMatch(s);
      final n = nMatch != null ? int.parse(nMatch.group(1)!) : 2;
      steps.add('Développement de (a+b)^$n');
      steps.add('Formule générale: (a+b)^n = Σ C(n,k) × a^(n-k) × b^k');
      if (n == 2) {
        steps.add('(a+b)² = a² + 2ab + b²');
        return {'type': 'binomial', 'steps': steps, 'result': 'a² + 2ab + b²'};
      } else if (n == 3) {
        steps.add('(a+b)³ = a³ + 3a²b + 3ab² + b³');
        return {'type': 'binomial', 'steps': steps, 'result': 'a³ + 3a²b + 3ab² + b³'};
      }
    }

    return {'type': 'error', 'steps': [], 'result': 'Format non reconnu'};
  }

  Map<String, dynamic> _expandBinomial(String a, String b, int n, bool isNegative) {
    final steps = <String>[];
    final terms = <String>[];
    final aIsNumeric = double.tryParse(a) != null;
    final bIsNumeric = double.tryParse(b) != null;
    double? aValue = aIsNumeric ? double.parse(a) : null;
    double? bValue = bIsNumeric ? double.parse(b) : null;
    double? numericResult;

    for (int k = 0; k <= n; k++) {
      final coeff = _binomialCoefficient(n, k);
      final aExp = n - k;
      final bExp = k;
      double termCoeff = coeff.toDouble();
      String term = '';

      // Calcul du coefficient total pour ce terme
      if (bIsNumeric && bValue != null) {
        termCoeff *= pow(bValue, bExp).toDouble();
      }
      if (aIsNumeric && aValue != null && aExp > 0) {
        termCoeff *= pow(aValue, aExp).toDouble();
      }

      // Construction du terme
      if (aExp > 0 && !aIsNumeric) {
        if (termCoeff != 1) term += '${_formatNumber(termCoeff)}';
        if (aExp == 1) term += a;
        else term += '$a^$aExp';
      }
      if (bExp > 0 && !bIsNumeric) {
        final bSign = isNegative && (bExp % 2 == 1) ? '-' : '';
        if (bExp == 1) term += '$bSign$b';
        else term += '$bSign$b^$bExp';
      }
      if (aExp == 0 && bIsNumeric && bValue != null) {
        term = '${_formatNumber(termCoeff * pow(bValue, bExp).toDouble())}';
      }
      if (aExp == 0 && !bIsNumeric) {
        if (termCoeff != 1) term += '${_formatNumber(termCoeff)}';
        if (bExp == 1) term += b;
        else term += '$b^$bExp';
      }

      // Gestion du signe pour les termes suivants
      if (k > 0 && !term.startsWith('-')) {
        term = '+' + term;
      }

      terms.add(term);
      steps.add('k=$k: C($n,$k) × $a^$aExp × ${isNegative && (bExp % 2 == 1) ? '-' : ''}$b^$bExp = $term');
    }

    String expression = terms.join('').replaceAll('+-', '-').replaceFirst(RegExp(r'^\+'), '');

    // Calcul numérique si possible
    if (aIsNumeric && bIsNumeric && aValue != null && bValue != null) {
      double result = pow(aValue + (isNegative ? -bValue : bValue), n).toDouble();
      steps.add('Valeur numérique : ${_formatNumber(result)}');
      numericResult = result;
    }

    return {
      'steps': steps,
      'expression': expression,
      'numericResult': _formatNumber(numericResult)
    };
  }

  int _binomialCoefficient(int n, int k) {
    if (k > n - k) k = n - k;
    int result = 1;
    for (int i = 0; i < k; i++) {
      result = result * (n - i) ~/ (i + 1);
    }
    return result;
  }

  // =================== TERME GÉNÉRAL DU BINÔME ===================
  bool _isBinomialTerm(String s) {
    return s.contains('terme') && s.contains('binôme') ||
           s.contains('terme') && RegExp(r'\([^)]+\)\^\d+').hasMatch(s);
  }

  Map<String, dynamic> _solveBinomialTerm(String s) {
    final steps = <String>[];
    final termPattern = RegExp(r'terme\s*(?:k=|rang\s*)(\d+)\s*(?:de|dans|du)\s*\(([^+]-?)+\)\^(\d+)');
    final match = termPattern.firstMatch(s);
    if (match != null) {
      final k = int.parse(match.group(1)!);
      final a = match.group(2)!.split(RegExp(r'[+-]'))[0];
      final b = match.group(2)!.contains('-') ? match.group(2)!.split('-')[1] : match.group(2)!.split('+')[1];
      final n = int.parse(match.group(3)!);
      final isNegative = s.contains('-');
      final coeff = _binomialCoefficient(n, k);
      final aExp = n - k;
      final bExp = k;
      final term = 'C($n,$k) × $a^$aExp × ${isNegative ? '-' : ''}$b^$bExp';
      steps.add('Terme de rang ${k+1} dans (${a} ${isNegative ? '-' : '+'} ${b})^$n');
      steps.add('Formule: T_{${k+1}} = C($n,$k) × $a^$aExp × ${isNegative ? '-' : ''}$b^$bExp');
      steps.add('Calcul: T_{${k+1}} = $coeff × $a^$aExp × ${isNegative ? '-' : ''}$b^$bExp');
      String result;
      if (aExp == 0) {
        result = '$coeff × ${isNegative ? '-' : ''}$b^$bExp';
      } else if (bExp == 0) {
        result = '$coeff × $a^$aExp';
      } else {
        result = '$coeff × $a^$aExp × ${isNegative ? '-' : ''}$b^$bExp';
      }
      return {'type': 'binomial_term', 'steps': steps, 'result': result};
    }
    return {'type': 'error', 'steps': [], 'result': 'Format non reconnu pour le terme du binôme'};
  }

  // =================== LOIS DES EXPOSANTS ===================
  bool _isExponentLaw(String s) {
    return RegExp(r'\d+\^\d+[\*\/]\d+\^\d+').hasMatch(s) ||
           RegExp(r'[a-z]\^\d+[\*\/][a-z]\^\d+').hasMatch(s) ||
           s.contains('exposant') || s.contains('puissance');
  }

  Map<String, dynamic> _solveExponentLaw(String s) {
    final steps = <String>[];
    // Multiplication: a^m × a^n = a^(m+n)
    final multPattern = RegExp(r'([a-z]|\d+)\^(\d+)\*([a-z]|\d+)\^(\d+)');
    final multMatch = multPattern.firstMatch(s);
    if (multMatch != null) {
      final base1 = multMatch.group(1)!;
      final exp1 = int.parse(multMatch.group(2)!);
      final base2 = multMatch.group(3)!;
      final exp2 = int.parse(multMatch.group(4)!);
      if (base1 == base2) {
        steps.add('$base1^$exp1 × $base1^$exp2');
        steps.add('Règle: a^m × a^n = a^(m+n)');
        final result = exp1 + exp2;
        steps.add('$base1^($exp1+$exp2) = $base1^$result');
        if (RegExp(r'^\d+$').hasMatch(base1)) {
          try {
            final value = pow(int.parse(base1), result);
            steps.add('= ${_formatNumber(value)}');
            return {'type': 'exponent', 'steps': steps, 'result': '${_formatNumber(value)}'};
          } catch (e) {
            return {'type': 'exponent', 'steps': steps, 'result': '$base1^$result'};
          }
        }
        return {'type': 'exponent', 'steps': steps, 'result': '$base1^$result'};
      }
    }
    // Division: a^m ÷ a^n = a^(m-n)
    final divPattern = RegExp(r'([a-z]|\d+)\^(\d+)\/([a-z]|\d+)\^(\d+)');
    final divMatch = divPattern.firstMatch(s);
    if (divMatch != null) {
      final base1 = divMatch.group(1)!;
      final exp1 = int.parse(divMatch.group(2)!);
      final base2 = divMatch.group(3)!;
      final exp2 = int.parse(divMatch.group(4)!);
      if (base1 == base2) {
        steps.add('$base1^$exp1 ÷ $base1^$exp2');
        steps.add('Règle: a^m ÷ a^n = a^(m-n)');
        final result = exp1 - exp2;
        steps.add('$base1^($exp1-$exp2) = $base1^$result');
        if (RegExp(r'^\d+$').hasMatch(base1)) {
          try {
            if (result >= 0) {
              final value = pow(int.parse(base1), result);
              steps.add('= ${_formatNumber(value)}');
              return {'type': 'exponent', 'steps': steps, 'result': '${_formatNumber(value)}'};
            } else {
              final value = 1 / pow(int.parse(base1), -result);
              steps.add('= ${_formatNumber(value)}');
              return {'type': 'exponent', 'steps': steps, 'result': '${_formatNumber(value)}'};
            }
          } catch (e) {
            return {'type': 'exponent', 'steps': steps, 'result': '$base1^$result'};
          }
        }
        return {'type': 'exponent', 'steps': steps, 'result': '$base1^$result'};
      }
    }
    // Puissance de puissance: (a^m)^n = a^(m×n)
    final powerPattern = RegExp(r'\(([a-z]|\d+)\^(\d+)\)\^(\d+)');
    final powerMatch = powerPattern.firstMatch(s);
    if (powerMatch != null) {
      final base = powerMatch.group(1)!;
      final exp1 = int.parse(powerMatch.group(2)!);
      final exp2 = int.parse(powerMatch.group(3)!);
      steps.add('($base^$exp1)^$exp2');
      steps.add('Règle: (a^m)^n = a^(m×n)');
      final result = exp1 * exp2;
      steps.add('$base^($exp1×$exp2) = $base^$result');
      if (RegExp(r'^\d+$').hasMatch(base)) {
        try {
          final value = pow(int.parse(base), result);
          steps.add('= ${_formatNumber(value)}');
          return {'type': 'exponent', 'steps': steps, 'result': '${_formatNumber(value)}'};
        } catch (e) {
          return {'type': 'exponent', 'steps': steps, 'result': '$base^$result'};
        }
      }
      return {'type': 'exponent', 'steps': steps, 'result': '$base^$result'};
    }
    return {'type': 'error', 'steps': [], 'result': 'Format non reconnu'};
  }

  // =================== LOGARITHMES ===================
  bool _isLogarithm(String s) {
    return s.contains('log') || s.contains('ln') || s.contains('logarithme');
  }

  Map<String, dynamic> _solveLogarithm(String s) {
    final steps = <String>[];
    // log(xy) = log(x) + log(y)
    final productPattern = RegExp(r'log\((\d+)\*(\d+)\)');
    final productMatch = productPattern.firstMatch(s);
    if (productMatch != null) {
      final x = int.parse(productMatch.group(1)!);
      final y = int.parse(productMatch.group(2)!);
      steps.add('log($x × $y)');
      steps.add('Propriété: log(xy) = log(x) + log(y)');
      steps.add('log($x) + log($y)');
      final logX = log(x) / log(10);
      final logY = log(y) / log(10);
      steps.add('≈ ${_formatNumber(logX)} + ${_formatNumber(logY)}');
      final result = logX + logY;
      return {'type': 'logarithm', 'steps': steps, 'result': _formatNumber(result)};
    }
    // log(x/y) = log(x) - log(y)
    final quotientPattern = RegExp(r'log\((\d+)\/(\d+)\)');
    final quotientMatch = quotientPattern.firstMatch(s);
    if (quotientMatch != null) {
      final x = int.parse(quotientMatch.group(1)!);
      final y = int.parse(quotientMatch.group(2)!);
      steps.add('log($x ÷ $y)');
      steps.add('Propriété: log(x/y) = log(x) - log(y)');
      steps.add('log($x) - log($y)');
      final logX = log(x) / log(10);
      final logY = log(y) / log(10);
      steps.add('≈ ${_formatNumber(logX)} - ${_formatNumber(logY)}');
      final result = logX - logY;
      return {'type': 'logarithm', 'steps': steps, 'result': _formatNumber(result)};
    }
    // log(x^n) = n × log(x)
    final powerPattern = RegExp(r'log\((\d+)\^(\d+)\)');
    final powerMatch = powerPattern.firstMatch(s);
    if (powerMatch != null) {
      final base = int.parse(powerMatch.group(1)!);
      final exp = int.parse(powerMatch.group(2)!);
      steps.add('log($base^$exp)');
      steps.add('Propriété: log(x^n) = n × log(x)');
      steps.add('$exp × log($base)');
      final logBase = log(base) / log(10);
      steps.add('$exp × ${_formatNumber(logBase)}');
      final result = exp * logBase;
      return {'type': 'logarithm', 'steps': steps, 'result': _formatNumber(result)};
    }
    // Logarithme simple
    final simplePattern = RegExp(r'log\((\d+)\)');
    final simpleMatch = simplePattern.firstMatch(s);
    if (simpleMatch != null) {
      final x = int.parse(simpleMatch.group(1)!);
      steps.add('log($x)');
      final result = log(x) / log(10);
      steps.add('≈ ${_formatNumber(result)}');
      return {'type': 'logarithm', 'steps': steps, 'result': _formatNumber(result)};
    }
    // Logarithme naturel
    final lnPattern = RegExp(r'ln\((\d+)\)');
    final lnMatch = lnPattern.firstMatch(s);
    if (lnMatch != null) {
      final x = int.parse(lnMatch.group(1)!);
      steps.add('ln($x)');
      final result = log(x);
      steps.add('≈ ${_formatNumber(result)}');
      return {'type': 'logarithm', 'steps': steps, 'result': _formatNumber(result)};
    }
    return {'type': 'error', 'steps': [], 'result': 'Format non reconnu'};
  }

  // =================== DÉRIVÉES ===================
  bool _isDerivative(String s) {
    return s.contains('d/dx') || s.contains("d'") || s.contains('dérivée') ||
           s.contains('derivative') || s.contains('prime');
  }

  Map<String, dynamic> _solveDerivative(String s) {
    final steps = <String>[];
    // Exemple : d/dx(3x^2 + 2x + 1)
    final polyPattern = RegExp(r'd\/dx\(([^)]+)\)');
    final polyMatch = polyPattern.firstMatch(s);
    if (polyMatch != null) {
      final expr = polyMatch.group(1)!;
      final derivativeTerms = <String>[];
      // Diviser l'expression en termes
      final terms = expr.split(RegExp(r'(?=[+-])'));
      for (String term in terms) {
        if (term.isEmpty) continue;
        // Nettoyer le terme
        final cleanTerm = term.trim();
        if (cleanTerm.isEmpty) continue;
        // Constante
        if (!cleanTerm.contains('x')) {
          steps.add('d/dx($cleanTerm) = 0');
          continue;
        }
        // Terme avec x
        final termPattern = RegExp(r'([+-]?\d*)\*?x\^?(\d*)');
        final termMatch = termPattern.firstMatch(cleanTerm);
        if (termMatch != null) {
          final coeffStr = termMatch.group(1) ?? '1';
          final expStr = termMatch.group(2) ?? '1';
          double coeff = 1.0;
          if (coeffStr == '-') {
            coeff = -1.0;
          } else if (coeffStr == '+' || coeffStr == '') {
            coeff = 1.0;
          } else {
            coeff = double.tryParse(coeffStr) ?? 1.0;
          }
          int exp = expStr.isEmpty ? 1 : int.parse(expStr);
          if (exp == 0) {
            steps.add('d/dx($cleanTerm) = 0');
          } else if (exp == 1) {
            steps.add('d/dx($cleanTerm) = ${coeff.toInt()}');
            derivativeTerms.add(coeff.toInt().toString());
          } else {
            final newCoeff = coeff * exp;
            final newExp = exp - 1;
            if (newExp == 1) {
              final termResult = '${newCoeff.toInt()}x';
              steps.add('d/dx($cleanTerm) = $termResult');
              derivativeTerms.add(termResult);
            } else {
              final termResult = '${newCoeff.toInt()}x^$newExp';
              steps.add('d/dx($cleanTerm) = $termResult');
              derivativeTerms.add(termResult);
            }
          }
        }
      }
      // Dérivée de sin(x)
      final sinPattern = RegExp(r'd\/dx\(sin\(x\)\)');
      if (sinPattern.hasMatch(s)) {
        steps.add("d/dx(sin(x))");
        steps.add("Règle: d/dx(sin(x)) = cos(x)");
        return {'type': 'derivative', 'steps': steps, 'result': 'cos(x)'};
      }
      // Dérivée de cos(x)
      final cosPattern = RegExp(r'd\/dx\(cos\(x\)\)');
      if (cosPattern.hasMatch(s)) {
        steps.add("d/dx(cos(x))");
        steps.add("Règle: d/dx(cos(x)) = -sin(x)");
        return {'type': 'derivative', 'steps': steps, 'result': '-sin(x)'};
      }
      // Dérivée de ln(x)
      final lnPattern = RegExp(r'd\/dx\(ln\(x\)\)');
      if (lnPattern.hasMatch(s)) {
        steps.add("d/dx(ln(x))");
        steps.add("Règle: d/dx(ln(x)) = 1/x");
        return {'type': 'derivative', 'steps': steps, 'result': '1/x'};
      }
      // Dérivée de e^x
      final expPattern = RegExp(r'd\/dx\(e\^x\)');
      if (expPattern.hasMatch(s)) {
        steps.add("d/dx(e^x)");
        steps.add("Règle: d/dx(e^x) = e^x");
        return {'type': 'derivative', 'steps': steps, 'result': 'e^x'};
      }
      String result = derivativeTerms.join(' + ').replaceAll('+ -', '- ');
      if (result.isEmpty) result = '0';
      return {'type': 'derivative', 'steps': steps, 'result': result};
    }
    return {'type': 'error', 'steps': [], 'result': 'Format non reconnu pour la dérivée'};
  }

  // =================== INTÉGRALES/PRIMITIVES ===================
  bool _isIntegral(String s) {
    return s.contains('∫') || s.contains('intégrale') || s.contains('primitive');
  }

  Map<String, dynamic> _solveIntegral(String s) {
    final steps = <String>[];
    // Exemple : ∫(3x^2 + 2x + 1)dx
    final integralPattern = RegExp(r'∫\(?([^)]+)\)?dx');
    final integralMatch = integralPattern.firstMatch(s);
    if (integralMatch != null) {
      final expr = integralMatch.group(1)!;
      final integralTerms = <String>[];
      // Diviser l'expression en termes
      final terms = expr.split(RegExp(r'(?=[+-])'));
      for (String term in terms) {
        if (term.isEmpty) continue;
        // Nettoyer le terme
        final cleanTerm = term.trim();
        if (cleanTerm.isEmpty) continue;
        // Constante
        if (!cleanTerm.contains('x')) {
          final coeffStr = cleanTerm.replaceAll('+', '');
          final coeff = double.tryParse(coeffStr) ?? 1.0;
          steps.add('∫ $cleanTerm dx = ${_formatNumber(coeff)}x + C');
          integralTerms.add('${_formatNumber(coeff)}x');
          continue;
        }
        // Terme avec x
        final termPattern = RegExp(r'([+-]?\d*)\*?x\^?(\d*)');
        final termMatch = termPattern.firstMatch(cleanTerm);
        if (termMatch != null) {
          final coeffStr = termMatch.group(1) ?? '1';
          final expStr = termMatch.group(2) ?? '1';
          double coeff = 1.0;
          if (coeffStr == '-') {
            coeff = -1.0;
          } else if (coeffStr == '+' || coeffStr == '') {
            coeff = 1.0;
          } else {
            coeff = double.tryParse(coeffStr) ?? 1.0;
          }
          int exp = expStr.isEmpty ? 1 : int.parse(expStr);
          if (exp == -1) {
            steps.add('∫ $cleanTerm dx = ${_formatNumber(coeff)} × ln|x| + C');
            integralTerms.add('${_formatNumber(coeff)}ln|x|');
          } else {
            final newExp = exp + 1;
            final newCoeff = coeff / (exp + 1);
            if (newExp == 1) {
              final termResult = '${_formatNumber(newCoeff)}x';
              steps.add('∫ $cleanTerm dx = $termResult + C');
              integralTerms.add(termResult);
            } else {
              final termResult = '${_formatNumber(newCoeff)}x^$newExp';
              steps.add('∫ $cleanTerm dx = $termResult + C');
              integralTerms.add(termResult);
            }
          }
        }
      }
      // Intégrale de sin(x)
      final sinPattern = RegExp(r'∫\(?sin\(x\)\)?dx');
      if (sinPattern.hasMatch(s)) {
        steps.add("∫ sin(x) dx");
        steps.add("Règle: ∫ sin(x) dx = -cos(x) + C");
        return {'type': 'integral', 'steps': steps, 'result': '-cos(x) + C'};
      }
      // Intégrale de cos(x)
      final cosPattern = RegExp(r'∫\(?cos\(x\)\)?dx');
      if (cosPattern.hasMatch(s)) {
        steps.add("∫ cos(x) dx");
        steps.add("Règle: ∫ cos(x) dx = sin(x) + C");
        return {'type': 'integral', 'steps': steps, 'result': 'sin(x) + C'};
      }
      // Intégrale de 1/x
      final oneOverXPattern = RegExp(r'∫\(?1\/x\)?dx');
      if (oneOverXPattern.hasMatch(s)) {
        steps.add("∫ 1/x dx");
        steps.add("Règle: ∫ 1/x dx = ln|x| + C");
        return {'type': 'integral', 'steps': steps, 'result': 'ln|x| + C'};
      }
      // Intégrale de e^x
      final expPattern = RegExp(r'∫\(?e\^x\)?dx');
      if (expPattern.hasMatch(s)) {
        steps.add("∫ e^x dx");
        steps.add("Règle: ∫ e^x dx = e^x + C");
        return {'type': 'integral', 'steps': steps, 'result': 'e^x + C'};
      }
      String result = integralTerms.join(' + ');
      if (result.isEmpty) result = '0';
      result += ' + C';
      return {'type': 'integral', 'steps': steps, 'result': result};
    }
    return {'type': 'error', 'steps': [], 'result': 'Format non reconnu pour l\'intégrale'};
  }

  // =================== TRIGONOMÉTRIE ===================
  bool _isTrigonometry(String s) {
    return s.contains('sin') || s.contains('cos') || s.contains('tan') ||
           s.contains('trigono') || s.contains('degré') || s.contains('radian');
  }

  Map<String, dynamic> _solveTrigonometry(String s) {
    final steps = <String>[];
    // sin(30), cos(45), etc.
    final anglePattern = RegExp(r'(sin|cos|tan)\((\d+)\)');
    final angleMatch = anglePattern.firstMatch(s);
    if (angleMatch != null) {
      final func = angleMatch.group(1)!;
      final angle = int.parse(angleMatch.group(2)!);
      steps.add('$func($angle°)');
      double result;
      String exact;
      switch (angle) {
        case 0:
          result = func == 'sin' ? 0 : (func == 'cos' ? 1 : 0);
          exact = func == 'sin' ? '0' : (func == 'cos' ? '1' : '0');
          break;
        case 30:
          result = func == 'sin' ? 0.5 : (func == 'cos' ? sqrt(3)/2 : 1/sqrt(3));
          exact = func == 'sin' ? '1/2' : (func == 'cos' ? '√3/2' : '√3/3');
          break;
        case 45:
          result = func == 'sin' ? sqrt(2)/2 : (func == 'cos' ? sqrt(2)/2 : 1);
          exact = func == 'sin' ? '√2/2' : (func == 'cos' ? '√2/2' : '1');
          break;
        case 60:
          result = func == 'sin' ? sqrt(3)/2 : (func == 'cos' ? 0.5 : sqrt(3));
          exact = func == 'sin' ? '√3/2' : (func == 'cos' ? '1/2' : '√3');
          break;
        case 90:
          result = func == 'sin' ? 1 : (func == 'cos' ? 0 : double.infinity);
          exact = func == 'sin' ? '1' : (func == 'cos' ? '0' : 'indéfini');
          break;
        default:
          final radians = angle * pi / 180;
          result = func == 'sin' ? sin(radians) :
                  (func == 'cos' ? cos(radians) : tan(radians));
          exact = _formatNumber(result);
      }
      steps.add('Valeur exacte: $exact');
      if (exact != _formatNumber(result) && exact != 'indéfini') {
        steps.add('Valeur décimale: ${_formatNumber(result)}');
      }
      return {'type': 'trigonometry', 'steps': steps, 'result': exact};
    }
    // Identités trigonométriques
    if (s.contains('sin²') && s.contains('cos²')) {
      steps.add('sin²θ + cos²θ = 1');
      steps.add('Identité fondamentale de Pythagore');
      return {'type': 'trigonometry', 'steps': steps, 'result': '1'};
    }
    return {'type': 'error', 'steps': [], 'result': 'Format non reconnu pour la trigonométrie'};
  }

  // =================== PROBABILITÉS ===================
  bool _isProbability(String s) {
    return s.contains('p(') || s.contains('probabilité') ||
           s.contains('chance') || s.contains('prob') ||
           (s.contains('/') && RegExp(r'\d+/\d+').hasMatch(s));
  }

  Map<String, dynamic> _solveProbability(String s) {
    final steps = <String>[];
    // Fraction (ex: 3/5)
    final fractionPattern = RegExp(r'(\d+)/(\d+)');
    final fractionMatch = fractionPattern.firstMatch(s);
    if (fractionMatch != null) {
      final favorable = int.parse(fractionMatch.group(1)!);
      final total = int.parse(fractionMatch.group(2)!);
      if (total == 0) {
        return {'type': 'error', 'steps': [], 'result': 'Division par zéro impossible'};
      }
      steps.add('P = $favorable/$total');
      steps.add('P = cas favorables / cas totaux');
      final probability = favorable / total;
      final percentage = probability * 100;
      steps.add('P = ${_formatNumber(probability)}');
      steps.add('P = ${_formatNumber(percentage)}%');
      return {
        'type': 'probability',
        'steps': steps,
        'result': '${_formatNumber(probability)} (${_formatNumber(percentage)}%)'
      };
    }
    // Probabilité conditionnelle (ex: P(A|B))
    final conditionalPattern = RegExp(r'p\(([^|]+)\|([^)]+)\)');
    final conditionalMatch = conditionalPattern.firstMatch(s);
    if (conditionalMatch != null) {
      final a = conditionalMatch.group(1)!;
      final b = conditionalMatch.group(2)!;
      steps.add('P($a|$b)');
      steps.add('Probabilité conditionnelle');
      steps.add('P($a|$b) = P($a ∩ $b) / P($b)');
      return {'type': 'probability', 'steps': steps, 'result': 'P($a ∩ $b) / P($b)'};
    }
    return {'type': 'error', 'steps': [], 'result': 'Format non reconnu pour la probabilité'};
  }

  // =================== ÉQUATIONS ===================
  Map<String, dynamic> _solvePolynomial(String expr) {
    try {
      // Nettoyer l'expression
      String cleanExpr = expr.replaceAll(' ', '').toLowerCase();
      // Extraire le coefficient de x²
      final regex2 = RegExp(r'([+-]?\d*\.?\d*)x\^?2');
      final aMatch = regex2.firstMatch(cleanExpr);
      double a = 0;
      if (aMatch != null) {
        final aStr = aMatch.group(1) ?? '1';
        a = _parseCoeff(aStr);
        cleanExpr = cleanExpr.replaceFirst(regex2, '');
      }
      // Extraire le coefficient de x
      final regexB = RegExp(r'([+-]?\d*\.?\d*)x(?!\^)');
      final bMatch = regexB.firstMatch(cleanExpr);
      double b = 0;
      if (bMatch != null) {
        final bStr = bMatch.group(1) ?? '1';
        b = _parseCoeff(bStr);
        cleanExpr = cleanExpr.replaceFirst(regexB, '');
      }
      // Extraire la constante
      final cMatch = RegExp(r'([+-]?\d+\.?\d*)').firstMatch(cleanExpr);
      final c = cMatch != null ? double.parse(cMatch.group(1)!) : 0.0;
      if (a.abs() > 1e-12) {
        // Équation quadratique
        final delta = b * b - 4 * a * c;
        final steps = <String>[];
        steps.add('Équation: ${_formatEquation(a, b, c)} = 0');
        steps.add('Discriminant Δ = b² - 4ac = (${_formatNumber(b)})² - 4(${_formatNumber(a)})(${_formatNumber(c)}) = ${_formatNumber(delta)}');
        if (delta < -1e-12) {
          return {'type': 'quadratic', 'steps': steps, 'result': 'Aucune solution réelle'};
        } else if (delta.abs() < 1e-12) {
          final root = -b / (2 * a);
          steps.add('Solution double: x = ${_formatNumber(root)}');
          return {'type': 'quadratic', 'steps': steps, 'result': 'x = ${_formatNumber(root)}'};
        } else {
          final sqrtDelta = sqrt(delta);
          final x1 = (-b + sqrtDelta) / (2 * a);
          final x2 = (-b - sqrtDelta) / (2 * a);
          steps.add('x₁ = (-b + √Δ) / (2a) = (${_formatNumber(-b)} + ${_formatNumber(sqrtDelta)}) / ${_formatNumber(2 * a)} = ${_formatNumber(x1)}');
          steps.add('x₂ = (-b - √Δ) / (2a) = (${_formatNumber(-b)} - ${_formatNumber(sqrtDelta)}) / ${_formatNumber(2 * a)} = ${_formatNumber(x2)}');
          return {'type': 'quadratic', 'steps': steps, 'result': 'x₁ = ${_formatNumber(x1)}, x₂ = ${_formatNumber(x2)}'};
        }
      } else if (b.abs() > 1e-12) {
        // Équation linéaire
        final root = -c / b;
        final steps = [
          'Équation linéaire: ${_formatLinearEquation(b, c)} = 0',
          '${_formatCoeff(b)}x = ${_formatNumber(-c)}',
          'x = ${_formatNumber(-c)} ÷ ${_formatNumber(b)} = ${_formatNumber(root)}',
        ];
        return {'type': 'linear', 'steps': steps, 'result': 'x = ${_formatNumber(root)}'};
      } else {
        // Pas de variable x
        if (c.abs() < 1e-12) {
          return {'type': 'identity', 'steps': ['0 = 0'], 'result': 'Identité (infinité de solutions)'};
        } else {
          return {'type': 'contradiction', 'steps': ['${_formatNumber(c)} = 0'], 'result': 'Contradiction (aucune solution)'};
        }
      }
    } catch (e) {
      return {'type': 'error', 'steps': [], 'result': 'Erreur d\'analyse: ${e.toString()}'};
    }
  }

  double _parseCoeff(String s) {
    if (s == '' || s == '+') return 1.0;
    if (s == '-') return -1.0;
    return double.tryParse(s) ?? 1.0;
  }

  String _formatCoeff(double coeff) {
    if (coeff == 1.0) return '';
    if (coeff == -1.0) return '-';
    if (coeff == coeff.toInt()) return coeff.toInt().toString();
    return coeff.toStringAsFixed(2);
  }

  String _formatConstant(double constant) {
    if (constant == constant.toInt()) return constant.toInt().toString();
    return constant.toStringAsFixed(2);
  }

  String _formatEquation(double a, double b, double c) {
    List<String> terms = [];
    // Terme en x²
    if (a != 0) {
      if (a == 1) {
        terms.add('x²');
      } else if (a == -1) {
        terms.add('-x²');
      } else {
        terms.add('${_formatConstant(a)}x²');
      }
    }
    // Terme en x
    if (b != 0) {
      String term = '';
      if (terms.isNotEmpty && b > 0) term += '+';
      if (b == 1) {
        term += 'x';
      } else if (b == -1) {
        term += '-x';
      } else {
        term += '${_formatConstant(b)}x';
      }
      terms.add(term);
    }
    // Terme constant
    if (c != 0) {
      String term = '';
      if (terms.isNotEmpty && c > 0) term += '+';
      term += _formatConstant(c);
      terms.add(term);
    }
    if (terms.isEmpty) return '0';
    return terms.join('').replaceFirst('+', '');
  }

  String _formatLinearEquation(double b, double c) {
    String result = '';
    if (b == 1) {
      result = 'x';
    } else if (b == -1) {
      result = '-x';
    } else {
      result = '${_formatConstant(b)}x';
    }
    if (c != 0) {
      if (c > 0) {
        result += '+${_formatConstant(c)}';
      } else {
        result += _formatConstant(c);
      }
    }
    return result;
  }

  // Fonction pour formater les nombres (supprime les .00 inutiles)
  String _formatNumber(dynamic value) {
    if (value is int) return value.toString();
    if (value is double) {
      if (value == value.toInt()) return value.toInt().toString();
      return value.toStringAsFixed(2).replaceAll(RegExp(r'\.?0+$'), '');
    }
    return value.toString();
  }
}
