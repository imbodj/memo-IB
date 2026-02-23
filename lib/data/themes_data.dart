import 'package:flutter/material.dart';
import '../models/math_theme_data.dart';

final List<MathThemeData> mathThemes = [
  // Thème 1 - Nombres et algèbre
  MathThemeData(
    id: 'theme1',
    title: 'Nombres et algèbre',
    primaryColor: const Color(0xFF6C5CE7),
    backgroundColor: const Color(0xFFF8F9FA),
    topics: [
      'Suites et séries arithmétiques et géométriques ',
      'Lois des exposants et  des logarithmes',
      'Formule du binôme de Newton',
      'Preuve mathématique'
    ],
    description: '''# Nombres et algèbre
## Suites et séries 
- Une suite (aussi appelée progression) est une liste de nombres écrits dans un ordre particulier.  
- Chaque nombre d’une suite est appelé un terme.  
- Une suite finie possède un nombre fixe de termes.  
- Une suite infinie possède une infinité de termes.  
- On peut trouver une formule ou une expression qui décrit mathématiquement le terme général uₙ.  

- Une suite est dite arithmétique lorsqu’on ajoute la même valeur à chaque terme pour obtenir le suivant.  
- Une suite est dite géométrique lorsqu’on multiplie chaque terme par la même valeur pour obtenir le suivant.  
- Une suite récurrente utilise le ou les termes précédents pour calculer le suivant (notation uₙ₋₁ pour “le terme précédent”).  

- Une série est créée lorsque l’on additionne les termes d’une suite.  
- Une série peut être finie ou infinie.  

Exemple de série finie :  
2 + 5 + 3 + 1 - 1 - 3 (elle s’arrête après le 6ᵉ terme)  

Exemple de série infinie :  
10 + 8 + 6 + 4 + ... (les points indiquent que la série continue indéfiniment)  
## Formules des suites et séries
- Terme général d’une suite arithmétique :  
u_n = u_1 + (n - 1)d 

- Relation entre deux termes :
u_n = u_m + (n - m)d

- Terme général d’une suite géométrique :  
u_n = u_1 × r^(n-1)  
- Relation entre deux termes :
u_n = u_m × r^(n-m) 

### Somme d’une série arithmétique (2 formes possibles) :  
S_n = (n/2)(u_1 + u_n)  
S_n = (n/2)(2u_1 + (n - 1)d)  

### Somme d’une série géométrique finie :  
S_n = u_1(1 - rⁿ) / (1 - r)=u_1(rⁿ-1) / (r-1),   "avec"  r ≠ 1  

### Somme d’une série géométrique infinie (si |r| < 1) :  
 S∞ =u_1/(1-r)

## Intérêt simple et composé
- Soit P le montant principal, A le montant accumulé, r le taux d'intérêt annuel  et n le nombre d'années.
- **Intérêt simple** : calculé uniquement sur le capital initial (appelé principal). 

A=P(1 + nr) 
- **Intérêt composé** : calculé sur le capital **et** les intérêts accumulés (intérêt sur intérêt).  

A=P(1 + r)^(n)
## Combinaison 
 C(n, r) = n! / [r!(n - r)!]  

n!=n(n-1)(n-2)(n-3) ...3×2×1

## Terme d'un développement  (a+b)ⁿ
- Pour trouver un terme d'un développemment, il est plus facile d'utiliser la formule donnant les termes que de développer. 
- Un terme quelconque  du développement  de (a+b)ⁿ est donné par :

C(n, r)a^(n-r)b^(r)  "où" r="terme"-1

## Preuves mathématiques
- Une **preuve mathématique** est une suite d’étapes logiques qui montrent qu’un côté d’une égalité est équivalent à l’autre, pour toutes les valeurs de la variable.  
- On a besoin de preuves pour garantir que les mathématiques utilisées sont correctes et cohérentes.  

Notation :  
À la fin d’une preuve, on écrit souvent : 
-LHS = RHS (Left Hand Side = Right Hand Side). 


Exemple 
-Montrez que:  (2n-1)²  +  (2n+1)²= 8n² + 2

## Logarithmes
### Définition :
" Si"  a^x = b, "alors"  log_a(b) = x

### Propriétés principales :
 log_a(xy) = log_a(x) + log_a(y)
 log_a(x/y) = log_a(x) - log_a(y)
 log_a(xⁿ) = n × log_a(x)
 log_a(a) = 1
 log_a(1) = 0

### Changement de base :
 log_a(x) =(log_b(x))/log_b(a)

### Logarithme naturel :
 ln(x) = log_e(x)
 
##  Lois des exposants
### Règles principales :
 a^m × aⁿ = a^(m+n)
 a^m / aⁿ = a^(m-n)
 (a^m)ⁿ = a^(mn)
 (ab)ⁿ = aⁿbⁿ
 a⁰ = 1   "si"  a ≠ 0
 a^(-n) = 1/aⁿ
### Remarques


 log_a(a^x) = x  "et" a^(log_a x) = x

Exemples :
- 2³ × 2² = 2⁵ = 32
- x⁴ ÷ x² = x² 
- (3²)³ = 3⁶ = 729
 ''',
  ),

  // Thème 2 - Fonctions
  MathThemeData(
    id: 'theme2',
    title: 'Fonctions',
    primaryColor: const Color(0xFF00B894),
    backgroundColor: const Color(0xFFF8F9FA),
    topics: [
      'Les équations de droites',
      'Fonctions composées et réciproques',
      'Fonctions quadratiques,homographiques, exponentielles et logarithmes',
      'Transformations et graphiques'
    ],
    description: '''# Fonctions
## Relations et fonctions
- Une relation mathématique est une correspondance entre un ensemble de paires ordonnées.

- Une fonction est un type particulier de relation. Une relation est une fonction si chaque entrée correspond à une seule sortie. En d’autres termes, une valeur de la variable indépendante ne peut donner plus d’une valeur de la variable dépendante. Une fonction ne peut pas avoir une même valeur de x associée à plusieurs valeurs de y.

- Lorsqu’on écrit une expression pour une fonction, il existe plusieurs notations. Par exemple : f(x), g(x), f:→. On appelle cela la notation fonctionnelle.

- f(x),  “lire f de ' x, ' représente une fonction f dont la variable indépendante est x'.

- La notation fonctionnelle est une façon rapide d’exprimer la substitution. Au lieu de dire :
- Étant donné  y = 4x - 3', trouver la valeur de y si  x = 2,
- on peut simplement écrire : étant donné f(x) = 4x - 3, trouver f(2).
-Le domaine d’une fonction est l’ensemble des valeurs possibles de la variable indépendante (x).

-L’ensemble image (ou valeurs de sortie) d’une fonction est l’ensemble des valeurs possibles de la variable dépendante (y).

## Dessiner et Esquisser
-Dessiner et Esquisser sont deux termes de consignes du BI qu’il faut connaître :

-Dessiner : représenter à l’aide d’un diagramme ou d’un graphe précis et légendé, au crayon. Une règle (droite) doit être utilisée pour tracer les segments. Les diagrammes doivent être à l’échelle et les points correctement placés (le cas échéant), reliés par une droite ou une courbe régulière.

 -Esquisser : représenter à l’aide d’un diagramme ou d’un graphe (légendé si nécessaire). Le schéma donne une idée générale de la forme ou de la relation, et doit inclure les éléments importants.

-La notation d’intervalle utilise des crochets et parenthèses :
( ) ou ] [ signifient que les valeurs ne sont pas incluses.

-[ ] signifient que les valeurs sont incluses.
## Fonction  par morceaux
Une fonction définie par morceaux est une fonction qui possède deux ou plusieurs expressions pour différents intervalles de son domaine.
Exemple
f(x)={ x+2, 4-x, si x<1, si x>1 }
## Fonction composée
-Une fonction composée, notée f(g(x)) ou (fog)(x), peut être vue comme une suite d’opérations ou de “machines”. Ces deux notations se lisent “f de g de x”.

-Pour travailler avec une fonction composée telle que f(g(x)), on commence par la fonction la plus à l’intérieur, puis on progresse vers l’extérieur.

Le domaine et l’ensemble image d’une fonction composée dépendent à la fois de la fonction intérieure et de la fonction composée elle-même.
## Fonctions inverses
-L’inverse d’une fonction f(x) est noté 
f^{-1}(x).

- Il inverse l’action de la fonction, de sorte que :
(fof^{-1})(x) = x 

Pour qu’une fonction ait un inverse, elle doit être bijective (ou une-à-une). Cela signifie qu’elle associe un seul y à chaque x, et un seul x à chaque y. Une telle fonction passe à la fois le test de la verticale et le test de l’horizontale.

-Deux fonctions 'f(x)' et 'g(x)' sont inverses si et seulement si :
 
 (fog)(x) = (gof)(x) = x.

Pour trouver l’équation d’une fonction inverse algébriquement : on échange x et y, puis on isole y.

Pour tracer le graphe d’une fonction inverse :

-on trace la fonction originale,

-on choisit quelques points caractéristiques (intersections avec les axes, etc.),
puis on échange les coordonnées (x, y) → (y, x).
-Cela donne une symétrie par rapport à la droite  'y = x'.

## Transformations de  y=f(x) 

### Translations verticales:  

 y=f(x)+k 
 
 - Vers le haut de   k unités  si   k>0 ;
 - Vers le bas de  |k|  unités  si   k<0 
 
### Translations horizontales:
 
   y=f(x-h)
   
  -Vers la droite  de   h unités  si   h>0 ; 
  - Vers la gauche  de  |h|  unités  si   h<0 


### Réflexion par rapport à l'axe des abscisses:

 y=-f(x)  

###  Réflexion par rapport à l'axe des ordonnées: 

 y=f(-x) 


### Dilatation verticale de facteur  |a| :

 y=af(x) 
 
 - Étirement vertical si |a|>1 ; 
 -Compression verticale si 0< |a|<1
 
### Dilatation horizontale de facteur 1/|q| :

 y=f(qx) 

- Étirement horizontal si  0< |q|<1  ; Compression horizontale si  |q|>1

## Graphiques des fonctions linéaires

-Le coefficient directeur (ou pente) d’une droite passant par deux points peut être calculé à partir de leurs coordonnées.

-Les droites parallèles ont le même coefficient directeur.

-Le produit des coefficients directeurs de deux droites perpendiculaires est -1.

-Pour une fonction linéaire sous la forme y = mx + c : la pente est m, l’ordonnée à l’origine est (0, c).

-Pour une fonction linéaire sous la forme y – y₁ = m(x – x₁) : la droite passe par le point (x₁, y₁) et sa pente est m.

La forme générale de l’équation d’une droite est :
 ax + by + d = 0.

## Graphiques des fonctions quadratiques

Pour une fonction quadratique de la forme;

 f(x) = a(x – h)² + k 

-le sommet est (h, k),

-l’axe de symétrie est x = h.
-Les transformations du graphe de y = x² permettent de tracer cette forme.

-Pour une fonction quadratique de la forme f(x) = ax² + bx + c :

-l’axe de symétrie est donné par x = –b /2a,

-l’ordonnée à l’origine est (0, c).

-Pour une fonction quadratique de la forme f(x) = a(x – p)(x – q) :

-les intersections avec l’axe des abscisses sont (p, 0) et (q, 0),

-l’axe de symétrie est x = (p + q) / 2.

### Résolution des équations quadratiques

-L’équation x² = c, avec c > 0, a deux solutions : 

x = √(c)  "et"  x = –√(c).
-On peut aussi écrire :

 x = ±√(c).

Pour résoudre une équation quadratique par factorisation :

-on met l’équation sous forme factorisée,

-on applique la propriété du produit nul (chaque facteur = 0).

Pour résoudre une équation quadratique par complétion du carré :

-diviser les deux membres par le coefficient de x²,

-isoler les termes en x² et x,

-ajouter le carré du demi-coefficient de x,

-mettre le membre de gauche sous forme de carré parfait,

-résoudre pour x.

-La formule quadratique (formule canonique) pour résoudre ax² + bx + c = 0 est :

x= (-b ± √(b² - 4ac))/2a , "avec" a ≠ 0.

-Selon le discriminant Δ = b² – 4ac :

-Si Δ > 0, il y a deux racines réelles distinctes.

-Si Δ = 0, il y a deux racines réelles égales.

-Si Δ < 0, il n’y a pas de racines réelles.

## La fonction réciproque

-La fonction  réciproque est f(x) = k/x, où k est une constante non nulle.

-Le domaine de la fonction réciproque est : x ∈ ℝ, x ≠ 0.

-L’ensemble image est : y ∈ ℝ, y ≠ 0.

-Les limites de la fonction réciproque f(x) = k/x sont :

 lim[x→±∞] f(x)=0  

	
-asymptote horizontale : y = 0.

 lim[x→0^+]f(x)= ∞   "ou"   lim[x→0^-]f(x)= ∞


-asymptote verticale : x = 0.

-La fonction réciproque est une fonction auto-inverse (self-inverse) car :
-f(x) = f⁻¹(x) pour tout x dans son domaine.
-Graphiquement, son graphe est une symétrie par rapport à la droite y = x.

## Fonctions rationnelles

Une fonction rationnelle est une fonction de la forme :
f(x) = (g(x))/h(x)
-où g(x) et h(x) sont des polynômes.

-À partir de la fonction de base y = 1/x, on peut générer d’autres fonctions rationnelles, par exemple :

y = (ax + b) / (cx + d)


Pour une fonction rationnelle de la forme :
y = (ax + b) / (cx + d) :

-l’asymptote verticale est : x = –d/c,

-l’asymptote horizontale est : y = a/c.

### Méthode pour tracer une fonction rationnelle  sans calculatrice

y= ax+b/ cx+d

-Trouver l’asymptote verticale : résoudre cx + d = 0, donc x = –d/c.

-Trouver l’asymptote horizontale : y = a/c.

-Trouver l’ordonnée à l’origine : poser x = 0 et calculer y.

-Trouver l’abscisse à l’origine (x-intercept) : poser y = 0 et résoudre pour x.

-Tester les valeurs de part et d’autre de l’asymptote verticale pour déterminer si la courbe tend vers +∞ ou –∞.

-Tracer les axes, les asymptotes, puis esquisser la courbe.
''',
  ),

  // Thème 3 - Géométrie et trigonométrie
  MathThemeData(
    id: 'theme3',
    title: 'Géométrie et trigonométrie',
    primaryColor: const Color(0xFFE17055),
    backgroundColor: const Color(0xFFF8F9FA),
    topics: [
      'Distance, milieu,aire , volume dans l\'espace',
      'Géométrie du triangle, Lois des sinus et des cosinus. Cercle et équations trigonométriques',
      'Fonctions trigonométriques'
    ],
    description: '''# Géométrie et trigonométrie
## Géométrie dans l’espace (3D)

-Milieu de (x₁, y₁, z₁) et (x₂,y₂, z₂) :
M((x_1 + x_2)/2, (y_1 + y_2)/2, (z_1 + z_2)/2)

Distance entre (x₁, y₁, z₁) et (x₂,y₂, z₂) :
d=\\sqrt{(x_2 - x_1)^2 +(y_2 - y_1)^2  + (z_2 - z_1)^2}
## Solides usuels
-Pyramide : base polygonale + faces triangulaires se rencontrant à l’apex (sommet).
-Pyramide droite : l’apex est à la verticale du centre de la base.
-Aire totale : somme des aires de toutes les faces.
-Volume : 
V=1/3 ×"aire de base"×"hauteur".
-Pyramide à base carrée (côté x, apothème/slant l) :
"Aire totale"=x^2 + 2xl
-Cône (de révolution) : base circulaire de rayon r, génératrice l, hauteur h.
"Aire totale :" 𝜋r^2 +𝜋rl.
 "Volume :" V=1/3 πr^2 h.
Sphère : ensemble des points à égale distance d’un centre.
 -Hémisphère : moitié d’une sphère.
  "Aire :" 4πr^2
   "Volume :" 4/3 𝜋 𝑟^3
## Triangle rectangle
SOH–CAH–TOA :
sin 𝜃 =\\frac{"opposeˊ"}{"hypoténuse"} , " " cos 𝜃 = \\frac{"adjacent"}{"hypoténuse"}, " " tan = \\frac{"opposé"}{"adjacent"}
### Triangles  rectangles spéciaux :
- 45°–45°–90° : si l’hypoténuse vaut h, alors chaque cathete vaut h/√2.
-30°–60°–90° : le côté opposé à 30° vaut la moitié de l’hypoténuse.
## Angles d’élévation / de dépression :
Élévation : angle au-dessus de l’horizontale vers l’objet.
Dépression : angle au-dessous de l’horizontale vers l’objet.
## Relèvements (bearings) :
À trois chiffres : mesurés dans le sens horaire depuis le Nord (ex. 120°, 052°, 314°).
Type boussole : depuis N ou S vers E ou W (ex. N20°E, S36°E, N55°W, S67°W).
## Mesure en radians & cercle
Définition du radian : angle au centre interceptant un arc de longueur r sur un cercle de rayon r.
Conversions : 
"degrés" \\rightarrow "radians:"× π /180,  "radians"\\rightarrow "degré:"× 180/π
-(ainsi 1  rad ≈57,3°).
## Longueur d’arc : 
s=rθ "(avec θ en radians)".
## Aire d’un secteur : 
A = 1/2 r^2 θ
### Cercle trigonométrique (unité) : centre à l’origine, rayon 1.

Identités utiles (en degrés) :

sin⁡ 𝜃 = sin(180° − 𝜃)," " cos ⁡𝜃 = cos(-𝜃 )=cos (360° − 𝜃)," " tan⁡ 𝜃 = tan(180° − 𝜃)
## Modèles sinusoïdaux
"Forme :"  y=asin(b(x−c))+d "ou" y=acos(b(x−c))+d.
"Amplitude :" ∣a∣ =(max⁡ − min )/2⁡
"Période :" T =\\frac{2π}{|b|}
" La période est la distance horizontale entre deux motifs identiques (par exemple, entre deux maxima consécutifs)."
"Décalage vertical :" d =( max ⁡+ min)/2⁡
### "Décalage horizontal c (phase)'
"Utiliser un  point connu (maxima, minima, passages par zéro) et de remplacer ses coordonnées  dans l'équation de la fonction puis résoudre c."
''',
  ),

  // Thème 4 - Statistiques et probabilités
  MathThemeData(
    id: 'theme4',
    title: 'Statistiques et probabilités',
    primaryColor: const Color(0xFF0984E3),
    backgroundColor: const Color(0xFFF8F9FA),
    topics: [
      'Échantillonnage, moyenne, médiane, mode, diagramme en boîte,coefficient de Pearson',
      'Probabilités simples et conditionnelles',
      'Lois binomiale et normale'
    ],
    description: '''# Statistiques et probabilités
# Statistiques
## Les Données 
Données discrètes et continues
-Les données discrètes ne peuvent prendre que certaines valeurs particulières, chacune étant distincte des autres.
-Les données continues, au contraire, ne sont pas limitées à un ensemble fixe de valeurs : elles peuvent prendre n’importe quelle valeur dans un intervalle continu.

### Fiabilité et suffisance des données

Des données sont dites fiables si, en répétant le processus de collecte, on obtient des résultats similaires.

Des données sont dites suffisantes lorsqu’elles sont en quantité adéquate pour soutenir des conclusions valables.
## Représentations graphiques

Un diagramme en barres est utilisé pour représenter des données discrètes.

Un histogramme est utilisé pour représenter des données continues.

Dans les épreuves, on considère généralement que l’ensemble des données constitue la population.
## Population et échantillon
La population désigne l’ensemble des individus ou éléments que l’on souhaite étudier.
Un échantillon est un sous-ensemble de la population, choisi pour fournir des informations représentatives sur celle-ci.La population désigne l’ensemble des individus ou éléments que l’on souhaite étudier.
## Méthodes d’échantillonnage
 Les principales méthodes incluent :
-l’échantillonnage par convenance,
-l’échantillonnage aléatoire simple,
-l’échantillonnage systématique,
-l’échantillonnage stratifié,
-l’échantillonnage par quotas.
## Variance et écart-type
L’écart-type mesure la dispersion des données par rapport à la moyenne.
L’écart-type est la racine carrée de la variance, définie par :
σ^2 = 1/n ∑(x − \\overline{x})^2
Une calculatrice graphique (GDC) est généralement utilisée pour déterminer ces mesures.
## Effet des transformations sur les données
-Ajouter une constante c à chaque valeur d’un ensemble de données augmente la moyenne et la médiane de c, mais n’a aucun effet sur l’écart-type.
-Multiplier chaque valeur par une constante d multiplie la moyenne et l’écart-type par d, et la variance par d².
## Mesures de dispersion
-L’étendue est la différence entre la plus grande et la plus petite valeur.
-Les quartiles divisent un ensemble de données en quatre parties contenant chacune 25 % des observations.
-Q₁ est la médiane de la moitié inférieure des données, et Q₃ est la médiane de la moitié supérieure.
-L’intervalle interquartile (IQR) est défini par :
                 IQR=Q_3 ​− Q_1
Les méthodes de calcul des quartiles peuvent varier : les résultats obtenus manuellement peuvent différer de ceux fournis par un logiciel.
Le diagramme en boîte et moustaches (boxplot) est une représentation visuelle permettant de résumer un ensemble de données.
## Valeurs extrêmes (outliers)
Les valeurs atypiques (ou outliers) sont celles qui s’écartent fortement du reste des données.
Une valeur est considérée comme un outlier si elle est située au moins à 1,5 IQR au-dessus de Q₃ ou en dessous de Q₁.
##  Analyse bivariée
L’analyse bivariée étudie la relation entre deux ensembles de données.
-Un nuage de points (scatter diagram) consiste à représenter un ensemble de données sur l’axe des abscisses (x) et l’autre sur l’axe des ordonnées (y).
-Une corrélation existe entre deux variables x et y lorsqu’une variation de x correspond à une variation de y.
-Une tendance générale ascendante indique une corrélation positive.-Une tendance générale descendante indique une corrélation négative.

Des points dispersés sans tendance apparente peuvent indiquer une corrélation proche de zéro.
⚠️ Une corrélation entre deux variables ne signifie pas nécessairement qu’il existe un lien de causalité entre elles.

## Mesure de la corrélation

-Le coefficient de corrélation linéaire de Pearson, noté r, (avec −1<r<1) mesure l’intensité de la corrélation entre deux variables x et y.
Il est couramment utilisé pour évaluer la force de la corrélation linéaire.
## Interprétation des valeurs de r :

Valeur de r	         Interprétation
0<r<0.25	       "Corrélation très faible"
0.25<r<0.5	     "Corrélation faible"
0.5<r<0.75	     "Corrélation modérée"
0.75<r<1	        "Corrélation forte"
## La droite de régression (ou droite d’ajustement)
La droite de régression (ou droite de tendance, line of best fit) est une droite tracée au milieu d’un nuage de points, de manière à être aussi proche que possible de toutes les données.
Pour la tracer « à main levée », on place une droite qui équilibre approximativement le nombre de points au-dessus et en dessous.
Un raffinement consiste à imposer que la droite passe par le point moyen  de coordonnées:

(\\overline{x}, \\overline{y})

 obtenu en calculant la moyenne des x et la moyenne des y.
## Interpolation et extrapolation
Une fois la droite de régression tracée, on peut l’utiliser pour faire des prédictions.
Il existe deux types de prédictions :
-Interpolation : estimation à l’intérieur de l’intervalle des données connues.
- Extrapolation : estimation en dehors de l’intervalle des données connues. ⚠️ L’extrapolation est souvent risquée, car elle repose sur des hypothèses hors domaine.
## Régression par les moindres carrés
La droite de régression des moindres carrés est celle qui minimise la somme des carrés des résidus (écarts entre les valeurs observées et celles estimées par la droite).
Son équation peut être obtenue grâce à une calculatrice graphique (GDC).
On distingue :
-la régression de y en fonction de x (pour estimer y à partir de x),
-la régression de x en fonction de y (pour estimer x à partir de y).
Si la corrélation est parfaite (tous les points alignés), alors les deux droites de régression sont identiques.

# Probabilité 
L’étude des probabilités nous aide à comprendre le degré d’incertitude qu’un événement se produise.
L’ensemble de tous les résultats possibles d’une expérience est appelé l’univers de cette expérience. Il est noté  U.
-La notation n(U) désigne le nombre d’éléments de l’univers.
La probabilité d’un événement A est donnée par :
P(A)= (n(A))/(n(U))
-où n(A) est le nombre de cas favorables à A et n(U) le nombre total de cas possibles.
-Si la probabilité d’un événement est P, alors sur n répétitions, on s’attend à ce que l’événement se produise environ n×P fois.
### Remarque
En mathématiques, « ou » inclut aussi la possibilité de « à la fois ».
Donc « A ou B » signifie « A » ou « B » ou « A et B ».
On appelle cela le “ou inclusif”.
Règle de l’addition :
P(A∪B)=P(A)+P(B)−P(A∩B)
## Événements incompatibles (mutuellement exclusifs) :
 Ce sont des événements qui ne peuvent pas se produire en même temps. Dans ce cas :
P(A∩B)=0 "et"  P(A∪B)=P(A)+P(B)
## Événements indépendants
Deux événements A et B sont dits indépendants si la réalisation de l’un n’affecte pas la probabilité de l’autre.

Si A et B sont indépendants :
P(A∩B)=P(A) × P(B)
##  Probabilité conditionnelle
-La notation P(A\\ B) désigne la probabilité conditionnelle : la probabilité que  A se produise sachant que B est réalisé.
Pour deux événements A et B :
P(A\\setminus B)=P(A∩B)/(P(B))   "si" P(B)>0

Si A et B sont indépendants, alors :
P(A\\setminus B)=P(A), " " P(B\\setminus A)=P(B)
et aussi :
P(A\\setminus B')=P(A), P(B\\setminus A')=P(B)
Arbres de probabilité
En probabilités, certaines situations impliquent un tirage avec remise ou sans remise, et les probabilités calculées diffèrent selon le cas.

## Probabilités et lois de distribution

Pour un événement A, on a :
0<P(A)<1 "et" P(Ω)=1
Pour une variable aléatoire discrète M, l’espérance est donnée par :
E(M)=∑mP(M=m)
## Loi binomiale
-Si X est une variable aléatoire discrète suivant une loi binomiale : X∼B(n,p) alors la probabilité d’obtenir r succès au cours de n essais indépendants (avec probabilité de succès p à chaque essai) est donnée par :
P(X=r)=C(n, r) p^(r)q^(n-r) "où" q=1-p
"Espérance :" E(X)=np " " "Variance:" Var(X)=σ^2=npq=np(1−p)
## Loi normale
Une loi normale est symétrique par rapport à une valeur centrale et représentée par une courbe en cloche, avec la majorité des valeurs regroupées autour de la moyenne.
Dans une distribution normale parfaite :
-la courbe est en forme de cloche,
-les données sont symétriques par rapport à la moyenne μ,
-la moyenne, la médiane et le mode sont confondus.

## Standardisation
-Pour transformer une valeur x d’une variable aléatoire X∼N(μ,σ²) en une valeur réduite z∼N(0,1), on utilise la formule :
z=(x−\\mu)/\\sigma
- μ : moyenne
- σ² : variance
Ce processus est appelé standardisation.''',
  ),

  // Thème 5 -Analyse mathématique
  MathThemeData(
    id: 'theme5',
    title: 'Analyse mathématique',
    primaryColor: const Color(0xFFA29BFE),
    backgroundColor: const Color(0xFFF8F9FA),
    topics: [
      'Dérivées, pentes, tangentes et normale',
      'Sens de variations et extémum d\'une fonction',
      'Intégrales et aire',
      'Cinématique',
    ],
    description: '''# Analyse mathématique

## Règles de dérivation de base

"Si" f(x) = x^n, "alors" f'(x) = nx^(n-1), "où" n ∈ ℝ.

"Si" f(x) = c, "avec" c ∈ ℝ, "alors" f'(x) = 0.

"Si" f(x) = c.g(x), "alors" f'(x) = c.g'(x).

"Si" f(x) = u(x) ± v(x), "alors" f'(x) = u'(x) ± v'(x).

## Équations des tangentes et normales

-Si (x₁, y₁) est un point sur la courbe y = f(x) et si f'(x₁) = m, alors m est le coefficient directeur de la tangente en (x₁, y₁).

### Équation de la tangente : 
(y – y_1) = m(x – x_1).
### Équation de la normale : 
(y – y_1) = - 1/m (x – x_1).

-Si une tangente a pour pente m, alors la pente de la normale est -1/m.

## Règles de dérivation
### Règle de la chaîne (chain rule) :
-Si y = g(u) où u = f(x), alors :

(dy)/dx=(dy)/du .(du)/dx

### Règle du produit (product rule) :
"Si" y = u.v, "alors:"  dy/dx=v du/dx + u dv/dx

ou encore :
(uv)' = u'v + uv'

### Règle du quotient (quotient rule) :
"Si"  y = u/v, "avec" v(x) ≠ 0, "alors:"  dy/dx = ([v du/dx - u dv/dx])/v²
ou bien:
(u/v)' = (u'v - uv')/v²
### Dérivées d’ordre supérieur
-La dérivée seconde :
 f''(x) = (d^2 y)/dx^2
-En général :
 fⁿ(x) = (d^n y)/dx^n, "où" n = 2, 3, 4, …

## Fonctions croissantes et décroissantes

-Si f'(x) > 0 pour tout x ∈ ]a, b[, alors f est croissante sur cet intervalle.

- Si f'(x) < 0 pour tout x ∈ ]a, b[, alors f est décroissante.
## Maximum et minimum
### Test de la première dérivée

-Si f'(c) = 0, on teste s’il y a un point stationnaire :

-Si f' > 0 pour x < c et f' < 0 pour x > c, alors f a un maximum local en x = c.

-Si f' < 0 pour x < c et f' > 0 pour x > c, alors f a un minimum local en x = c.

### Test de la deuxième dérivée

-Si f'(c) = 0 et f''(c) < 0 → maximum local en x = c.

-Si f'(c) = 0 et f''(c) > 0 → minimum local en x = c.

-Si f'(c) = 0 et f''(c) = 0 → test inconclusif, on revient au test de la première dérivée.

## Points d’inflexion
-Si f''(c) = 0 et que la concavité change en x = c, alors f a un point d’inflexion en x = c.

-Si f''(x) < 0 sur un intervalle, alors f est concave vers le bas.

-Si f''(x) > 0 sur un intervalle, alors f est concave vers le haut.

## Optimisation et cinématique

-La vitesse v(t) est la dérivée de la position s(t).
 v(t)=ds/dt  "ou bien"  v(t)=s'(t)
- L’accélération a(t) est la dérivée de la vitesse :
a(t)=dv/dt=(d^2 s)/dt^2 "ou bien" a(t)=v'(t)=s^(")(t)

-Si v et a ont le même signe, le mouvement est une accélération (accélération positive).

-Si v et a ont des signes différents, le mouvement est une décélération.
## Primitives et intégrale indéfinie
### Règle de la puissance :
∫𝑥^𝑛 𝑑𝑥 = 1/(𝑛+1)x^(n+1) +C  " " 𝑛 ≠-1
### Règle de la constante :
∫kdx=kx+C

### Multiplicateur constant :
∫kf(x)dx=k∫f(x)dx
### Somme ou différence :
∫[f(x) ± g(x)]dx=∫f(x)dx±∫g(x)dx

## Quelques intégrales usuelles

∫1/x dx=ln ⁡∣𝑥∣+𝐶
∫𝑒^𝑥 𝑑𝑥 =𝑒^𝑥 +𝐶
∫e^(ax) dx =1/(𝑎) e^(ax) +C
∫(𝑎𝑥 +𝑏)^𝑛  𝑑𝑥=((ax+b)^(n+1))/a(n+1) + C
∫1/(ax+b) dx=1/a ln|ax+b| + C
### Propriétés des intégrales définies
∫_a^b kf(x)dx=k∫_a^b f(x)dx
∫_a^b (f(x) ± g(x) )dx=∫_a^b f(x) dx ± ∫_a^b g(x) dx
∫_a^a f(x)dx=0
∫_a^b f(x)dx=−∫_b^a f(x)dx
"Si"  a<c<b,  "alors" ∫_a^c f(x) dx=∫_a^c f(x) dx + ∫_c^b f(x) dx

## Théorème fondamental de l’analyse

-Si f est continue sur  [a,b] et si F est une primitive de f, alors :
∫_a^b f(x)dx=F(b)−F(a).

## Aire sous une courbe
-Si  f(x) ≥ 0 pour  a ≤ x ≤ b, alors :
Aire=∫_a^b f(x) dx
## Aire entre deux courbes
-Si y₁ et y₂ sont continues sur  [a,b] et y₁ (x) ≥ y₂(x) pour tout x∈[a,b], alors :
Aire=∫_a^b [y_1 (x) − y_2 (x)]dx

## Dérivées et intégrales de sin et cos

f(x) = sin x ⇒ f'(x) = cos x

f(x) = cos x ⇒ f'(x) = –sin x

∫cosx dx = sinx+C

∫sinxdx=–cosx+C

∫sin(ax+b)dx=–1/a cos(ax+b)+C

∫cos(ax+b)dx=1/a sin(ax+b)+C

## Cinématique (application des intégrales)

-Si v(t) est la vitesse en fonction du temps, alors sur l’intervalle [a, b] :

"Déplacement:"  ∫_a^b v(t)dt 

"Distance parcourue:"   ∫_a^b|v(t)|dt ''',
  ),
];
