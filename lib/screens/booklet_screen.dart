import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class BookletScreen extends StatelessWidget {
  const BookletScreen({super.key});

  final Map<String, List<String>> formulasByTheme = const {
    "Aires": [
      r"\text{Aire d'un parallélogramme}",
      r"A_{parallélogramme} = b \times h",
      r"\text{où } b = \text{base}, \quad h = \text{hauteur}",
      r"\text{Aire d'un triangle}",
      r"A_{triangle} = \frac{1}{2}bh",
      r"\text{où } b = \text{base}, \quad h = \text{hauteur}",
      r"\text{Aire d'un trapèze}",
      r"A_{trapèze} = \frac{1}{2}(a + b)h",
      r"\text{où } a, b = \text{côtés parallèles}, \quad h = \text{hauteur}",
      r"\text{Aire d'un cercle}",
      r"A_{cercle} = \pi r^2",
      r"\text{où } r = \text{rayon}",
    ],
    "Périmètres et Circonférences": [
      r"\text{Circonférence d'un cercle}",
      r"C_{cercle} = 2\pi r",
      r"\text{où } r = \text{rayon}",
    ],
    "Volumes": [
      r"\text{Volume d'un pavé droit}",
      r"V_{pavé} = l \times L \times h",
      r"\text{où } l = \text{longueur}, \quad L = \text{largeur}, \quad h = \text{hauteur}",
      r"\text{Volume d'un cylindre}",
      r"V_{cylindre} = \pi r^2 h",
      r"\text{où } r = \text{rayon}, \quad h = \text{hauteur}",
      r"\text{Volume d'un prisme}",
      r"V_{prisme} = A_{base} \times h",
      r"\text{où } A_{base} = \text{aire de la base}, \quad h = \text{hauteur}",
    ],
    "Aire latérale cylindre": [
      r"\text{Aire latérale d'un cylindre}",
      r"A_{\text{Aire latérale}} = 2\pi rh",
      r"\text{où } r = \text{rayon}, \quad h = \text{hauteur}",
    ],
    "Géométrie Analytique": [
      r"\text{Distance entre deux points } A(x_1, y_1) \text{ et } B(x_2, y_2)",
      r"d = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2}",
      r"\text{Coordonnées du milieu du segment } [AB]",
      r"\text{où } A(x_1, y_1) \text{ et } B(x_2, y_2)",
      r"M\left(\frac{x_1 + x_2}{2}, \frac{y_1 + y_2}{2}\right)",
    ],
   
    " Thème 1. Nombres et algèbre": [
      r"\text{Le } n^{\text{ième}} \text{ terme d'une suite arithmétique}",
      r"u_n = u_1 + (n-1)d",
      
      r"\text{La somme des } n \text{ premiers termes d'une suite arithmétique}",
      r"S_n = \frac{n}{2}(2u_1 + (n-1)d) = \frac{n}{2}(u_1 + u_n)",
      
      r"\text{Le } n^{\text{ième}} \text{ terme d'une suite géométrique}",
      r"u_n = u_1 r^{n-1}",
      
      r"\text{La somme des } n \text{ premiers termes d'une suite géométrique}",
      r"S_n = \frac{u_1(r^n - 1)}{r - 1} = \frac{u_1(1 - r^n)}{1 - r}, \quad r \neq 1",
      
      r"\text{La somme d'une suite géométrique infinie}",
      r"S_\infty = \frac{u_1}{1-r}, \quad |r| < 1",
      
      r"\text{Intérêts composés}",
      r"VF = VA \times \left(1 + \frac{r}{100k}\right)^{kn}",
      r"\text{où } VF = \text{valeur future}, \, VA = \text{valeur actuelle}",
      r"n = \text{nombre d'années}, \, k = \text{périodes par année}, \, r\% = \text{taux nominal annuel}",
     
      r"\text{Exposants et logarithmes, où } a > 0, b > 0, a \neq 1",
      r"a^x = b \Leftrightarrow x = \log_a b",
      
      r"\text{Lois des logarithmes}",
      r"\log_a(xy) = \log_a x + \log_a y",
      r"\log_a\left(\frac{x}{y}\right) = \log_a x - \log_a y",
      r"\log_a(x^m) = m\log_a x",
      r"\log_a x = \frac{\log_b x}{\log_b a}",
      
      r"\text{Formule du binôme de Newton, } n \in \mathbb{N}",
      r"(a+b)^n = a^n + \binom{n}{1}a^{n-1}b + \cdots + \binom{n}{r}a^{n-r}b^r + \cdots + b^n",
      r"\binom{n}{r} = \frac{n!}{r!(n-r)!}",
    ],
    " Thème 2. Fonctions": [
      r"\text{Équation d'une droite (forme point-pente)}",
      r"y - y_1 = m(x - x_1)",
      r"\text{Équations de droites}",
      r"y = mx + c, \quad ax + by + d = 0",
      r"\text{Pente d'une droite}",
      r"m = \frac{y_2 - y_1}{x_2 - x_1}",
      r"\text{Fonction quadratique et axe de symétrie}",
      r"f(x) = ax^2 + bx + c \quad \Rightarrow \quad \text{axe de symétrie } x = -\frac{b}{2a}, \, a \neq 0",
      r"\text{Formule quadratique}",
      r"x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}, \quad \Delta = b^2 - 4ac",
      r"\text{Propriétés des exponentielles et logarithmes}",
      r"a^x = e^{x \ln a}, \quad \log_a a^x = x, \quad \log_a x = \frac{\ln x}{\ln a}",
    ],
    " Thème 3. Géométrie et trigonométrie": [
      r"\text{Distance entre deux points dans l'espace}",
      r"d = \sqrt{(x_1 - x_2)^2 + (y_1 - y_2)^2 + (z_1 - z_2)^2}",
      r"\text{Coordonnées du milieu dans l'espace}",
      r"M\left(\frac{x_1+x_2}{2}, \frac{y_1+y_2}{2}, \frac{z_1+z_2}{2}\right)",
      r"\text{Volume d'une pyramide}",
      r"V_{\text{pyramide}} = \frac{1}{3} A h",
      r"\text{Volume d'un cône}",
      r"V_{\text{cône}} = \frac{1}{3} \pi r^2 h",
      r"\text{Aire latérale d'un cône}",
      r"A_{\text{latérale cône}} = \pi r l",
      r"\text{Volume d'une sphère}",
      r"V_{\text{sphère}} = \frac{4}{3}\pi r^3",
      r"\text{Aire d'une sphère}",
      r"A_{\text{sphère}} = 4\pi r^2",
      r"\text{Loi des sinus}",
      r"\frac{a}{\sin A} = \frac{b}{\sin B} = \frac{c}{\sin C}",
      r"\text{Loi des cosinus}",
      r"c^2 = a^2 + b^2 - 2ab\cos C, \quad \cos C = \frac{a^2 + b^2 - c^2}{2ab}",
      r"\text{Aire d'un triangle (formule des sinus)}",
      r"A = \frac{1}{2} ab \sin C",
      r"\text{Longueur d'arc et aire d'un secteur}",
      r"l = r\theta, \quad A_{\text{secteur}} = \tfrac{1}{2}r^2 \theta",
      r"\text{Identités trigonométriques de base}",
      r"\tan\theta = \frac{\sin\theta}{\cos\theta}",
      r"\sin^2\theta + \cos^2\theta = 1",
      r"\text{Formules de duplication}",
      r"\sin(2\theta) = 2\sin\theta \cos\theta",
      r"\cos(2\theta) = \cos^2\theta - \sin^2\theta = 2\cos^2\theta -1 = 1 - 2\sin^2\theta",
    ],

    " Thème 4. Statistiques et probabilités": [
      r"\text{Écart interquartile}",
      r"EI = Q_3 - Q_1",
      r"\text{Moyenne pondérée}",
      r"\bar{x} = \frac{\sum_{i=1}^k f_i x_i}{\sum_{i=1}^k f_i}",
      r"\text{Probabilité classique}",
      r"P(A) = \frac{n(A)}{n(U)}",
      r"\text{Probabilité du complément}",
      r"P(A) + P(A') = 1",
      r"\text{Probabilité de l'union}",
      r"P(A \cup B) = P(A) + P(B) - P(A \cap B)",
      r"\text{Événements indépendants}",
      r"P(A \cap B) = P(A)P(B) \quad \text{si A et B indépendants}",
      r"\text{Probabilité conditionnelle}",
      r"P(A|B) = \frac{P(A \cap B)}{P(B)}",
      r"\text{Espérance mathématique}",
      r"E(X) = \sum_i x_i P(X=x_i)",
      r"\text{Loi binomiale}",
      r"X \sim B(n,p), \quad E(X) = np, \quad Var(X) = np(1-p)",
      r"\text{Variable centrée réduite}",
      r"Z = \frac{X - \mu}{\sigma}",
    ],

    " Thème 5. Analyse": [
      r"\text{Dérivée d'une puissance}",
      r"\frac{d}{dx}(x^n) = nx^{n-1}",
      r"\text{Primitive d'une puissance}",
      r"\int x^n dx = \frac{x^{n+1}}{n+1} + C, \quad n \neq -1",
      r"\text{Aire sous une courbe}",
      r"A = \int_a^b f(x)\,dx",
      r"\text{Dérivées des fonctions trigonométriques}",
      r"\frac{d}{dx}(\sin x) = \cos x, \quad \frac{d}{dx}(\cos x) = -\sin x",
      r"\text{Dérivées des fonctions exponentielles et logarithmiques}",
      r"\frac{d}{dx}(e^x) = e^x, \quad \frac{d}{dx}(\ln x) = \frac{1}{x}",
      r"\text{Règle de dérivation en chaîne}",
      r"\frac{dy}{dx} = \frac{dy}{du}\cdot \frac{du}{dx}",
      r"\text{Règles de dérivation du produit et du quotient}",
      r"(uv)' = u'v + uv', \quad \left(\frac{u}{v}\right)' = \frac{u'v - uv'}{v^2}",
      r"\text{Primitives usuelles}",
      r"\int \frac{1}{x}\,dx = \ln x + C",
      r"\int \sin x\,dx = -\cos x + C, \quad \int \cos x\,dx = \sin x + C",
      r"\int e^x dx = e^x + C",
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: const Color(0xFF6C5CE7),
    foregroundColor: Colors.white,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Booklet de Formules",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "2021",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ),
     centerTitle: true,
  ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: formulasByTheme.length,
        itemBuilder: (context, index) {
          final entry = formulasByTheme.entries.elementAt(index);

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.key,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                     color: Color(0xFF2ECC71),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Liste des formules → chaque formule a son scroll horizontal
                  ...entry.value.map((formula) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Math.tex(
                          formula,
                          textStyle: const TextStyle(fontSize: 22),
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}