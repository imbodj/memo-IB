import 'exercise.dart';
class LearningData {
  static final Map<String, Map<String, List<Exercise>>> themes = {
 'Thème 1: Nombres et Algèbre': {
      'Suites et séries': [
        Exercise(
          question: "Déterminez la somme des 10 premiers termes de la suite arithmétique : \\( u_1 = 3 \\), \\( d = 5 \\)",
          solution: """**Étape 1:** Identifier les données
- Premier terme : \\( u_1 = 3 \\)
- Raison : \\( d = 5 \\)  
- Nombre de termes : \\( n = 10 \\)

**Étape 2:** Utiliser la formule de la somme
\\[ S_n = \\frac{n}{2} \\times [2u_1 + (n-1)d] \\]

**Étape 3:** Calcul
\\[ S_{10} = \\frac{10}{2} \\times [2 \\times 3 + (10-1) \\times 5] \\]
\\[ S_{10} = 5 \\times [6 + 9 \\times 5] \\]
\\[ S_{10} = 5 \\times [6 + 45] \\]
\\[ S_{10} = 5 \\times 51 = 255 \\]

**Réponse:** \\( S_{10} = 255 \\)""",
        ),
Exercise(
question: "Une suite arithmétique a pour premier terme u₁ = 7 et pour dixième terme u₁₀ = 34. Calculez la raison d et la somme des 15 premiers termes.",
solution: """**Étape 1:** Trouver la raison d

Formule : \\(u_n = u_1 + (n-1)d\\)
\\(u_{10} = u_1 + 9d = 34\\)
\\(7 + 9d = 34\\)
\\(9d = 27\\)
\\(d = 3\\)

**Étape 2:** Calculer \\(S_{15}\\)

Formule : \\(S_n = \\frac{n}{2} \\times [2u_1 + (n-1)d]\\)
\\(S_{15} = \\frac{15}{2} \\times [2 \\times 7 + 14 \\times 3]\\)
\\(S_{15} = \\frac{15}{2} \\times [14 + 42]\\)
\\(S_{15} = \\frac{15}{2} \\times 56 = 420\\)

**Réponse:** d = 3 et \\(S_{15} = 420\\)"""
),
Exercise(
question: "Calculez la somme des 15 premiers termes de la suite géométrique définie par \\( u_1 = 2 \\) et \\( r = 4 \\).",
solution: """
**Étape 1:** Identifier les données
- Premier terme : \\( u_1 = 2 \\)
- Raison : \\( r = 4 \\)
- Nombre de termes : \\( n = 15 \\)

**Étape 2:** Utiliser la formule de la somme d'une suite géométrique
\\[ S_n = u_1 \\frac{1 - r^n}{1 - r} \\]

**Étape 3:** Calcul
\\[ S_{15} = 2 \\frac{1 - 4^{15}}{1 - 4} = 2 \\frac{1 - 1073741824}{-3} = 2 \\times \\frac{1073741823}{3} = 715827882 \\]

**Réponse:** \\( S_{15} = 715827882 \\)"""
        ),
Exercise(
question: "Calculez le 10ème terme de la suite arithmétique définie par \\( u_1 = 5 \\) et \\( d = 3 \\).",
solution: """
**Étape 1:** Identifier les données
- Premier terme : \\( u_1 = 5 \\)
- Raison : \\( d = 3 \\)
- Rang cherché : \\( n = 10 \\)

**Étape 2:** Utiliser la formule du terme général d'une suite arithmétique
\\[ u_n = u_1 + (n-1)d \\]

**Étape 3:** Calcul
\\[ u_{10} = 5 + (10-1) \\times 3 = 5 + 27 = 32 \\]

**Réponse:** \\( u_{10} = 32 \\)
"""
        ),
Exercise(
  question: "Trouvez le 12ᵉ terme de la suite géométrique définie par \\( u_1 = 3 \\) et \\( r = 2 \\).",
  solution: """
**Étape 1:** Identifier les données  
- Premier terme : \\( u_1 = 3 \\)  
- Raison : \\( r = 2 \\)  
- Rang cherché : \\( n = 12 \\)

**Étape 2:** Utiliser la formule du terme général  
\\[ u_n = u_1 \\times r^{n-1} \\]

**Étape 3:** Calcul  
\\[ u_{12} = 3 \\times 2^{11} = 3 \\times 2048 = 6144 \\]

**Réponse:** \\( u_{12} = 6144 \\)
"""
),
Exercise(
question: "Déterminez le premier terme de la série géométrique infinie de raison 1/4 et dont la valeur vaut 20.",
solution: """**Étape 1:** Identifier le premier terme \\(u_1\\) et la raison \\(r=\\frac{1}{4}\\).

**Étape 2:** Appliquer la formule 
\\(\\frac{u_1}{1-r} = 20\\)

**Étape 3:** Vérification
Remplacer r par sa valeur: \\(\\frac{u_1}{1-\\frac{1}{4}} = 20\\)

**Étape 4:** Tirer la valeur de \\(u_1\\)
\\(u_1 \\times \\frac{4}{3} = 20\\) soit \\(u_1 = \\frac{3 \\times 20}{4}\\)

**Réponse:** La valeur de \\(u_1\\) est \\(\\frac{15}{4}\\)"""
        ),
Exercise(
 question: "Trouvez la somme de la série géométrique : de premier terme a=1 et de rapport r=2/3",
solution: """**Étape 1:** Identifier les paramètres
- Premier terme : a = 1 (quand n=0)
- Raison : \\(r = \\frac{2}{3}\\)

**Étape 2:** Vérifier la convergence
\\(|r| = |\\frac{2}{3}| = \\frac{2}{3} < 1\\), donc la série converge

**Étape 3:** Utiliser la formule de la somme
\\(S = \\frac{a}{1-r}\\) pour \\(|r| < 1\\)

**Étape 4:** Calcul
\\(S = \\frac{1}{1-\\frac{2}{3}} = \\frac{1}{\\frac{1}{3}} = 3\\)

**Réponse:** La somme est 3"""
        ),
      ],
      'Applications financières des suites géométriques': [
Exercise(
  question: """
Mamadou ouvre un compte d'épargne pour financer un futur projet.  
Il dépose initialement \\(\\\$\\,2500\\) le  \\(1^{er}\\) janvier 2020.  
Le compte porte un taux d'intérêt composé de \\(1{,}8\\%\\) par an.  

a) Calculer, à l'unité près, le montant total des intérêts gagnés sur le dépôt initial de \\(\\\$\\,2500\\) au bout de 8 ans si Mamadou laisse ce montant sur le compte sans effectuer d'autres opérations.

b) En plus du dépôt initial, Mamadou verse \\(\\\$\\,1000\\) sur le même compte chaque année, le 1\\textsuperscript{er} janvier, du \\(1^{er}\\)  janvier 2021 au \\(1^{er}\\)  janvier 2028 inclus.  
Calculer le montant total disponible sur le compte au 31 décembre 2028.  
(Présuppositions : intérêts composés annuellement ; un dépôt effectué le \\(1^{er}\\)  janvier d'une année gagne les intérêts pour cette année.)
""",
  solution: """
**Données :** \\(P_0 = 2500,\\quad r = 0{,}018.\\)

**(a) Intérêts sur le dépôt initial après 8 ans**

La valeur future du dépôt initial après \\(8\\) ans est :
\\[A = P_0(1+r)^8 = 2500(1{,}018)^8.\\]
Le montant des **intérêts gagnés** est :
\\[I = A - P_0 = 2500\\big((1{,}018)^8 - 1\\big).\\]

Calcul numérique :
\\[A \\approx 2500 \\times 1{,}153406 = 2883{,}52\\]
\\[I \\approx 2883{,}52 - 2500 = 383{,}52\\]
Arrondi à l'unité : **\\(I \\approx \\\$\\,384\\)**.  
(La valeur future arrondie : \\(A \\approx \\\$\\,2884\\).)

---

**(b) Montant disponible au 31/12/2028 avec dépôts annuels (déposés au début d'année)**

- L'apport initial \\(2500\\) fait le 1/1/2020 croît jusqu'au 31/12/2028 : il a accumulé **9** années d'intérêts (2020→2028 inclus), donc facteur \\((1+r)^9\\).
- Les dépôts annuels de \\(1000\\) sont faits le 1/1 de chaque année 2021,...,2028. Le dépôt fait le 1/1/2021 croît pendant 8 ans jusqu'au 31/12/2028, celui du 1/1/2028 croît pendant 1 an.

On peut écrire le total final :
\\[S = 2500(1+r)^9 + \\sum_{j=1}^{8} 1000(1+r)^j,\\]
où \\(j\\) est le nombre d'années pendant lesquelles un dépôt croît (pour 2028 on a \\(j=1\\), pour 2021 on a \\(j=8\\)).

La somme géométrique se calcule par :
\\[\\sum_{j=1}^{8} (1+r)^j = (1+r)\\frac{(1+r)^8 - 1}{(1+r)-1} = \\frac{(1+r)\\big((1+r)^8 - 1\\big)}{r}.\\]

Donc numériquement (avec \\(r=0{,}018\\)) :
- Valeur du dépôt initial :
\\[2500(1{,}018)^9 \\approx 2500 \\times 1{,}174167 = 2935{,}42\\]
- Valeur des dépôts annuels :
\\[1000 \\sum_{j=1}^{8} (1{,}018)^j\\approx 1000 \\times 8{,}675964 = 8675{,}96\\]
(on peut obtenir ce nombre soit en sommant terme à terme soit avec la formule géométrique).

Total au 31/12/2028 :
\\[S \\approx 2935{,}42 + 8675{,}96 = 11611{,}38.\\]

Arrondi à l'unité : **\\(\\\$\\,11\\;611\\)** (montant disponible approximatif).

---

**Remarques pédagogiques :**
- On a supposé que les dépôts début d'année rapportent l'intérêt de l'année entière. Si les dépôts avaient été faits **en fin d'année**, les puissances seraient décalées (annuités ordinaires).
- L'utilisation d'une calculatrice financière ou d'un tableur simplifie ces calculs (formule VA/VC ou fonctions d'annuité).
"""
),
Exercise(
  
  question: """
On place \\(\\\$\\, 5000\\) sur un compte qui rapporte \\(3\\%\\) par an (intérêts composés annuellement).  
On retire \\(\\\$\\,2000\\) à la fin de chaque année pendant 3 ans.  
a) Calculez la valeur du compte immédiatement après le \\(3^{e}\\)  retrait (après 3 ans).  
b) Donnez la formule générale pour la valeur après \\(n\\) retraits.
""",
  solution: """
**Données :** \\(P_0=5000,\\; r=0{,}03,\\; R=2000,\\; n=3.\\)

Chaque année : on applique d'abord l'intérêt, puis on retire \\(R\\) (retrait en fin d'année).  
Valeur après 1 an :
\\[P_1 = P_0(1+r) - R.\\]
Après 2 ans :
\\[P_2 = (P_0(1+r)-R)(1+r) - R = P_0(1+r)^2 - R(1+r) - R.\\]
En itérant, la valeur après \\(n\\) ans est :
\\[P_n = P_0(1+r)^n - R\\sum_{k=0}^{n-1}(1+r)^k.\\]
La somme géométrique vaut :
\\[\\sum_{k=0}^{n-1}(1+r)^k = \\frac{(1+r)^n - 1}{(1+r)-1} = \\frac{(1+r)^n - 1}{r}.\\]
Donc formule fermée :
\\[P_n = P_0(1+r)^n - R\\frac{(1+r)^n - 1}{r}.\\]

Pour \\(n=3\\) :
\\[P_3 = 5000(1{,}03)^3 - 2000\\frac{(1{,}03)^3 - 1}{0{,}03}.\\]
Calcul numérique (approximé) :  
\\( (1{,}03)^3 \\approx 1{,}092727 \\).  
\\[P_3 \\approx 5000\\times1{,}092727 - 2000\\times\\frac{0{,}092727}{0{,}03}\\approx 5463{,}64 - 2000\\times3{,}0909 \\approx 5463{,}64 - 6181{,}82 \\approx -718{,}18.\\]

Ici la valeur devient négative → le compte est à découvert après le 3\\textsuperscript{e} retrait (les retraits sont trop importants pour être couverts par les intérêts et le capital initial).
"""
),

Exercise(
  question: """
Une machine coûte \\(\\\$\\,20\\;000\\) et se déprécie à un taux constant de \\(12\\%\\) par an (dépréciation composée).  
1) Calculez sa valeur au bout de 5 ans.  
2) Calculez la perte totale de valeur sur ces 5 ans (arrondir à l'unité).
""",
  solution: """
**Données :** \\(V_0=20000,\\; d=0{,}12.\\)

Valeur après 5 ans :
\\[V_5 = V_0(1-d)^5 = 20000(0{,}88)^5.\\]

Calcul numérique :
\\[(0{,}88)^5 \\approx 0{,}52773 \\quad\\Rightarrow\\quad V_5 \\approx 20000\\times0{,}52773 = 10554{,}6.\\]
Arrondi : **\\(\\\$\\,10\\;555\\)**.

Perte totale : \\(20000 - 10554{,}6 \\approx 9445{,}4\\) → **\\(\\\$\\,9\\;445\\)** (à l'unité).
"""
),
Exercise(
  question: """
Vous placez 3000 FCFA sur un compte avec un taux d’intérêt composé de 4 % par an, capitalisé quotidiennement pendant deux ans.
Calculez le montant des intérêts gagnés après ces deux ans""",
solution: """
**Données :**  
\\(P = 3000\\;\\text{FCFA},\\quad r = 0{,}04\\;\\text{(taux annuel)},\\quad n = 365\\;\\text{(capitalisations/an)},\\quad t = 2\\;\\text{ans}.\\)

Montant après 2 ans :
\\[A = P\\left(1 + \\frac{r}{n}\\right)^{n t}= 3000\\left(1 + \\frac{0{,}04}{365}\\right)^{365\\times2}.\\]

Calcul numérique :
\\[\\frac{0{,}04}{365} \\approx 0{,}0001096,\\quad 365\\times2 = 730.\\]

\\[\\left(1 + 0{,}0001096\\right)^{730} \\approx 1{,}083.\\]

\\[A \\approx 3000\\times 1{,}083 = 3249.\\]

Intérêts gagnés :
\\[A - P \\approx 3249 - 3000 = \\mathbf{249\\;FCFA}.\\]
"""
),

      ],
'Lois des exposants et logarithmes': [
        Exercise(
          question: "Simplifiez : \\(\\log_2(8x) - \\log_2(2x) + \\log_2(4)\\)",
          solution: """**Étape 1:** Utiliser la propriété \\(\\log(a) - \\log(b) = \\log(\\frac{a}{b})\\)
\\(\\log_2(8x) - \\log_2(2x) = \\log_2(\\frac{8x}{2x}) = \\log_2(4)\\)

**Étape 2:** Additionner les logarithmes
\\(\\log_2(4) + \\log_2(4) = \\log_2(4 \\times 4) = \\log_2(16)\\)

**Étape 3:** Simplifier
\\(\\log_2(16) = \\log_2(2^4) = 4\\)

**Réponse:** 4"""
        ),
 Exercise(
question: "Résolvez : \\(3^{2x-1} = 27\\)",
solution: """**Étape 1:** Exprimer 27 en base 3
\\(27 = 3^3\\)

**Étape 2:** Réécrire l'équation
\\(3^{2x-1} = 3^3\\)

**Étape 3:** Égaliser les exposants
\\(2x - 1 = 3\\)

**Étape 4:** Résoudre
\\(2x = 4\\)
\\(x = 2\\)

**Vérification:** \\(3^{2 \\times 2-1} = 3^3 = 27\\) ✓

**Réponse:** x = 2"""
        ),
Exercise(
  question: "Résolvez : \\( 5^{x+1} = 125 \\).",
  solution: """
**Étape 1:** Réécrire 125 en base 5  
\\[ 125 = 5^3 \\]

**Étape 2:** Égaliser les exposants  
\\[ x + 1 = 3 \\]

**Étape 3:** Résoudre  
\\[ x = 2 \\]

**Réponse:** \\( x = 2 \\)
"""
),
Exercise(
question: "Calculez : \\(\\ln(e^3) + \\ln(1) - \\ln(e^2)\\)",
solution: """**Étape 1:** Utiliser les propriétés des logarithmes naturels
- \\(\\ln(e^a) = a\\)
- \\(\\ln(1) = 0\\)

**Étape 2:** Simplifier terme par terme
- \\(\\ln(e^3) = 3\\)
- \\(\\ln(1) = 0\\)
- \\(\\ln(e^2) = 2\\)

**Étape 3:** Effectuer le calcul
\\(3 + 0 - 2 = 1\\)

**Réponse:** 1"""
        ),
Exercise(
question: "Résolvez : \\(\\log(x + 2) + \\log(x - 1) = \\log(8)\\)",
solution: """**Étape 1:** Utiliser la propriété \\(\\log(a) + \\log(b) = \\log(ab)\\)
\\(\\log((x + 2)(x - 1)) = \\log(8)\\)

**Étape 2:** Éliminer les logarithmes
\\((x + 2)(x - 1) = 8\\)

**Étape 3:** Développer
\\(x^2 + x - 2 = 8\\)
\\(x^2 + x - 10 = 0\\)

**Étape 4:** Résoudre l'équation quadratique
\\(\\Delta = 1 + 40 = 41\\)
\\(x = \\frac{-1 \\pm \\sqrt{41}}{2}\\)

**Étape 5:** Vérifier les conditions de définition
\\(x + 2 > 0\\) et \\(x - 1 > 0\\), donc \\(x > 1\\)
Seule la solution \\(x = \\frac{-1 + \\sqrt{41}}{2} \\approx 2.7\\) est valide

**Réponse:** \\(x = \\frac{-1 + \\sqrt{41}}{2}\\)"""
        ),
Exercise(
question: "Simplifiez : \\((2^3)^2 \\times 2^{-4} \\div 2^2\\)",
solution: """**Étape 1:** Simplifier \\((2^3)^2\\)
\\((2^3)^2 = 2^{3 \\times 2} = 2^6\\)

**Étape 2:** Réécrire l'expression
\\(2^6 \\times 2^{-4} \\div 2^2\\)

**Étape 3:** Utiliser les lois des exposants
- Multiplication : \\(a^m \\times a^n = a^{m+n}\\)
- Division : \\(a^m \\div a^n = a^{m-n}\\)

**Étape 4:** Calcul
\\(2^6 \\times 2^{-4} \\div 2^2 = 2^{6+(-4)-2} = 2^{6-4-2} = 2^0 = 1\\)

**Réponse:** 1"""
        ),
Exercise(
question: "Résolvez l'équation : \\(2^{x+1} + 2^{x-1} = 10\\)",
solution: """**Étape 1:** Factoriser
\\(2^{x+1} + 2^{x-1} = 2 \\cdot 2^x + \\frac{2^x}{2} = 2^x(2 + \\frac{1}{2}) = 2^x \\times \\frac{5}{2}\\)

**Étape 2:** Réécrire l'équation
\\(2^x \\times \\frac{5}{2} = 10\\)
\\(2^x = 4\\)
\\(2^x = 2^2\\)

**Étape 3:** Résoudre
\\(x = 2\\)

**Vérification:** \\(2^3 + 2^1 = 8 + 2 = 10\\) ✓

**Réponse:** x = 2"""
),

Exercise(
  question: """
Résolvez l'équation et exprimez votre réponse sous la forme :
\\[6^{x-1} = 2^{3x+1}, \\quad x = \\frac{\\ln A}{\\ln B}\\]
""",
  solution: """
**Solution :**  
\\[\\begin{aligned}6^{x-1} &= 2^{3x+1} \\\\\\ln 6^{x-1} &= \\ln 2^{3x+1} \\\\(x-1)\\ln 6 &= (3x+1)\\ln 2 \\\\x\\ln 6 - \\ln 6 &= 3x\\ln 2 + \\ln 2 \\\\x(\\ln 6 - 3\\ln 2) &= \\ln 6 + \\ln 2 \\\\x &= \\frac{\\ln 6 + \\ln 2}{\\ln 6 - 3\\ln 2}\\end{aligned}\\]
"""
),

Exercise(
  question: """
Écrivez en un seul logarithme l'expression :
\\[2\\log a + \\log b - c\\]
""",
  solution: """
**Solution :**  
\\[\\begin{aligned}2\\log a + \\log b - c &= \\log a^2 + \\log b - c \\\\&= \\log (a^2 b) - c\\end{aligned}\\]
"""
),

Exercise(
  question: """
Résolvez l'équation :
\\[\\left(\\frac{1}{3}\\right)^x = 9^{x+1}\\]
""",
  solution: """
**Solution :**  
\\[\\begin{aligned}3^{-x} &= (3^2)^{x+1} \\\\3^{-x} &= 3^{2x+2} \\\\-x &= 2x+2 \\\\-3x &= 2 \\\\x &= -\\frac{2}{3}\\end{aligned}\\]
"""
),
      ],
'Développement binomial': [
  Exercise(
question: "Utilisez le triangle de Pascal pour calculer \\((a + b)^5\\)",
solution: """**Étape 1:** Triangle de Pascal jusqu'à la ligne 5
Ligne 0: 1
Ligne 1: 1 1
Ligne 2: 1 2 1
Ligne 3: 1 3 3 1
Ligne 4: 1 4 6 4 1
Ligne 5: 1 5 10 10 5 1

**Étape 2:** Utiliser les coefficients de la ligne 5
\\((a + b)^5 = 1 \\times a^5 + 5 \\times a^4b + 10 \\times a^3b^2 + 10 \\times a^2b^3 + 5 \\times ab^4 + 1 \\times b^5\\)

**Réponse:** \\(a^5 + 5a^4b + 10a^3b^2 + 10a^2b^3 + 5ab^4 + b^5\\)"""
        ),
Exercise(
question: "Développez \\((x + 2)^4\\) en utilisant le binôme de Newton",
solution: """**Étape 1:** Rappel de la formule
\\((a + b)^n = \\sum_{k=0}^n \\binom{n}{k} \\times a^{n-k} \\times b^k\\)

**Étape 2:** Identifier a = x, b = 2, n = 4
\\((x + 2)^4 = \\sum_{k=0}^4 \\binom{4}{k} \\times x^{4-k} \\times 2^k\\)

**Étape 3:** Calculer chaque terme
- k=0: \\(\\binom{4}{0} \\times x^4 \\times 2^0 = 1 \\times x^4 \\times 1 = x^4\\)
- k=1: \\(\\binom{4}{1} \\times x^3 \\times 2^1 = 4 \\times x^3 \\times 2 = 8x^3\\)
- k=2: \\(\\binom{4}{2} \\times x^2 \\times 2^2 = 6 \\times x^2 \\times 4 = 24x^2\\)
- k=3: \\(\\binom{4}{3} \\times x^1 \\times 2^3 = 4 \\times x \\times 8 = 32x\\)
- k=4: \\(\\binom{4}{4} \\times x^0 \\times 2^4 = 1 \\times 1 \\times 16 = 16\\)

**Réponse:** \\(x^4 + 8x^3 + 24x^2 + 32x + 16\\)"""
        ),
Exercise(
  question: "Développez \\((x - 3)^3\\) en utilisant le binôme de Newton.",
  solution: """
**Étape 1:** Utiliser la formule générale  
\\[ (a + b)^3 = a^3 + 3a^2b + 3ab^2 + b^3 \\]

**Étape 2:** Remplacer a=x, b=-3  
\\[ x^3 + 3x^2(-3) + 3x(-3)^2 + (-3)^3 \\]  
\\[ x^3 - 9x^2 + 27x - 27 \\]

**Réponse:** \\( x^3 - 9x^2 + 27x - 27 \\)
"""
),
Exercise(
 question: "Trouvez le coefficient de \\(x^5\\) dans le développement de \\((2x - 1)^8\\)",
solution: """**Étape 1:** Utiliser la formule générale
Terme général: \\(\\binom{8}{k} \\times (2x)^{8-k} \\times (-1)^k\\)

**Étape 2:** Déterminer la puissance de x
\\((2x)^{8-k} = 2^{8-k} \\times x^{8-k}\\)
Pour avoir \\(x^5\\): \\(8 - k = 5\\), donc \\(k = 3\\)

**Étape 3:** Calculer le terme correspondant
\\(\\binom{8}{3} \\times 2^{8-3} \\times (-1)^3 \\times x^5\\)
\\(= \\binom{8}{3} \\times 2^5 \\times (-1) \\times x^5\\)
\\(= 56 \\times 32 \\times (-1) \\times x^5\\)
\\(= -1792x^5\\)

**Réponse:** Le coefficient de \\(x^5\\) est -1792"""
        ),
Exercise(
  question: "Trouvez le coefficient de \\(x^2\\) dans le développement de \\((1 + 2x)^5\\).",
  solution: """
**Étape 1:** Terme général  
\\[ T_k = \\binom{5}{k}(1)^{5-k}(2x)^k \\]

**Étape 2:** Identifier k  
Pour \\(x^2\\) → k = 2

**Étape 3:** Calculer  
\\[ \\binom{5}{2}(2x)^2 = 10 \\times 4x^2 = 40x^2 \\]

**Réponse:** Le coefficient de \\(x^2\\) est 40
"""
),
Exercise(
  question: """
a) Écrire le terme contenant \\(x^4\\) dans le développement de \\((3x - 2)^4\\).

b) En déduire le terme contenant \\(x^6\\) dans le développement de \\((2x - 5)^2 (3x - 2)^4\\).
""",
  solution: """
**Solution a :**

Développement avec le binôme de Newton :  
\\[(3x - 2)^4 = \\sum_{k=0}^4 \\binom{4}{k} (3x)^k (-2)^{4-k}\\]

Pour le terme en \\(x^4\\), on prend \\(k=4\\) :  
\\[T_{x^4} = \\binom{4}{4}(3x)^4(-2)^0 = 1 \\cdot 81x^4 = 81x^4\\]

✅ **Réponse a :** terme en \\(x^4\\) = \\(81x^4\\)

---

**Solution b :**

Développement de \\((2x - 5)^2\\) :  
\\[(2x - 5)^2 = 4x^2 - 20x + 25\\]

On multiplie par le développement de \\((3x - 2)^4\\) et on ne garde que les termes en \\(x^6\\).  
Le terme en \\(x^6\\) vient du produit :

- **Terme en \\(x^2\\)** de \\((2x-5)^2\\) avec le terme en \\(x^4\\) de \\((3x-2)^4\\).

\\[T_{x^6} = (4x^2) \\times (81x^4) = 324x^6\\]

✅ **Réponse b :** terme en \\(x^6\\) = \\(324x^6\\)
"""
),
Exercise(
question: "Développez les 3 premiers termes de \\((1 + x)^{10}\\)",
solution: """**Étape 1:** Utiliser la formule du binôme
\\((1 + x)^{10} = \\sum_{k=0}^{10} \\binom{10}{k} \\times 1^{10-k} \\times x^k = \\sum_{k=0}^{10} \\binom{10}{k} \\times x^k\\)

**Étape 2:** Calculer les 3 premiers termes
- k=0: \\(\\binom{10}{0} \\times x^0 = 1 \\times 1 = 1\\)
- k=1: \\(\\binom{10}{1} \\times x^1 = 10 \\times x = 10x\\)
- k=2: \\(\\binom{10}{2} \\times x^2 = 45 \\times x^2 = 45x^2\\)

**Étape 3:** Calcul de \\(\\binom{10}{2}\\)
\\(\\binom{10}{2} = \\frac{10!}{2! \\times 8!} = \\frac{10 \\times 9}{2 \\times 1} = 45\\)

**Réponse:** \\(1 + 10x + 45x^2 + ...\\)"""
        ),

      ],
'Preuves mathématiques': [
  Exercise(
    question: """
1) Montrez que : \\( (2n - 1)^2 + (2n + 1)^2 = 8n^2 + 2 \\).

2) En utilisant le résultat précédent, calculez la somme \\( (1)^2 + (3)^2 + (5)^2 + (7)^2 \\) sans refaire tous les développements.
""",
    solution: """
**Solution 1 :**

**Étape 1 : Développer chaque terme**  
\\[(2n - 1)^2 = 4n^2 - 4n + 1, \quad (2n + 1)^2 = 4n^2 + 4n + 1\\]

**Étape 2 : Additionner les deux termes**  
\\[(4n^2 - 4n + 1) + (4n^2 + 4n + 1) = 8n^2 + 2\\]

✅ **Résultat démontré.**

**Solution 2 :**

On remarque que les termes sont de la forme \\((2n-1)^2 + (2n+1)^2\\) pour n=1,2.  
En appliquant la formule \\(8n^2+2\\) :  
- Pour n=1 : \\(8(1)^2+2=10\\)  
- Pour n=2 : \\(8(2)^2+2=34\\)

**Somme totale :**  
\\[10 + 34 = 44\\]
"""
  ),

  Exercise(
    question: """
1) Démontrez que : \\( (n + 1)^2 - (n - 1)^2 = 4n \\).

2) Utilisez ce résultat pour calculer rapidement \\( 51^2 - 49^2 \\).
""",
    solution: """
**Solution 1 :**

\\[(n + 1)^2 = n^2 + 2n + 1, \quad (n - 1)^2 = n^2 - 2n + 1\\]

Soustraction :  
\\[(n^2 + 2n + 1) - (n^2 - 2n + 1) = 4n\\]

✅ **Résultat démontré.**

**Solution 2 :**

On prend n=50 dans la formule :  
\\[(50+1)^2 - (50-1)^2 = 4(50) = 200\\]

**Réponse :**  
\\[51^2 - 49^2 = 200\\]
"""
  ),

  Exercise(
    question: """
1) Prouvez que : \\( (a + b)^2 - (a - b)^2 = 4ab \\).

2) Appliquez ce résultat pour calculer \\( 105^2 - 95^2 \\) de tête.
""",
    solution: """
**Solution 1 :**

Développement :  
\\[(a+b)^2 = a^2+2ab+b^2, \quad (a-b)^2 = a^2-2ab+b^2\\]

Soustraction :  
\\[(a^2+2ab+b^2)-(a^2-2ab+b^2)=4ab\\]

✅ **Résultat démontré.**

**Solution 2 :**

Ici \\(a=100, b=5\\) :  
\\[(100+5)^2 - (100-5)^2 = 4(100)(5)=2000\\]

**Réponse :**  
\\[105^2 - 95^2 = 2000\\]
"""
  ),
]

    },
'Thème 2: Fonctions': {
'Notion de fonction': [
  Exercise(
    question: "Déterminer si la relation \\(y^2 = x\\) définit y comme une fonction de x.",
    solution: """
**Étape 1 – Test de verticalité**  
Pour x=4, y²=4 ⇒ y=±2  
Il y a deux valeurs de y pour un seul x.

**Conclusion :**  
Cette relation **n'est pas** une fonction car elle ne satisfait pas le test de la droite verticale.
"""
  ),

  Exercise(
    question: "Donner le domaine de définition de \\(f(x)=\\sqrt{x-3}\\).",
    solution: """
**Étape 1 – Condition de définition**  
\\[x-3 \\ge 0 \\Rightarrow x \\ge 3\\]

**Réponse :**  
\\[D_f = [3, +\\infty[\\]
"""
  ),

  Exercise(
    question: "Compléter le tableau de valeurs pour \\(f(x)=x^2+1\\) avec x ∈ {-2,-1,0,1,2}.",
    solution: """
**Calculs :**  
- f(-2)=(-2)²+1=5  
- f(-1)=(-1)²+1=2  
- f(0)=0²+1=1  
- f(1)=1²+1=2  
- f(2)=2²+1=5  """
  ),

  Exercise(
    question: "Déterminer l'image de x = -1 par \\(f(x)=2x-3\\).",
    solution: """
**Calcul :**  
\\[f(-1)=2(-1)-3=-2-3=-5\\]

**Réponse :**  
\\[f(-1)=-5\\]
"""
  ),

  Exercise(
    question: "Déterminer les antécédents de 5 pour \\(f(x)=x+2\\).",
    solution: """
**Équation :**  
\\[x+2=5 \\Rightarrow x=3\\]

**Réponse :**  
L'unique antécédent de 5 est x=3.
"""
  ),
  
  Exercise(
    question: "Donner une représentation graphique possible pour une fonction définie sur [-2,2] avec f(0)=0, croissante sur [-2,2] et telle que f(2)=4.",
    solution: """
**Raisonnement :**  
Une fonction simple qui satisfait ces conditions est \\(f(x)=x^2\\) restreinte à [0,2].  
Mais pour qu'elle soit croissante sur [-2,2], il faut qu'elle ne redescende pas ⇒ f(x)=x+2 est un exemple.

**Réponse :**  
Une droite \\(y=x+2\\) sur [-2,2] vérifie les conditions.
"""
  ),
  Exercise(
    question: "Déterminer le domaine de définition de \\(f(x) = \\frac{2x+3}{x-1}\\).",
    solution: """
**Étape 1 – Identifier les restrictions**  
Le dénominateur ne doit pas être nul :  
\\[x-1 \\neq 0 \\Rightarrow x \\neq 1\\]

**Réponse :**  
\\[D_f = \\mathbb{R} \\setminus \\{1\\}\\]
"""
  ),

  Exercise(
    question: "Déterminer l'image de la fonction \\(f(x)=x^2-4\\) pour x ∈ ℝ.",
    solution: """
**Étape 1 – Analyser la fonction**  
f(x)=x²-4 est une parabole ayant un minimum en x=0.  

**Étape 2 – Valeur minimale**  
\\[f(0)=0^2-4=-4\\]

**Réponse :**  
\\[\\text{Image}(f) = [-4,+\\infty[\\]
"""
  ),

  Exercise(
    question: "Tracer (mentalement) le graphe de \\(f(x)=|x-2|\\) et décrire ses propriétés.",
    solution: """
**Étape 1 – Définition par morceaux**  
\\[f(x)=\\begin{cases}2-x, & x<2 \\\\x-2, & x \\geq 2\\end{cases}\\]

**Étape 2 – Représentation graphique**  
C'est une V avec un sommet en (2,0), décroissante pour x<2 et croissante pour x>2.

**Réponse :**  
Graphe en V, symétrique par rapport à x=2, minimum en (2,0)
"""
  ),


],
  
'Fonctions composées et réciproques': [
Exercise(
question: "Soit \\( f(x) = 3x + 2 \\) et \\( g(x) = x^2 \\). Calculez \\( (f \\circ g)(x) \\).",
solution: """
**Étape 1:** Définir la fonction composée
\\[ (f \\circ g)(x) = f(g(x)) = f(x^2) \\]

**Étape 2:** Calculer
\\[ f(x^2) = 3x^2 + 2 \\]

**Réponse:** \\( (f \\circ g)(x) = 3x^2 + 2 \\)
""",
        ),
 Exercise(
question: "Soit \\(f(x) = \\sqrt{x-1}\\) et \\(g(x) = x^2 + 1\\). Trouvez le domaine de \\((f \\circ g)(x)\\).",
solution: """**Étape 1:** Calculer \\((f \\circ g)(x)\\)
\\((f \\circ g)(x) = f(g(x)) = f(x^2 + 1) = \\sqrt{(x^2 + 1) - 1} = \\sqrt{x^2} = |x|\\)

**Étape 2:** Déterminer le domaine
Pour que \\(f(g(x))\\) soit définie, il faut :
\\(g(x) \\geq 1\\) (car f nécessite \\(x \\geq 1\\))
\\(x^2 + 1 \\geq 1\\)
\\(x^2 \\geq 0\\)

Cette condition est vraie pour tout \\(x \\in \\mathbb{R}\\)

**Réponse:** Le domaine de \\((f \\circ g)(x)\\) est \\(\\mathbb{R}\\)"""
),
Exercise(
  question: "Déterminez la fonction réciproque de \\( f(x) = 2x + 5 \\). Vérifiez que \\( f^{-1}(f(x)) = x \\).",
  solution: """
**Étape 1 – Écriture de la fonction sous forme \\( y = f(x) \\)**  
\\[y = 2x + 5\\]

**Étape 2 – Échanger x et y**  
\\[x = 2y + 5\\]

**Étape 3 – Isoler y**  
\\[ x - 5 = 2y \\quad \\Rightarrow \\quad y = \\frac{x - 5}{2}\\]

Donc, la fonction réciproque est  
\\[f^{-1}(x) = \\frac{x - 5}{2}\\]

**Étape 4 – Vérification**  
\\[ f^{-1}(f(x)) = f^{-1}(2x+5) = \\frac{(2x+5)-5}{2} = \\frac{2x}{2} = x\\]

✅ Vérification correcte.
""",
),

Exercise(
  question: "Soit \\( g(x) = \\frac{3x - 1}{2} \\). Trouvez la fonction réciproque \\( g^{-1}(x) \\) et vérifiez que \\( g(g^{-1}(x)) = x \\).",
  solution: """
**Étape 1 – Écriture de la fonction sous forme \\( y = g(x) \\)**  
\\[y = \\frac{3x - 1}{2}\\]

**Étape 2 – Échanger x et y**  
\\[x = \\frac{3y - 1}{2}\\]

**Étape 3 – Isoler y**  
Multiplier par 2 :  
\\[2x = 3y - 1 \\quad \\Rightarrow \\quad 3y = 2x + 1 \\quad \\Rightarrow \\quad y = \\frac{2x + 1}{3}\\]

Donc,  
\\[g^{-1}(x) = \\frac{2x + 1}{3}\\]

**Étape 4 – Vérification**  
\\[g(g^{-1}(x)) = \\frac{3\\left(\\frac{2x+1}{3}\\right) - 1}{2} = \\frac{2x+1-1}{2} = \\frac{2x}{2} = x\\]

✅ Vérification correcte.
""",
),
],
'Fonctions linéaires': [
    Exercise(
    question: "Trouvez la pente et l'ordonnée à l'origine de la droite passant par les points  A(2, 3)  et B(4, 7) .",
    solution: """
**Étape 1:** Calculer la pente \\( m \\)
\\[ m = \\frac{7 - 3}{4 - 2} = \\frac{4}{2} = 2 \\]

**Étape 2:** Utiliser la formule point-pente
\\[ y - y_1 = m(x - x_1) \\]
\\[ y - 3 = 2(x - 2) \\]
\\[ y = 2x - 4 + 3 \\]
\\[ y = 2x - 1 \\]

**Réponse:** pente est 2 et l'ordonnée à l'origine est -1."""
        ),  

  Exercise(
    question: "Trouver l'équation de la droite passant par les points A(1,2) et B(4,8).",
    solution: """
**Étape 1 – Calcul de la pente m**  
\\[m = \\frac{8-2}{4-1} = \\frac{6}{3}=2\\]

**Étape 2 – Équation point-pente**  
\\[y-2=2(x-1) \\Rightarrow y=2x\\]

**Réponse :**  
\\[y=2x\\]
"""
  ),

  Exercise(
    question: "Déterminer l'équation de la droite parallèle à \\(y=3x-5\\) passant par le point P(2,4).",
    solution: """
**Étape 1 – Slope de la droite donnée**  
\\[m=3\\]

**Étape 2 – Équation point-pente**  
\\[y-4=3(x-2) \\Rightarrow y=3x-2\\]

**Réponse :**  
\\[y=3x-2\\]
"""
  ),

  Exercise(
    question: "Trouver l'équation de la droite perpendiculaire à \\(y=-\\frac{1}{2}x+1\\) passant par (0,0).",
    solution: """
**Étape 1 – Pente de la droite donnée**  
\\[m=-\\frac{1}{2}\\]

**Étape 2 – Pente de la perpendiculaire**  
\\[m_\\perp = -\\frac{1}{m} = 2\\]

**Étape 3 – Équation point-pente**  
\\[y-0=2(x-0) \\Rightarrow y=2x\\]

**Réponse :**  
\\[y=2x\\]
"""
  ),

  Exercise(
    question: "Déterminer si les droites \\(y=2x+3\\) et \\(y=2x-5\\) sont parallèles, perpendiculaires ou ni l'un ni l'autre.",
    solution: """
**Étape 1 – Comparer les pentes**  
- Première droite : m₁=2  
- Deuxième droite : m₂=2

**Étape 2 – Conclusion**  
Comme m₁=m₂ ⇒ droites parallèles.

**Réponse :**  
Droites parallèles
"""
  ),

  Exercise(
    question: "Déterminer le point d'intersection de \\(y=2x+1\\) et \\(y=-x+7\\).",
    solution: """
**Étape 1 – Résoudre le système**  
\\[2x+1=-x+7 \\Rightarrow 3x=6 \\Rightarrow x=2\\]

**Étape 2 – Trouver y**  
\\[y=2(2)+1=5\\]

**Réponse :**  
Intersection en (2,5)
"""
  ),    
      ],

     
"Fonctions quadratiques":[
Exercise(
  question: "Trouvez les racines de l'équation quadratique \\( x^2 - 5x + 6 = 0 \\).",
  solution: """
**Étape 1 :** Factoriser :
\\[x^2 - 5x + 6 = (x - 2)(x - 3)\\]

**Étape 2 :** Résoudre :
\\[x - 2 = 0 \\quad \\text{ou} \\quad x - 3 = 0\\]
\\[x = 2 \\quad \\text{ou} \\quad x = 3\\]

**Réponse :** Les racines sont \\( x = 2 \\) et \\( x = 3 \\).
""",
),

Exercise(
  question: "Déterminez le sommet de la parabole définie par \\( f(x) = -2x^2 + 8x - 3 \\).",
  solution: """
**Étape 1 :** Utiliser la formule du sommet \\( x = -\\frac{b}{2a} \\) :
\\[a = -2, \\quad b = 8, \\quad x = -\\frac{8}{2(-2)} = 2\\]

**Étape 2 :** Calculer \\( f(2) \\) :
\\[f(2) = -2(2)^2 + 8(2) - 3 = -8 + 16 - 3 = 5\\]

**Réponse :** Le sommet est \\( (2, 5) \\).
""",
),

Exercise(
  question: "Résolvez \\( x^2 + 4x + 7 = 0 \\) en utilisant la formule quadratique.",
  solution: """
**Étape 1 :** Identifier \\( a, b, c \\) :
\\[a=1, \\quad b=4, \\quad c=7\\]

**Étape 2 :** Discriminant :
\\[\\Delta = b^2 - 4ac = 16 - 28 = -12\\]

**Étape 3 :** Racines :
\\[x = \\frac{-4 \\pm \\sqrt{-12}}{2} = -2 \\pm i\\sqrt{3}\\]

**Réponse :** \\(x = -2 + i\\sqrt{3}\\) et \\(x = -2 - i\\sqrt{3}\\).
""",
),

Exercise(
  question: "Une fonction quadratique \\(f(x)=ax^2+bx+c\\) passe par \\((0,3), (1,6), (2,13)\\). Trouvez \\(f(x)\\).",
  solution: """
**Étape 1 :** Utiliser les points :
\\[f(0)=3 \\Rightarrow c=3, \\quad f(1)=6 \\Rightarrow a+b+3=6 \\Rightarrow a+b=3, \\quad f(2)=13 \\Rightarrow 4a+2b+3=13 \\Rightarrow 4a+2b=10\\]

**Étape 2 :** Résolution :
\\[b=3-a, \\quad 4a+2(3-a)=10 \\Rightarrow 4a+6-2a=10 \\Rightarrow 2a=4 \\Rightarrow a=2\\]
\\[b=3-2=1\\]

**Réponse :** \\(f(x)=2x^2+x+3\\).
""",
),
Exercise(
    question: "Soit la fonction \\( f(x) = -3x^2 + 12x + 5 \\).\n\n"
        "a) Déterminez les coordonnées du sommet.\n\n"
        "b) Précisez si c'est un maximum ou un minimum.\n\n"
        "c) Trouvez la valeur extrême.",
    solution: """
**a) Coordonnées du sommet :**  
\\[ h = -\\frac{b}{2a} = -\\frac{12}{2(-3)} = 2 \\]  
\\[ k = f(2) = -3(2)^2 + 12(2) + 5 = 17 \\]  
Sommet : \\( (2, 17) \\)

**b) Nature du sommet :**  
\\( a = -3 < 0 \\Rightarrow \\) Maximum

**c) Valeur maximale :**  
\\( f(2) = 17 \\)

**Réponse finale :**  
- Sommet : \\( (2, 17) \\)  
- Nature : Maximum  
- Valeur : 17
""",
  ),
],
'Fonctions  rationnelles': [
Exercise(
  question: "Soit \\(f(x)=\\frac{2x+3}{x-1}\\).\n"
  " Déterminez le domaine, asymptotes, intercepts et limites.",
  solution: """
**(a) Domaine :** \\(x\\neq 1\\Rightarrow \\mathcal{D}=\\mathbb{R}\\setminus\\{1\\}\\).

**(b) Asymptotes :**
- verticale : \\(x=1\\)
- horizontale : \\(y=2\\) (division : \\(f(x)=2+\\frac{5}{x-1}\\))

**(c) Intercepts :**
\\[f(0)=\\frac{3}{-1}=-3 \\Rightarrow (0,-3), \\quad 2x+3=0 \\Rightarrow x=-\\frac{3}{2} \\Rightarrow (-\\frac{3}{2},0)\\]

**(d) Limites :**
\\[\\lim_{x\\to\\pm\\infty} f(x)=2\\]

Près de \\(x=1\\), \\(f(x)\\to \\pm\\infty\\).
""",
),

Exercise(
  question: "Trouver une fonction rationnelle \\(f(x)=\\frac{ax+b}{cx+d}\\) avec asymptote verticale \\(x=2\\), horizontale \\(y=3\\) et passant par \\((0,1)\\).",
  solution: """
**Étape 1 :** Conditions :
\\[d=-2c, \\quad a=3c \\Rightarrow f(x)=\\frac{3x+\\beta}{x-2}\\]

**Étape 2 :** Point \\((0,1)\\) :
\\[f(0)=\\frac{\\beta}{-2}=1 \\Rightarrow \\beta=-2\\]

**Réponse :**
\\[f(x)=\\frac{3x-2}{x-2}\\]
""",
),

Exercise(
  question: "Résoudre \\(\\frac{3x+1}{2x-5}=4\\) et vérifier le domaine.",
  solution: """
**Domaine :** \\(x\\neq 2.5\\).

**Résolution :**
\\[3x+1=8x-20 \\Rightarrow -5x+21=0 \\Rightarrow x=\\frac{21}{5}=4.2\\]

**Vérification :** \\(4.2\\neq 2.5\\) ✓
""",
),

Exercise(
  question: "Décomposer \\(f(x)=\\frac{4x+7}{2x+3}\\) sous \\(f(x)=A+\\frac{B}{2x+3}\\).",
  solution: """
Comparer numérateurs :
\\[2A=4 \\Rightarrow A=2, \\quad 3A+B=7 \\Rightarrow B=1\\]

**Réponse :**
\\[f(x)=2+\\frac{1}{2x+3}, \\quad y=2 \\text{ est asymptote horizontale.}\\]

Asymptote verticale en \\(x=-\\frac{3}{2}\\).
""",
),

Exercise(
  question: "Trouver \\(f^{-1}(x)\\) pour \\(f(x)=\\frac{5x-1}{2x+3}\\) et commenter les asymptotes.",
  solution: """
**Inverse :**
\\[x=\\frac{5y-1}{2y+3} \\Rightarrow y=\\frac{1+3x}{5-2x}\\]

**Domaine :** \\(x\\neq 2.5\\).

**Remarque :** L'asymptote horizontale de \\(f\\) devient une valeur exclue du domaine de \\(f^{-1}\\).
""",
),
Exercise(
    question: "Soit \\(f(x)=\\frac{2x+3}{x-1}\\).\n"
    "Trouvez la fonction réciproque \\(f^{-1}(x)\\) et vérifiez que \\(f(f^{-1}(x))=x\\).",
    solution: """
**Étape 1 – Poser y=f(x)**  
\\[y=\\frac{2x+3}{x-1}\\]

**Étape 2 – Échanger x et y**  
\\[x=\\frac{2y+3}{y-1}\\]

**Étape 3 – Résoudre pour y**  
\\[x(y-1)=2y+3 \\Rightarrow xy - x = 2y+3 \\Rightarrow xy - 2y = x+3 \\Rightarrow y(x-2) = x+3\\]

\\[\\Rightarrow y = f^{-1}(x) = \\frac{x+3}{x-2}\\]

**Étape 4 – Vérification**  
\\[f(f^{-1}(x)) = \\frac{2\\frac{x+3}{x-2}+3}{\\frac{x+3}{x-2}-1} = x\\]

✅ Vérification correcte.
"""
  ),
],
'Fonctions logarithmes': [
Exercise(
question: "À venir.",
  solution: """À venir. """
    ),
],
'Fonctions exponentielles': [
Exercise(
question: "À venir.",
  solution: """À venir. """
    ),
],
'Transformations de fonctions': [
  Exercise(
  question: "La fonction f(x) = \\(x^2\\) subit une translation de 3 unités vers la droite et 2 unités vers le haut. Donnez l'expression de la nouvelle fonction g(x).",
  solution: """**Étape 1:** Rappel des transformations
- Translation horizontale de h unités : \\(f(x-h)\\)
- Translation verticale de k unités : \\(f(x) + k\\)

**Étape 2:** Appliquer la translation horizontale
Translation de 3 vers la droite : \\(f(x-3) = (x-3)^2\\)

**Étape 3:** Appliquer la translation verticale
Translation de 2 vers le haut : \\(g(x) = (x-3)^2 + 2\\)

**Étape 4:** Développer (optionnel)
\\(g(x) = x^2 - 6x + 9 + 2 = x^2 - 6x + 11\\)

**Réponse:** \\(g(x) = (x-3)^2 + 2\\)"""
),

Exercise(
  question: "La fonction f(x) = \\(|x|\\) subit une dilatation verticale de facteur 2 et une compression horizontale de facteur 1/3. Trouvez g(x).",
  solution: """**Étape 1:** Rappel des transformations
- Dilatation verticale de facteur a : \\(a\\times f(x)\\)
- Compression horizontale de facteur 1/b : \\(f(bx)\\)

**Étape 2:** Appliquer la dilatation verticale
Facteur 2 : \\(2\\times f(x) = 2|x|\\)

**Étape 3:** Appliquer la compression horizontale
Facteur 1/3 signifie b = 3 : \\(g(x) = 2|3x|\\)

**Étape 4:** Vérification
- Point (1,1) de f devient (1/3, 2) dans g
- Point (3,3) de f devient (1, 6) dans g

**Réponse:** \\(g(x) = 2|3x|\\)"""
),

Exercise(
  question: "Décrivez les transformations nécessaires pour passer de f(x) = \\(\\sqrt{x}\\) à g(x) = \\(-2\\sqrt{x+4} - 1\\).",
  solution: """**Étape 1:** Analyser \\(g(x) = -2\\sqrt{x+4} - 1\\)
Forme générale : \\(a\\sqrt{x-h} + k\\)

**Étape 2:** Identifier les transformations
- Coefficient -2 : réflexion par rapport à l'axe des x ET dilatation verticale de facteur 2
- \\(x+4\\) : translation de 4 unités vers la gauche
- -1 : translation de 1 unité vers le bas

**Étape 3:** Ordre des transformations
1. Translation horizontale : \\(\\sqrt{x+4}\\)
2. Dilatation verticale : \\(2\\sqrt{x+4}\\)
3. Réflexion verticale : \\(-2\\sqrt{x+4}\\)
4. Translation verticale : \\(-2\\sqrt{x+4} - 1\\)

**Réponse:** Translation 4 à gauche, dilatation verticale ×2, réflexion axe x, translation 1 vers le bas"""
),

Exercise(
  question: "La parabole \\(y = x^2\\) est transformée en \\(y = -(1/2)(x-3)^2 + 5\\). Identifiez toutes les transformations.",
  solution: """**Étape 1:** Comparer avec la forme \\(y = a(x-h)^2 + k\\)
- a = -1/2, h = 3, k = 5

**Étape 2:** Analyser chaque paramètre
- a = -1/2 < 0 : réflexion par rapport à l'axe des x
- |a| = 1/2 < 1 : compression verticale de facteur 1/2
- h = 3 : translation de 3 unités vers la droite
- k = 5 : translation de 5 unités vers le haut

**Étape 3:** Nouveau sommet
Sommet original : (0,0)
Nouveau sommet : (3,5)

**Étape 4:** Résumé complet
Compression verticale ×1/2, réflexion axe x, translation (3,5)

**Réponse:** Compression verticale ×1/2, réflexion par rapport à l'axe des x, translation de 3 à droite et 5 vers le haut"""
),

],
    },
'Thème 3: Géométrie et Trigonométrie': {
      "Distance, milieu, aire, volume dans l\'espace": [
        Exercise(
  question: "Calculez la distance entre les points \\(A(1, 2, 3)\\) et \\(B(4, 5, 6)\\).",
  solution: """
**Étape 1:** Utiliser la formule de distance
\\[ d = \\sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2 + (z_2 - z_1)^2} \\]

**Étape 2:** Calculer
\\[ d = \\sqrt{(4-1)^2 + (5-2)^2 + (6-3)^2} = \\sqrt{9 + 9 + 9} = \\sqrt{27} = 3\\sqrt{3} \\]

**Réponse:** \\( 3\\sqrt{3} \\)
""",
),

Exercise(
  question: "Soient \\(A(1,2,3)\\) et \\(B(4,-1,6)\\). Calculez :\n"
  "(a) la distance \\(AB\\).\n"
  "(b) les coordonnées du milieu du segment \\([AB]\\).",
  solution: """
**(a) Distance AB**

**Étape 1 — Formule**  
Dans l'espace, la distance entre \\(A(x_1,y_1,z_1)\\) et \\(B(x_2,y_2,z_2)\\) est :
\\[ AB = \\sqrt{(x_2-x_1)^2 + (y_2-y_1)^2 + (z_2-z_1)^2} \\]

**Étape 2 — Remplacer les coordonnées**  
\\[ x_2-x_1 = 4-1 = 3,\\quad y_2-y_1 = -1-2 = -3,\\quad z_2-z_1 = 6-3 = 3 \\]

**Étape 3 — Calcul**  
\\[ AB = \\sqrt{3^2 + (-3)^2 + 3^2} = \\sqrt{9 + 9 + 9} = \\sqrt{27} = 3\\sqrt{3} \\]

**Réponse (a) :** \\(AB = 3\\sqrt{3}\\)

---

**(b) Milieu M de [AB]**

**Étape 1 — Formule du milieu**  
Si \\(A(x_1,y_1,z_1)\\) et \\(B(x_2,y_2,z_2)\\), alors
\\[ M\\left(\\frac{x_1+x_2}{2},\\,\\frac{y_1+y_2}{2},\\,\\frac{z_1+z_2}{2}\\right) \\]

**Étape 2 — Calcul des coordonnées**  
\\[ x_M = \\frac{1+4}{2} = \\frac{5}{2},\\quad y_M = \\frac{2+(-1)}{2} = \\frac{1}{2},\\quad z_M = \\frac{3+6}{2} = \\frac{9}{2} \\]

**Réponse (b) :** \\(M\\!\\left(\\tfrac{5}{2},\\,\\tfrac{1}{2},\\,\\tfrac{9}{2}\\right)\\)
""",
),
Exercise(
  question: """
Une pyramide droite a pour base un carré de côté \\(x = 6\\,cm\\) et pour hauteur \\(h = 8\\,cm\\).
1. Calculez l'aire de la base.  
2. Calculez le volume de la pyramide.  
""",
  solution: """
**Solution :**

\\[\\text{Aire de base} = x^2 = 6^2 = 36\\,\\text{cm}^2\\]

\\[V = \\frac{1}{3} \\times \\text{Aire de base} \\times h = \\frac{1}{3} \\times 36 \\times 8 = 96\\,\\text{cm}^3\\]
"""
),

Exercise(
  question: """
Un cône de révolution a un rayon \\(r = 5\\,cm\\) et une hauteur \\(h = 12\\,cm\\).
1. Calculez la génératrice \\(l\\).  
2. Trouvez l'aire totale du cône.  
3. Calculez son volume.  
""",
  solution: """
**Solution :**

\\[l = \\sqrt{r^2 + h^2} = \\sqrt{5^2 + 12^2} = 13\\,\\text{cm}\\]

Aire totale :  
\\[A = \\pi r^2 + \\pi r l = \\pi (5^2) + \\pi (5)(13)= 25\\pi + 65\\pi = 90\\pi\\,\\text{cm}^2\\]

Volume :  
\\[V = \\frac{1}{3} \\pi r^2 h = \\frac{1}{3} \\pi (5^2)(12) = 100\\pi\\,\\text{cm}^3\\]
"""
),

Exercise(
  question: """
Une sphère de rayon \\(r = 7\\,cm\\) est coupée en deux pour former un hémisphère.  
1. Trouvez l'aire de la surface de l’hémisphère (incluant la base circulaire).  
2. Trouvez son volume.  
""",
  solution: """
**Solution :**

Aire de surface :  
\\[A = 2\\pi r^2 + \\pi r^2 = 3\\pi r^2 = 3\\pi (7^2) = 147\\pi\\,\\text{cm}^2\\]

Volume :  
\\[V = \\frac{1}{2} \\times \\frac{4}{3} \\pi r^3 = \\frac{2}{3} \\pi (7^3) = \\frac{686}{3}\\pi\\,\\text{cm}^3\\]
"""
),

Exercise(
  question: """
Dans une pyramide à base carrée, chaque arête de la base mesure 10 cm et l’apothème (génératrice de la face) mesure 13 cm.
1. Trouvez l’aire d’une face triangulaire.  
2. Trouvez l’aire totale de la pyramide.  
""",
  solution: """
**Solution :**

Aire d’une face triangulaire :  
\\[A_{face} = \\frac{1}{2} \\times base \\times apothème = \\frac{1}{2} (10)(13) = 65\\,\\text{cm}^2\\]

Aire totale :  
\\[A = \\text{Aire base} + 4 \\times A_{face} = 10^2 + 4(65) = 100 + 260 = 360\\,\\text{cm}^2\\]
"""
),

Exercise(
  question: """
Dans un cube de côté \\(a = 4\\,cm\\), on considère la diagonale joignant un sommet au sommet opposé.  
1. Calculez la longueur de la diagonale de la base.  
2. Calculez la longueur de la grande diagonale du cube.  
3. Trouvez l’angle entre une arête verticale et cette grande diagonale.  
""",
  solution: """
**Solution :**

Diagonale de la base :  
\\[d_{base} = \\sqrt{a^2 + a^2} = \\sqrt{2a^2} = a\\sqrt{2} = 4\\sqrt{2}\\]

Grande diagonale :  
\\[d = \\sqrt{d_{base}^2 + a^2} = \\sqrt{(4\\sqrt{2})^2 + 4^2}= \\sqrt{32 + 16} = \\sqrt{48} = 4\\sqrt{3}\\]

Angle \\(\\theta\\) entre la diagonale et l’arête verticale :  
\\[\\cos \\theta = \\frac{\\text{hauteur}}{\\text{longueur diagonale}}= \\frac{4}{4\\sqrt{3}} = \\frac{1}{\\sqrt{3}}
\\quad\\Rightarrow\\quad\\theta = \\arccos\\left(\\frac{1}{\\sqrt{3}}\\right)\\]
"""
),
      ],
'Lois des sinus et des cosinus': [
Exercise(
  question: "Dans un triangle \\( ABC \\), \\( AB = 5 \\), \\( AC = 7 \\), et \\( \\angle A = 60^\\circ \\).\n"
  " Calculez \\( BC \\) en utilisant la loi des cosinus.",
  solution: """
**Étape 1 :** Appliquer la loi des cosinus :
\\[BC^2 = AB^2 + AC^2 - 2 \\times AB \\times AC \\times \\cos(\\angle A)\\]
\\[BC^2 = 5^2 + 7^2 - 2 \\times 5 \\times 7 \\times \\cos(60^\\circ)\\]
\\[BC^2 = 25 + 49 - 35 = 39\\]
\\[BC = \\sqrt{39}\\]

**Réponse :** \\( BC = \\sqrt{39} \\)
""",
),

Exercise(
  question: "Calculez l'aire d'un triangle avec \\( a = 6 \\), \\( b = 8 \\), et \\( \\angle C = 30^\\circ \\).",
  solution: """
**Étape 1 :** Utiliser la formule de l'aire :
\\[\\text{Aire} = \\frac{1}{2} \\times a \\times b \\times \\sin(\\angle C)\\]
\\[\\text{Aire} = \\frac{1}{2} \\times 6 \\times 8 \\times \\sin(30^\\circ) = 12\\]

**Réponse :** L'aire est \\( 12 \\)
""",
),

Exercise(
  question: "Résolvez le triangle \\( ABC \\) avec \\( a = 4 \\), \\( b = 6 \\), et \\( \\angle C = 45^\\circ \\).",
  solution: """
**Étape 1 :** Utiliser la loi des cosinus pour trouver \\( c \\) :
\\[c^2 = a^2 + b^2 - 2ab \\cos(\\angle C)\\]
\\[c^2 = 16 + 36 - 2 \\times 4 \\times 6 \\times \\cos(45^\\circ)\\]
\\[c^2 = 52 - 24\\sqrt{2}\\]

**Étape 2 :** Utiliser la loi des sinus pour trouver les autres angles.  

**Réponse :** \\( c = \\sqrt{52 - 24\\sqrt{2}} \\)
""",
),
      ],
'Cercle et équations trigonométriques': [
Exercise(
  question: "Trouvez \\(\\sin(7\\pi/4)\\) et \\(\\cos(7\\pi/4)\\) sans calculatrice",
  solution: """
**Étape 1:** Positionner l'angle sur le cercle  
\\(7\\pi/4 = 2\\pi - \\pi/4\\)  
C'est un angle dans le 4ème quadrant

**Étape 2:** Utiliser l'angle de référence  
Angle de référence : \\(\\pi/4\\)

**Étape 3:** Déterminer les signes  
4ème quadrant : \\(\\sin < 0, \\cos > 0\\)

**Étape 4:** Calcul  
\\(\\sin(7\\pi/4) = -\\sin(\\pi/4) = -\\frac{\\sqrt{2}}{2}\\)  
\\(\\cos(7\\pi/4) = \\cos(\\pi/4) = \\frac{\\sqrt{2}}{2}\\)

**Réponse :** \\(\\sin(7\\pi/4) = -\\frac{\\sqrt{2}}{2},\\; \\cos(7\\pi/4) = \\frac{\\sqrt{2}}{2}\\)
""",
),

Exercise(
  question: "Résolvez \\(\\sin(2x) = \\sqrt{3}/2\\) pour \\(0 \\le x \\le \\pi\\).",
  solution: """
**Étape 1:** Trouver les solutions de base  
\\(\\sin(\\theta) = \\sqrt{3}/2 \\Rightarrow \\theta = \\pi/3 \\text{ ou } 2\\pi/3\\)

**Étape 2:** Résoudre pour \\(2x\\)  
\\(2x = \\pi/3 + 2k\\pi \\text{ ou } 2x = 2\\pi/3 + 2k\\pi\\)

**Étape 3:** Résoudre pour \\(x\\)  
\\(x = \\pi/6 + k\\pi \\text{ ou } x = \\pi/3 + k\\pi\\)

**Étape 4:** Appliquer la contrainte \\(0 \\le x \\le \\pi\\)  
Solutions : \\(x = \\pi/6,\\; x = \\pi/3\\)

**Réponse :** \\(x = \\pi/6 \\) et \\( x = \\pi/3 \\)
""",
),

Exercise(
  question: "Résolvez sur l'intervalle \\([0, 2\\pi]\\) l'équation \\(2\\cos^2x - 3\\cos x + 1 = 0\\).",
  solution: """
**Étape 1 – Poser une substitution**  
Posons \\(X = \\cos x\\). L'équation devient :  
\\[2X^2 - 3X + 1 = 0\\]

**Étape 2 – Résolution de l'équation quadratique**  
Discriminant :  
\\[\\Delta = (-3)^2 - 4(2)(1) = 1\\]

Solutions pour \\(X\\) :  
\\[X = \\frac{3 \\pm 1}{4} \\Rightarrow X_1 = 1,\\quad X_2 = \\frac{1}{2}\\]

**Étape 3 – Résolution trigonométrique**  

1. Pour \\(\\cos x = 1\\) :  
\\(x = 0\\) (dans \\([0,2\\pi]\\))  

2. Pour \\(\\cos x = 1/2\\) :  
\\(x = \\pm \\pi/3 + 2k\\pi\\)  
Dans \\([0,2\\pi]\\) : \\(x = \\pi/3,\\; x = 5\\pi/3\\)

**Réponse finale :**  
\\[\\boxed{x = 0,\\; x = \\frac{\\pi}{3},\\; x = \\frac{5\\pi}{3}}\\]
""",
),

  Exercise(
  question: """
1) Résoudre dans \\([0, 2\\pi]\\) :  
\\[\\cos(2x) = \\frac{1}{2}\\]

2) Résoudre dans \\([0, 4\\pi]\\) :  
\\[\\sin\\left(\\frac{x}{2}\\right) = -\\frac{\\sqrt{3}}{2}\\]

3) Résoudre dans \\([0, 6\\pi]\\) :  
\\[\\tan(3x) = 1\\]
""",
  solution: """
**Solution 1 :**  
Posons \\(2x = \\theta\\).  
On résout \\(\\cos \\theta = \\frac{1}{2}\\) dans \\([0, 4\\pi]\\) car \\(2x \\in [0, 4\\pi]\\).  
\\[\\theta = \\frac{\\pi}{3}, \\frac{5\\pi}{3}, \\frac{7\\pi}{3}, \\frac{11\\pi}{3}\\]

Donc :  
\\[x = \\frac{\\theta}{2} = \\frac{\\pi}{6}, \\frac{5\\pi}{6}, \\frac{7\\pi}{6}, \\frac{11\\pi}{6}\\]

---

**Solution 2 :**  
Posons \\(\\frac{x}{2} = \\theta\\).  
Alors \\(\\theta \\in [0, 2\\pi]\\).  
\\[\\sin \\theta = -\\frac{\\sqrt{3}}{2} \\Rightarrow\\theta = \\frac{4\\pi}{3}, \\frac{5\\pi}{3}\\]

Donc :  
\\[x = 2\\theta = \\frac{8\\pi}{3}, \\frac{10\\pi}{3}\\]

---

**Solution 3 :**  
Posons \\(3x = \\theta\\).  
Alors \\(\\theta \\in [0, 18\\pi]\\).  
\\[\\tan \\theta = 1 \\Rightarrow \\theta = \\frac{\\pi}{4} + k\\pi\\quad (k \\in \\mathbb{Z})\\]

On garde les solutions \\(\\theta \\leq 18\\pi\\) :  
\\[\\theta = \\frac{\\pi}{4}, \\frac{5\\pi}{4}, \\frac{9\\pi}{4}, \\ldots, \\frac{69\\pi}{4}\\]

Donc :  
\\[x = \\frac{\\theta}{3} = \\frac{\\pi}{12}, \\frac{5\\pi}{12}, \\frac{9\\pi}{12}, \\ldots, \\frac{69\\pi}{12}\\]

(soit 18 solutions au total sur \\([0, 6\\pi]\\)).
"""
),

      ],
'Fonctions trigonométriques': [
Exercise(
  question: "Pour la fonction \\(y = 2\\cos\\big(3(x - \\frac{\\pi}{4})\\big) - 1\\), déterminez l'amplitude, la période, le décalage horizontal et la translation verticale.",
  solution: """
**Étape 1 – Amplitude**  
L'amplitude est la valeur absolue de \\(a\\) :  
\\[ A = |a| = |2| = 2 \\]

**Étape 2 – Période**  
Pour \\(y = a\\cos(bx)\\), la période est :  
\\[ P = \\frac{2\\pi}{b} = \\frac{2\\pi}{3} \\]

**Étape 3 – Décalage horizontal (phase shift)**  
\\[ x \\to x - \\frac{\\pi}{4} \\quad \\Rightarrow \\quad \\text{décalage vers la droite de } \\frac{\\pi}{4} \\]

**Étape 4 – Translation verticale**  
\\[ d = -1 \\quad \\Rightarrow \\quad \\text{décalage vers le bas de 1 unité} \\]

**Réponse finale :**  
- **Amplitude :** 2  
- **Période :** \\(\\frac{2\\pi}{3}\\)  
- **Décalage horizontal :** \\(\\frac{\\pi}{4}\\) à droite  
- **Décalage vertical :** -1
""",
),

Exercise(
  question: "Déterminez l'équation de la fonction sinus dont le graphe passe par l'origine, atteint un maximum de 3 en \\(x = \\frac{\\pi}{4}\\) et un minimum de -3 en \\(x = \\frac{3\\pi}{4}\\).",
  solution: """
**Étape 1 – Amplitude**  
Le maximum est 3 et le minimum -3 →  
\\[ A = \\frac{3 - (-3)}{2} = 3 \\]

**Étape 2 – Période**  
La distance entre le max et le min est \\( \\frac{3\\pi}{4} - \\frac{\\pi}{4} = \\frac{\\pi}{2} \\).  
Cela correspond à une demi-période pour une fonction sinus →  
\\[ P = 2 \\times \\frac{\\pi}{2} = \\pi \\]

**Étape 3 – Calcul de \\(b\\)**  
\\[ b = \\frac{2\\pi}{P} = \\frac{2\\pi}{\\pi} = 2 \\]

**Étape 4 – Pas de décalage horizontal**  
La courbe passe par l'origine → \\(c = 0\\)

**Équation finale :**  
\\[ y = 3\\sin(2x) \\]
""",
),

Exercise(
  question: "La fonction \\(f(x) = \\sin(x)\\) devient \\(g(x) = 3\\sin(2x - \\pi/3) + 1\\). Analysez amplitude, période, déphasage et translation verticale.",
  solution: """
**Étape 1:** Réécrire sous forme standard  
\\[ g(x) = 3\\sin\\big(2(x - \\pi/6)\\big) + 1 \\]

**Étape 2 – Amplitude**  
\\[ A = |3| = 3 \\]

**Étape 3 – Période**  
\\[ P = \\frac{2\\pi}{|2|} = \\pi \\]

**Étape 4 – Déphasage**  
Déphasage = \\(\\pi/6\\) vers la droite

**Étape 5 – Translation verticale**  
Translation verticale = +1 vers le haut

**Réponse :** Amplitude = 3, Période = \\(\\pi\\), Déphasage = \\(\\pi/6\\) à droite, Translation verticale = +1
""",
),

      ],
    },
 'Thème 4: Statistiques et Probabilités': {
'Échantillonnage': [
Exercise(
  question: "Dans une population de 500 élèves, on veut étudier la répartition du temps de révision. Décrivez comment constituer un échantillon de 50 élèves en utilisant la méthode d'échantillonnage aléatoire simple.",
  solution: """
**Solution :**  
- Attribuer un numéro de 1 à 500 à chaque élève.  
- Utiliser un générateur de nombres aléatoires pour tirer 50 numéros distincts.  
- Les élèves correspondant aux numéros tirés constituent l'échantillon.  
Ainsi, chaque élève a la même probabilité \\(\\frac{50}{500} = 0,1 \\) d’être choisi.
"""
),

Exercise(
  question: "Une usine produit 10 000 pièces par jour. Proposez une méthode d'échantillonnage systématique pour contrôler la qualité de 200 pièces.",
  solution: """
**Solution :**  
- Calculer l’intervalle de sondage :  
\\[k = \\frac{10000}{200} = 50\\]
- Choisir un premier numéro au hasard entre 1 et 50, par exemple \\( 17 \\).  
- Prendre ensuite chaque \\( 50^{\\text{e}} \\) pièce : \\( 17, 67, 117, \\dots \\).  
On obtient ainsi un échantillon systématique de 200 pièces régulièrement réparties.
"""
),

Exercise(
  question: "Un lycée veut connaître la proportion de filles qui pratiquent un sport. Expliquez comment mettre en place un échantillonnage stratifié si l’établissement compte 600 filles et 400 garçons.",
  solution: """
**Solution :**  
- Décider d’un échantillon total de 100 élèves.  
- Calculer la part des filles :  
\\[\\text{Part des filles} = \\frac{600}{1000} = 0,6\\]
donc sélectionner \\( 0,6 \\times 100 = 60 \\) filles et \\( 40 \\) garçons.  
- Tirer les 60 filles et 40 garçons **au hasard dans chaque strate**.  
Cette méthode garantit que la proportion filles/garçons de l’échantillon reflète celle de la population.
"""
),
],
'Moyenne, médiane, mode': [
Exercise(
  question: "Calculez la moyenne de la série statistique suivante : 5, 7, 8, 10, 12.",
  solution: """
**Étape 1 :** Calculer la somme des valeurs  
\\[5 + 7 + 8 + 10 + 12 = 42\\]

**Étape 2 :** Diviser par le nombre de valeurs  
\\[\\text{Moyenne} = \\frac{42}{5} = 8.4\\]

**Réponse :** \\(8.4\\)
""",
),

Exercise(
  question: "Les notes d'un test sont : 12, 15, 18, 12, 20, 16, 14, 12, 17, 19. Calculez la moyenne, la médiane et le mode.",
  solution: """
**Étape 1 :** Ordonner les données  
\\[12, 12, 12, 14, 15, 16, 17, 18, 19, 20\\]

**Étape 2 :** Calculer la moyenne  
\\[\\bar{x} = \\frac{12+12+12+14+15+16+17+18+19+20}{10} = \\frac{155}{10} = 15.5\\]

**Étape 3 :** Trouver la médiane  
n = 10 (pair) → médiane entre la 5e et la 6e valeur  
\\[\\text{Médiane} = \\frac{15+16}{2} = 15.5\\]

**Étape 4 :** Identifier le mode  
Mode = 12 (apparaît 3 fois)

**Réponse :**  
Moyenne = 15.5, Médiane = 15.5, Mode = 12
""",
),

Exercise(
  question: "Calculez la moyenne et l'écart-type de la série : 3, 5, 7, 9, 11.",
  solution: """
**Étape 1 :** Moyenne  
\\[\\bar{x} = \\frac{3+5+7+9+11}{5} = 7\\]

**Étape 2 :** Écart-type  
\\[\\sigma = \\sqrt{\\frac{(3-7)^2 + (5-7)^2 + (7-7)^2 + (9-7)^2 + (11-7)^2}{5}} = \\sqrt{8} = 2\\sqrt{2}\\]

**Réponse :**  
Moyenne = 7, Écart-type = \\(2\\sqrt{2}\\)
""",
),
],
"Diagramme en boîte":[
Exercise(
  question: "On a relevé les notes (sur 20) suivantes :\n\n"
   "8, 10, 10, 12, 12, 13, 14, 15, 15, 18. \n\n"
"Construisez le diagramme en boîte et interprétez la symétrie de la distribution.",
  solution: """**Étape 1 – Trier les données**  
Les données sont déjà triées :  
\\[8, 10, 10, 12, 12, 13, 14, 15, 15, 18\\]

**Étape 2 – Calculer les statistiques**  
- Médiane : \\(Q_2 = \\frac{12 + 13}{2} = 12.5\\)  
- Quartile inférieur : \\(Q_1 = 10\\)  
- Quartile supérieur : \\(Q_3 = 15\\)  
- Minimum : 8, Maximum : 18  
- Écart interquartile : \\(IQR = Q_3 - Q_1 = 15 - 10 = 5\\)

**Étape 3 – Représenter le diagramme**  
- Boîte de 10 à 15  
- Médiane à 12.5  
- Moustaches de 8 à 18  

**Interprétation :**  
La boîte est presque centrée et les moustaches sont de longueur comparable.  
➡ La distribution est **à peu près symétrique**, elle pourrait être issue d’une loi normale.
"""
),

Exercise(
  question: "Deux classes ont obtenu les notes suivantes (sur 10) à un test : \n\n"
"Classe A : 2, 3, 4, 5, 5, 6, 6, 7, 8 \n\n"
"Classe B : 4, 4, 5, 5, 5, 6, 6, 7, 9. \n\n"
"Représentez les diagrammes en boîte et comparez les deux distributions.",
  solution: """**Étape 1 – Calculer les statistiques pour chaque classe**

**Classe A :**  
- Min = 2, Max = 8  
- Médiane \\(Q_2 = 5\\)  
- Quartile inférieur \\(Q_1 = 4\\)  
- Quartile supérieur \\(Q_3 = 6.5\\)  
- IQR = 2.5  

**Classe B :**  
- Min = 4, Max = 9  
- Médiane \\(Q_2 = 5\\)  
- Quartile inférieur \\(Q_1 = 4.5\\)  
- Quartile supérieur \\(Q_3 = 6.5\\)  
- IQR = 2  

**Étape 2 – Diagrammes en boîte**  
- Boîte de la classe A : de 4 à 6.5 avec moustaches de 2 à 8  
- Boîte de la classe B : de 4.5 à 6.5 avec moustaches de 4 à 9  

**Comparaison :**  
- Les deux classes ont la même médiane (5).  
- Classe A a une plus grande étendue (6) que Classe B (5).  
- Classe B a des notes plus regroupées autour de la médiane donc **distribution plus homogène**.
"""
),

Exercise(
  question: "Les résultats d\'un groupe sont : 12, 13, 14, 15, 16, 17, 30. \n\n"
"Construisez le diagramme en boîte, détectez les valeurs aberrantes et commentez la normalité de la distribution." ,
  solution: """**Étape 1 – Trier et repérer les valeurs**  
Les données triées :  
\\[12, 13, 14, 15, 16, 17, 30\\]

**Étape 2 – Calculer les statistiques**  
- Médiane \\(Q_2 = 15\\)  
- Quartile inférieur \\(Q_1 = 13.5\\)  
- Quartile supérieur \\(Q_3 = 16.5\\)  
- IQR = 3  

**Étape 3 – Détection des valeurs aberrantes**  
Seuils :  
\\[\\text{Bas} = Q_1 - 1.5 \\times IQR = 13.5 - 4.5 = 9 \\]
\\[\\text{Haut} = Q_3 + 1.5 \\times IQR = 16.5 + 4.5 = 21\\]

30 > 21 → **valeur aberrante** (outlier)  

**Étape 4 – Conclusion**  
Diagramme en boîte :  
- Boîte de 13.5 à 16.5  
- Médiane à 15  
- Moustaches limitées à 12 et 17  
- 30 représenté par une croix (valeur aberrante)

 La distribution est **asymétrique** (queue à droite), donc peu probable qu’elle soit normalement distribuée.
"""
),
 ],

'Statistique à deux variables': [
Exercise(
  question: "Calculez le coefficient de corrélation de Pearson pour : X = 1,3,5,7,9 et Y = 2,4,7,8,10.",
  solution: """
**Étape 1 :** Calculatrice  \\(r= 0.99\\)

**Réponse :** Corrélation très forte positive (\\(r = 0.99\\))
""",
),

Exercise(
  question: "Interprétez un coefficient de corrélation \\(r = -0.75\\) entre la température et les ventes de chocolat chaud.",
  solution: """
**Étape 1 :** Valeur absolue  
\\[|r| = 0.75 > 0.7 \\Rightarrow \\text{corrélation forte}\\]

**Étape 2 :** Signe  
\\[r < 0 \\Rightarrow \\text{corrélation négative}\\]

**Interprétation :**  
- Corrélation négative forte  
- Quand la température augmente, les ventes diminuent
""",
),

Exercise(
  question: "Données : x = [1,2,3,4,5], y = [2,3,5,4,6]. Trouvez la droite de régression \\(y=ax+b\\), interprétez \\(a\\) et \\(b\\), puis estimez : (a) \\(y\\) pour \\(x=6\\), (b) \\(x\\) pour \\(y=7\\).",
  solution: """
**1) Résultat calculatrice :**  
\\[y = 0.9x + 1.3\\]

**2) Interprétation :**  
- \\(a = 0.9\\) : y augmente de 0.9 par unité de x  
- \\(b = 1.3\\) : valeur estimée de y si x=0  

**3) Estimations :**  
(a) Pour \\(x=6\\) :  
\\[y = 0.9 \\times 6 + 1.3 = 6.7\\]

(b) Pour \\(y=7\\) :  
\\[0.9x = 7 - 1.3 \\Rightarrow x = \\frac{5.7}{0.9} = 6.33\\]
""",
),

Exercise(
  question: "Données : x = [0,1,2,3], y = [8,6,5,3].\n\n"
  " Trouvez la droite de régression et estimez :\n\n"
  "(a) y pour x=4,\n\n"
  "(b) x pour y=0.",
  solution: """
**1) Résultat calculatrice :**  
\\[y = -1.6x + 7.9\\]

**2) Interprétation :**  
- \\(a = -1.6\\) : relation décroissante  
- \\(b = 7.9\\) : estimation de y pour x=0  

**3) Estimations :**  
(a) Pour x=4 :  
\\[y = -1.6 \\times 4 + 7.9 = 1.5\\]

(b) Pour y=0 :  
\\[x = \\frac{7.9}{1.6} = 4.94\\]
""",
),

Exercise(
  question: "Données : x = [10,12,14,16,18], y = [25,28,31,33,36].\n\n"
  "Trouvez la droite de régression, interprétez-la et estimez : (a) y pour x=15, (b) x pour y=30.",
  solution: """
**1) Résultat calculatrice :**  
\\[y = 1.35x + 11.7\\]

**2) Interprétation :**  
- \\(a = 1.35\\) : y augmente de 1.35 par unité de x  
- \\(b = 11.7\\) : valeur théorique de y si x=0  

**3) Estimations :**  
(a) Pour x=15 :  
\\[y = 1.35 \\times 15 + 11.7 = 31.95\\]

(b) Pour y=30 :  
\\[x = \\frac{30-11.7}{1.35} = 13.56\\]
""",
),

],
"Probabilités simples":[
  Exercise(
    question: "On lance une pièce équilibrée 100 fois. Définissez : essai, résultat, univers des possibles U, événement. Ensuite, si l'on observe 57 faces, comparez la fréquence relative expérimentale à la probabilité théorique d'obtenir face.",
    solution: """
**Définitions :**
- **Essai :** un lancer unique de la pièce.  
- **Résultat :** issue d'un essai (ici « face » ou « pile »).  
- **Univers des possibles U :** \\(U = \\{\\text{Face},\\ \\text{Pile}\\}\\).  
- **Événement \\(A\\) (exemple) :** obtenir « Face », donc \\(A=\\{\\text{Face}\\}\\).

**Probabilité théorique :** pour une pièce équilibrée,  
\\[P(A)=\\frac{n(A)}{n(U)}=\\frac{1}{2}=0.5.\\]

**Fréquence relative expérimentale :** sur 100 lancers on observe 57 faces, donc  
\\[\\text{fréquence} = \\frac{57}{100} = 0.57.\\]

**Comparaison :** la fréquence expérimentale (0.57) est proche mais pas égale à la probabilité théorique (0.50). Avec un nombre fini d'essais, on s'attend à des écarts ; en répétant l'expérience plusieurs fois (ou via simulation), la fréquence moyenne tendra vers 0.5 (loi des grands nombres).
"""
  ),

  Exercise(
    question: "On lance un dé équilibré à 6 faces une seule fois.\n\n"
    "(a) Représentez l'univers U. \n\n"
    " (b) Soit l'événement B = \"obtenir un nombre pair\". Calculez P(B).\n\n"
    "(c) Si on lance le dé 60 fois, quel est le nombre espéré d'occurrences de B ?",
    solution: """
**(a) Univers des possibles :**  
\\[U = \\{1,2,3,4,5,6\\}\\]

**(b) Événement \\(B\\) = nombre pair = \\{2,4,6\\}.**  
Nombre d'éléments : \\(n(B)=3\\), \\(n(U)=6\\).  
Probabilité théorique :  
\\[P(B)=\\frac{n(B)}{n(U)}=\\frac{3}{6}=\\frac{1}{2}=0.5.\\]

**(c) Nombre espéré d'occurrences sur 60 lancers :**  
Si \\(p=P(B)=0.5\\) et \\(N=60\\), le nombre espéré est  
\\[E = N \\times p = 60 \\times 0.5 = 30.\\]

**Remarque pratique :** en expérience réelle on mesurera la fréquence relative \\(f=\\frac{\\text{occurrences}}{60}\\) ; elle devrait être proche de 0.5 et le nombre observé proche de 30.
"""
  ),

  Exercise(
    question: "On tire au hasard une carte d'un jeu standard de 52 cartes.\n\n"
    "(a) Écrivez l'univers U sous forme de liste ou tableau simplifié.\n\n"
    "(b) Soit C = \"tirer un cœur\". Calculez \\(P(C)\\) et \\(P(C')\\) (événement complémentaire).\n\n"
    "(c) Expliquez la différence entre probabilité théorique et fréquence expérimentale si on répète le tirage 520 fois (avec remise).",
    solution: """ 
**(a) Représentation simple de \\(U\\)** (liste abrégée) :  
\\[U = \\{A\\heartsuit,2\\heartsuit,\\dots,K\\heartsuit,\\ A\\diamondsuit,\\dots,K\\spadesuit,\\ A\\clubsuit,\\dots\\}\\]
(on 52 éléments : 4 couleurs × 13 valeurs)

**(b) Événement \\(C\\) = tirage d'un cœur.**  
Nombre de cœurs = 13, donc  
\\[P(C)=\\frac{13}{52}=\\frac{1}{4}=0.25.\\]
Événement complémentaire \\(C'\\) = « ne pas tirer un cœur » :  
\\[P(C')=1-P(C)=0.75.\\]

**(c) Théorique vs expérimental :**  
- **Théorique :** basé sur le modèle (cartes équiprobables), prédit que 25% des tirages seront des cœurs.  
- **Expérimental :** si on répète 520 tirages *avec remise*, la fréquence observée de cœurs sera \\(\\frac{\\text{nb occurrences}}{520}\\). On s'attend à environ \\(520\\times0.25=130\\) cœurs observés. Des fluctuations autour de 130 sont normales ; la répétition ou la simulation monte que la fréquence moyenne converge vers la probabilité théorique.
"""
  ),

  Exercise(
    question: "Exemple d'espérance : dans une classe de 128 élèves, la probabilité d'être absent un jour donné est 0,1. (a) Calculez le nombre espéré d'élèves absents. (b) Interprétez ce résultat. (c) Si on observe effectivement 20 absents un jour, commentez par rapport à l'espérance.",
    solution: """
**(a) Nombre espéré :** si \\(N=128\\) et \\(p=0.1\\), alors  
\\[E = N \\times p = 128 \\times 0.1 = 12.8.\\]

**(b) Interprétation :** l'espérance 12.8 signifie que sur un grand nombre de jours semblables, la moyenne d'élèves absents par jour serait environ 12.8. Ce n'est pas nécessairement un nombre entier attendu chaque jour ; c'est une valeur moyenne.

**(c) Observation réelle :** si on observe 20 absents ce jour-là, c'est supérieur à l'espérance (20 > 12.8). Cela peut être une fluctuation aléatoire, ou indiquer un événement particulier (par ex. épidémie, grève). Pour évaluer la rareté, on comparerait cet écart à l'écart-type (ici on peut approximer la variance binomiale \\(Var = Np(1-p)=128\\times0.1\\times0.9=11.52\\) et \\(\\sigma\\approx\\sqrt{11.52}\\approx3.39\\)).  
La différence normalisée : \\((20-12.8)/3.39\\approx 2.13\\) écarts-types — c'est relativement élevé (événement peu courant), donc on pourrait s'interroger sur une cause non-aléatoire.
"""
  ),
],
"Probabilités  conditionnelles":[
Exercise(
  question: "Un test dépiste une maladie. La prévalence de la maladie dans la population est 2%.\n\n"
  " Le test est positif chez 95% des malades (sensibilité) et négatif chez 90% des personnes saines (spécificité = 90%).\n\n"
  "  Calculer la probabilité qu'une personne soit malade sachant que son test est positif.",
  solution: """
**Données :**
- \\(P(M) = 0{,}02\\) (malade)
- \\(P(\\overline{M}) = 0{,}98\\) (sain)
- \\(P(+\\mid M)=0{,}95\\) (sensibilité)
- \\(P(-\\mid \\overline{M})=0{,}90\\Rightarrow P(+\\mid \\overline{M})=0{,}10\\) (faux positifs)

On cherche \\(P(M\\mid +)\\).

**Étape 1 — Loi des probabilités totales pour P(+) :**
\\[P(+) = P(+\\mid M)P(M) + P(+\\mid \\overline{M})P(\\overline{M})\\]
\\[P(+) = 0{,}95\\times0{,}02 + 0{,}10\\times0{,}98 = 0{,}019 + 0{,}098 = 0{,}117\\]

**Étape 2 — Théorème de Bayes :**
\\[P(M\\mid +) = \\frac{P(+\\mid M)P(M)}{P(+)} = \\frac{0{,}95\\times0{,}02}{0{,}117} = \\frac{0{,}019}{0{,}117}\\]
Calcul numérique :
\\[P(M\\mid +) \\approx 0{,}162393 = 16{,}24\\% \\(\\text{arrondi à }0{,}16)\\]

**Réponse :** \\(P(M\\mid +) \\approx 0{,}162\\) soit environ **16,2%**.

**Remarque :** malgré un test assez sensible, la faible prévalence rend la probabilité post-test relativement faible.
"""
),

Exercise(
  question: "On a deux urnes : Urne A contient 3 boules rouges et 2 boules noires. Urne B contient 1 boule rouge et 4 boules noires.\n\n"
  " On choisit une urne au hasard (probabilité 1/2 chacune) puis on tire une boule au hasard. \n\n"
  " Sachant que la boule tirée est rouge, quelle est la probabilité que l'urne choisie soit A ?",
  solution: """
**Données :**
- \\(P(A)=P(B)=\\tfrac{1}{2}\\).
- \\(P(R\\mid A)=\\dfrac{3}{3+2}=\\dfrac{3}{5}\\).
- \\(P(R\\mid B)=\\dfrac{1}{1+4}=\\dfrac{1}{5}\\).

On cherche \\(P(A\\mid R)\\).

**Étape 1 — Probabilité totale de tirer une rouge :**
\\[P(R) = P(R\\mid A)P(A) + P(R\\mid B)P(B) = \\frac{3}{5}\\cdot\\frac{1}{2} + \\frac{1}{5}\\cdot\\frac{1}{2}\\]
\\[P(R) = \\frac{1}{2}\\left(\\frac{3}{5}+\\frac{1}{5}\\right)=\\frac{1}{2}\\cdot\\frac{4}{5}=\\frac{2}{5}\\]

**Étape 2 — Bayes :**
\\[P(A\\mid R) = \\frac{P(R\\mid A)P(A)}{P(R)} = \\frac{\\frac{3}{5}\\cdot\\frac{1}{2}}{\\frac{2}{5}} = \\frac{\\frac{3}{10}}{\\frac{2}{5}}.\\]
Calcul :
\\[\\frac{3/10}{2/5} = \\frac{3/10}{4/10} = \\frac{3}{4} = 0{,}75.\\]

**Réponse :** \\(P(A\\mid R) = \\tfrac{3}{4} = 75\\%.\\)
"""
),

Exercise(
  question: "Une usine a deux chaînes de production : C1 produit 60% des pièces, C2 produit 40%.\n \n"
   "Les proportions de pièces défectueuses sont respectivement 1% pour C1 et 3% pour C2.\n\n"
   " (a) Quelle est la probabilité qu'une pièce choisie au hasard soit défectueuse ? \n\n"
   "(b) Si une pièce est défectueuse, quelle est la probabilité qu'elle vienne de C2 ?",
  solution: """
**Données :**
- \\(P(C_1)=0{,}60,\\; P(C_2)=0{,}40\\).
- \\(P(D\\mid C_1)=0{,}01,\\; P(D\\mid C_2)=0{,}03\\) (D = défectueuse).

**(a) Probabilité qu'une pièce soit défectueuse (loi des totales) :**
\\[P(D)=P(D\\mid C_1)P(C_1)+P(D\\mid C_2)P(C_2)\\]
\\[P(D)=0{,}01\\times0{,}60 + 0{,}03\\times0{,}40 = 0{,}006 + 0{,}012 = 0{,}018.\\]
Donc \\(P(D)=0{,}018 = 1{,}8\\%\\).

**(b) Probabilité que la pièce défectueuse vienne de C2 (Bayes) :**
\\[P(C_2\\mid D) = \\frac{P(D\\mid C_2)P(C_2)}{P(D)} = \\frac{0{,}03\\times0{,}40}{0{,}018} = \\frac{0{,}012}{0{,}018}\\]
Calcul :
\\[\\frac{0{,}012}{0{,}018} = \\frac{12}{18} = \\frac{2}{3} \\approx 0{,}6667.\\]

**Réponse :** (a) \\(P(D)=0{,}018\\) (1,8%). (b) \\(P(C_2\\mid D)=\\tfrac{2}{3}\\) soit **66,7%**.
"""
),

Exercise(
  question: "On tire successivement deux cartes d'un jeu standard de 52 cartes **sans remise**.\n\n"
  " (a) Quelle est la probabilité que la deuxième carte soit un cœur sachant que la première carte est un cœur ?\n\n"
  " (b) Quelle est la probabilité que la deuxième carte soit un cœur sachant que la première carte est un trèfle ?",
  solution: """
Rappel : un jeu standard contient 13 cœurs, 13 trèfles, et 52 cartes au total.

(a) \\[P(\\text{2ième cœur} \\mid \\text{1ière cœur})\\]

Si la première carte est un cœur, alors il reste \(13-1=12\) cœurs parmi \\(52-1=51\\) cartes.
\\[P(\\text{2ième cœur} \\mid \\text{1ière cœur}) = \\frac{12}{51} = \\frac{4}{17} \\approx 0{,}2353.\\]

(b) \\[P(\\text{2ième cœur} \\mid \\text{1ière trèfle})\\]

Si la première carte est un trèfle, alors le nombre de cœurs restants est toujours 13, et le nombre total de cartes restantes est 51.
\\[P(\\text{2ième cœur} \\mid \\text{1ière trèfle}) = \\frac{13}{51} \\approx 0{,}2549.\\]

**Interprétation :** tirer un cœur en première position réduit légèrement la probabilité d'obtenir un cœur à la deuxième position (sans remise). Si la première carte n'est pas un cœur (ici un trèfle), la probabilité pour la deuxième reste un peu plus grande.
"""
),

],
'Loi binomiale': [
 Exercise(
    question: "Un dé est lancé 3 fois. Calculez la probabilité d'obtenir exactement 2 fois le chiffre 6.",
    solution: """
**Étape 1 :** Utiliser la loi binomiale :  
\\[P(X = 2) = \\binom{3}{2} \\left(\\frac{1}{6}\\right)^2 \\left(\\frac{5}{6}\\right)^1= 3 \\times \\frac{1}{36} \\times \\frac{5}{6}= \\frac{15}{216} = \\frac{5}{72}\\]

**Réponse :** \\( \\frac{5}{72} \\)
"""
  ),

  Exercise(
    question: "Une pièce équilibrée est lancée 10 fois. Calculez la probabilité d'obtenir exactement 6 faces.",
    solution: """
**Étape 1 :** Identifier les paramètres de la loi binomiale :  
\\[n = 10, \\quad p = 0.5, \\quad k = 6\\]

**Étape 2 :** Appliquer la formule :  
\\[P(X = k) = \\binom{n}{k} p^k (1-p)^{n-k}\\]

\\[P(X = 6) = \\binom{10}{6}(0.5)^{6}(0.5)^{4}\\]

**Étape 3 :** Calculer \\( \\binom{10}{6} \\) :  
\\[\\binom{10}{6} = \\frac{10!}{6!\\,4!} = 210\\]

**Étape 4 :** Probabilité finale :  
\\[P(X = 6) = 210 \\times (0.5)^{10} = \\frac{210}{1024} \\approx 0.205\\]

**Réponse :** \\( P(X = 6) \\approx 0.205 \\) (soit 20,5%)
"""
  ),

  Exercise(
    question: "Dans une usine, 15\\% des pièces sont défectueuses.\n\n"
    " On prélève un échantillon de 20 pièces.\n\n"
    " Quelle est la probabilité d'avoir au plus 2 pièces défectueuses ?",
    solution: """
**Étape 1 :** Identifier les paramètres :  
\\[n = 20, \\quad p = 0.15, \\quad q = 0.85\\]

On cherche :  
\\[P(X \\leq 2) = P(X=0) + P(X=1) + P(X=2)\\]

**Étape 2 :** Calculer chaque terme :  

\\[P(X=0) = \\binom{20}{0}(0.15)^0(0.85)^{20} \\approx 0.0388\\]

\\[P(X=1) = \\binom{20}{1}(0.15)^1(0.85)^{19} \\approx 0.1368\\]

\\[P(X=2) = \\binom{20}{2}(0.15)^2(0.85)^{18} \\approx 0.2293\\]

**Étape 3 :** Somme finale :  
\\[P(X \\leq 2) = 0.0388 + 0.1368 + 0.2293 \\approx 0.4049\\]

**Réponse :** \\( P(X \\leq 2) \\approx 0.405 \\) (soit 40,5%)
"""
  ),

  Exercise(
    question: "Une variable aléatoire \\(X\\) suit une loi binomiale \\(B(n,p)\\).\n\n"
    " Calculez \\(E(X)\\) et \\(Var(X)\\) si \\(n=25\\) et \\(p=0.4\\).",
    solution: """
**Étape 1 :** Formules :  
\\[E(X) = np, \\quad Var(X) = np(1-p)\\]

**Étape 2 :** Calculs :  

\\[E(X) = 25 \\times 0.4 = 10\\]

\\[Var(X) = 25 \\times 0.4 \\times 0.6 = 6\\]

\\[\\sigma(X) = \\sqrt{6} \\approx 2.45\\]

**Réponse :** \\( E(X)=10, \\ Var(X)=6, \\ \\sigma(X) \\approx 2.45 \\)
"""
  ),
],
'Loi normale': [
  Exercise(
    question: "X suit une loi normale \\(N(100, 15^{2})\\). Calculez \\(P(85 \\leq X \\leq 115)\\)",
    solution: """
**Étape 1 :** Standardisation :  
\\[Z = \\frac{X - \\mu}{\\sigma} = \\frac{X - 100}{15}\\]

**Étape 2 :** Transformation des bornes :  
\\[P(85 \\leq X \\leq 115) = P\\left(\\frac{85-100}{15} \\leq Z \\leq \\frac{115-100}{15}\\right)= P(-1 \\leq Z \\leq 1)\\]

**Étape 3 :** Utilisation de la table :  
\\[P(-1 \\leq Z \\leq 1) = \\Phi(1) - \\Phi(-1) = 0.8413 - 0.1587 = 0.6826\\]

**Réponse :** \\(P(85 \\leq X \\leq 115) \\approx 0.683\\) (soit 68,3%)
"""
  ),
Exercise(
  question: "X suit une loi normale N(10, 4).\n\n"
  "Calculez P(8 < X < 12)",
    solution: """
**Étape 1 :** Standardiser :  
\\[Z = \\frac{X - \\mu}{\\sigma}\\]

\\[P(8 \\leq X \\leq 12) = P\\left(\\frac{8-10}{2} \\leq Z \\leq \\frac{12-10}{2}\\right) = P(-1 \\leq Z \\leq 1)\\]

**Étape 2 :** Utiliser la table de la loi normale :  
\\[P(-1 \\leq Z \\leq 1) \\approx 0.6826\\]

**Réponse :** \\( P(8 \\leq X \\leq 12) \\approx 0.683 \\)
"""
  ),
  Exercise(
    question: "X suit une loi normale \\(N(50, 12^{2})\\). Calculez \\(P(44 < X < 62)\\).",
    solution: """
**Étape 1 :** Standardiser les valeurs :  
\\[Z = \\frac{X - \\mu}{\\sigma} = \\frac{X - 50}{12}\\]

**Étape 2 :** Transformer les bornes :  
\\[P(44 < X < 62) = P\\left(\\frac{44-50}{12} < Z < \\frac{62-50}{12}\\right)= P(-0.5 < Z < 1)\\]

**Étape 3 :** Utiliser la table de la loi normale :  
\\[P(-0.5 < Z < 1) = \\Phi(1) - \\Phi(-0.5) = 0.8413 - 0.3085 = 0.5328\\]

**Réponse :** \\(P(44 < X < 62) \\approx 0.533\\) (soit 53,3%)
"""
  ),

  Exercise(
    question: "Les notes d'un examen suivent une loi normale \\(N(75, 10^{2})\\). Quel pourcentage d'étudiants ont une note supérieure à 90 ?",
    solution: """
**Étape 1 :** Standardiser :  
\\[Z = \\frac{90 - 75}{10} = 1.5\\]

**Étape 2 :** Probabilité recherchée :  
\\[P(X > 90) = P(Z > 1.5) = 1 - \\Phi(1.5)\\]

**Étape 3 :** Utiliser la table :  
\\[\\Phi(1.5) = 0.9332 \\quad \\Rightarrow \\quad P(Z > 1.5) = 1 - 0.9332 = 0.0668\\]

**Étape 4 :** Conversion en pourcentage :  
\\[0.0668 \\times 100\\% = 6.68\\%\\]

**Réponse :** 6,68 % des étudiants ont une note supérieure à 90.
"""
  ),

  Exercise(
    question: "X suit N(100, 15^{2}). Trouvez la valeur \\(a\\) telle que \\(P(X < a) = 0.95\\).",
    solution: """
**Étape 1 :** Équation de standardisation inverse :  
\\[P(X < a) = P\\left(Z < \\frac{a-100}{15}\\right) = 0.95\\]

**Étape 2 :** Trouver la valeur critique :  
\\[\\Phi(z) = 0.95 \\quad \\Rightarrow \\quad z \\approx 1.645\\]

**Étape 3 :** Résoudre pour \\(a\\) :  
\\[\\frac{a - 100}{15} = 1.645 \\quad \\Rightarrow \\quad a - 100 = 15 \\times 1.645 = 24.675 \\]

\\[a = 100 + 24.675 = 124.675\\]

**Réponse :** \\(a \\approx 124.7\\)
"""
  ),
 ],
    },
    'Thème 5: Analyse mathématique': {
      'Dérivées': [
  Exercise(
    question: "Calculez la dérivée de \\( f(x) = x^3 + 2x^2 - 5x + 1 \\).",
    solution: """
**Étape 1 :** Appliquer les règles de dérivation :  
\\[ f'(x) = 3x^2 + 4x - 5 \\]  

**Réponse :** \\( f'(x) = 3x^2 + 4x - 5 \\)
""",
  ),
  Exercise(
    question: "Calculez la dérivée de \\( f(x) = x^2 \\sin(x) \\)",
    solution: """
**Étape 1:** Identifier la règle à utiliser  
Produit de deux fonctions : \\((uv)' = u'v + uv'\\)

**Étape 2:** Définir u et v  
\\( u(x) = x^2 \\Rightarrow u'(x) = 2x \\)  
\\( v(x) = \\sin(x) \\Rightarrow v'(x) = \\cos(x) \\)

**Étape 3:** Appliquer la formule  
\\[ f'(x) = u'(x)v(x) + u(x)v'(x) \\]  
\\[ f'(x) = 2x\\sin(x) + x^2\\cos(x) \\]

**Réponse:** \\( f'(x) = 2x \\sin(x) + x^2 \\cos(x) \\)
""",
  ),
  Exercise(
    question: "Calculez la dérivée de \\( f(x) = (3x^2 - 1) e^x \\)",
    solution: """
**Étape 1:** Utiliser la règle du produit  
\\((uv)' = u'v + uv'\\)  
\\( u = 3x^2 - 1, u' = 6x \\)  
\\( v = e^x, v' = e^x \\)

**Étape 2:** Appliquer la formule  
\\[ f'(x) = 6x e^x + (3x^2 - 1)e^x \\]  
\\[ f'(x) = e^x(3x^2 + 6x - 1) \\]

**Réponse:** \\( f'(x) = e^x(3x^2 + 6x - 1) \\)
""",
  ),
  Exercise(
  question: """
1) Dériver la fonction \\( f(x) = \\dfrac{2x+3}{x-1} \\).

2) Dériver la fonction \\( g(x) = \\dfrac{x^2+1}{x^2-4} \\).
""",
  solution: """
**Solution 1 :**

Règle du quotient :  
\\[\\left( \\frac{u}{v} \\right)' = \\frac{u'v - uv'}{v^2}\\]

Ici \\(u=2x+3, u'=2, v=x-1, v'=1\\).

Donc :  
\\[f'(x) = \\frac{2(x-1) - (2x+3)(1)}{(x-1)^2}= \\frac{2x-2-2x-3}{(x-1)^2}= \\frac{-5}{(x-1)^2}\\]

---

**Solution 2 :**

Ici \\(u=x^2+1, u'=2x, v=x^2-4, v'=2x\\).

Donc :  
\\[g'(x) = \\frac{(2x)(x^2-4) - (x^2+1)(2x)}{(x^2-4)^2}= \\frac{2x(x^2-4-x^2-1)}{(x^2-4)^2}= \\frac{2x(-5)}{(x^2-4)^2}= \\frac{-10x}{(x^2-4)^2}\\]

✅ **Réponse :**  
\\[f'(x)=\\frac{-5}{(x-1)^2}, \\quad g'(x)=\\frac{-10x}{(x^2-4)^2}\\]
"""
),
Exercise(
  question: """
1) Dérivez la fonction \\( f(x) = \\dfrac{\\ln x}{x} \\), définie sur \\(x>0\\).

2) Dérivez la fonction \\( g(x) = \\dfrac{e^x}{1+x^2} \\), définie sur \\(\\mathbb{R}\\).
""",
  solution: """
**Solution 1 :**

Règle du quotient :  
\\[\\left( \\frac{u}{v} \\right)' = \\frac{u'v - uv'}{v^2}\\]

Ici \\(u=\\ln x, u' = \\frac{1}{x}, v=x, v'=1\\).

Donc :  
\\[f'(x) = \\frac{\\frac{1}{x} \\cdot x - \\ln x \\cdot 1}{x^2}= \\frac{1 - \\ln x}{x^2}\\]

---

**Solution 2 :**

Ici \\(u=e^x, u'=e^x, v=1+x^2, v'=2x\\).

Donc :  
\\[g'(x) = \\frac{e^x(1+x^2) - e^x(2x)}{(1+x^2)^2}= \\frac{e^x[(1+x^2) - 2x]}{(1+x^2)^2}= \\frac{e^x(x^2 - 2x + 1)}{(1+x^2)^2}\\]

Or \\(x^2-2x+1=(x-1)^2\\), donc :  
\\[g'(x) = \\frac{e^x (x-1)^2}{(1+x^2)^2}\\]

✅ **Réponse :**  
\\[f'(x)=\\frac{1 - \\ln x}{x^2}, \\quad g'(x)=\\frac{e^x (x-1)^2}{(1+x^2)^2}\\]
"""
),
],

'Pentes, tangentes et normale': [
  Exercise(
    question: "Trouvez l'équation de la tangente à la courbe \\( y = x^2 \\) au point \\( (2, 4) \\).",
    solution: """
**Étape 1 :** Calculer la dérivée :  
\\[ y' = 2x \\]

**Étape 2 :** Trouver la pente en \\( x = 2 \\) :  
\\[ y'(2) = 4 \\]

**Étape 3 :** Équation de la tangente :  
\\[ y - 4 = 4(x - 2) \\]  
\\[ y = 4x - 4 \\]

**Réponse :** \\( y = 4x - 4 \\)
""",
  ),
  Exercise(
  question: """
1) Soit \\(f(x) = x^2 + 3x - 1\\).  
Déterminer l'équation de la droite tangente à \\(f\\) au point d'abscisse \\(x_0 = 2\\).

2) Soit \\(g(x) = e^x\\).  
Déterminer l'équation de la droite normale à la courbe \\(y=g(x)\\) au point d'abscisse \\(x_0 = 0\\).

3) Soit \\(h(x) = \\ln x\\) (avec \\(x>0\\)).  
Déterminer les équations de la tangente et de la normale à la courbe en \\(x_0 = 1\\).

4) Soit \\(k(x) = \\dfrac{x}{x^2+1}\\).  
Déterminer les équations de la tangente et de la normale à la courbe en \\(x_0 = 1\\).
""",
  solution: """
**Solution 1 :**  
\\[f'(x)=2x+3, \\quad f'(2)=7, \\quad f(2)=2^2+6-1=9\\]

Tangente : \\(y - 9 = 7(x-2)\\)  
\\[\\boxed{y = 7x - 5}\\]

---

**Solution 2 :**  
\\[g'(x)=e^x, \\quad g'(0)=1, \\quad g(0)=1\\]

Tangente : \\(y - 1 = 1(x-0) \\Rightarrow y = x+1\\)

Normale : pente \\(m_n=-1\\), donc \\(y-1=-1(x-0)\\)

\\[\\boxed{y = -x+1}\\]

---

**Solution 3 :**  
\\[h'(x)=\\frac{1}{x}, \\quad h'(1)=1, \\quad h(1)=0\\]

Tangente : \\(y-0=1(x-1) \\Rightarrow y=x-1\\)

Normale : pente \\(m_n=-1\\), donc \\(y-0=-1(x-1)\\)

\\[\\boxed{y=-x+1}\\]

---

**Solution 4 :**  
\\[k(x)=\\frac{x}{x^2+1}, \\quad k'(x)=\\frac{(x^2+1)-2x^2}{(x^2+1)^2}=\\frac{1-x^2}{(x^2+1)^2}\\]

En \\(x=1\\) : \\(k(1)=\\frac{1}{2}, k'(1)=0\\)

Tangente horizontale : \\(y=\\frac{1}{2}\\)

Normale verticale : \\(x=1\\)
"""
),
Exercise(
  question: "On donne \\( y = x + \\dfrac{2}{x} \\)\n\n"
            " (a) Calculer \\( \\dfrac{dy}{dx} \\). \n"
            " (b) Trouver les abscisses des points où la tangente à la courbe est parallèle à la droite \\( y = -x \\). \n"
            " (c) Déterminer l'équation des normales à la courbe aux points trouvés en (b).",
  solution: """
**(a) Dérivation**

\\[y = x + \\frac{2}{x} = x + 2x^{-1}\\]

\\[\\frac{dy}{dx} = 1 - 2x^{-2} = 1 - \\frac{2}{x^2}\\]

**Réponse (a) :** \\( y' = 1 - \\dfrac{2}{x^2} \\).

---

**(b) Tangentes parallèles à \\(y=-x\\)**

La pente de la droite \\(y=-x\\) est \\(m=-1\\). On cherche les abscisses x telles que la pente de la tangente \\(y'\\) vaut \\(-1\\) :

\\[1 - \\frac{2}{x^2} = -1\\]

Résolvons :

\\[1 + 1 = \\frac{2}{x^2} \\quad\\Rightarrow\\quad 2 = \\frac{2}{x^2}\\]

\\[x^2 = 1 \\quad\\Rightarrow\\quad x = \\pm 1.\\]

Calcul des ordonnées correspondantes :

- Pour \\(x=1\\) : \\( y(1) = 1 + \\dfrac{2}{1} = 3.\\)
- Pour \\(x=-1\\) : \\( y(-1) = -1 + \\dfrac{2}{-1} = -1 - 2 = -3.\\)

**Réponse (b) :** abscisses \\(x=1\\) et \\(x=-1\\) (points \\((1,3)\\) et \\((-1,-3)\\)).

---

**(c) Équations des normales**

La pente de la normale est l'opposé de l'inverse de la pente de la tangente : si \\(m_{t}=-1\\) alors \\(m_{n} = -1/m_{t} = -1/(-1)=1\\).

Équation de la normale passant par \\((1,3)\\) (pente 1) :

\\[y-3 = 1\\cdot (x-1) \\quad\\Rightarrow\\quad y = x + 2.\\]

Équation de la normale passant par \\((-1,-3)\\) :

\\[y+3 = 1\\cdot (x+1) \\quad\\Rightarrow\\quad y = x - 2.\\]

**Réponse (c) :** les normales sont \\(y = x + 2\\) et \\(y = x - 2\\).
"""
),

],

'Variations et Extemums': [
  Exercise(
    question: "Déterminer si la fonction \\(g(x)=x^3\\) est croissante ou décroissante sur ℝ.",
    solution: """
**Analyse :**  
La dérivée \\(g'(x)=3x^2\\ge0\\) pour tout x.  
Donc g est croissante sur ℝ.

**Réponse :**  
g est **strictement croissante** sur ℝ.
"""
  ),

  Exercise(
    question: "Déterminez les points critiques de \\( f(x) = x^3 - 3x^2 \\).",
    solution: """
**Étape 1 :** Calculer la dérivée :  
\\[f'(x) = 3x^2 - 6x \\]

**Étape 2 :** Résoudre \\( f'(x) = 0 \\) :  
\\[ 3x^2 - 6x = 0 \\Rightarrow x = 0 \\quad \\text{ou} \\quad x = 2 \\]

**Réponse :** Points critiques : \\( x = 0 \\) et \\( x = 2 \\)
""",
  ),
  
  Exercise(
    question: "Soit \\(f(x)=x^3-3x^2+2\\).\n"
     "Déterminez les points critiques et identifiez les maximums et minimums relatifs.",
    solution: """
**Étape 1 – Calcul de la dérivée première**  
\\[f'(x)=3x^2-6x=3x(x-2)\\]

**Étape 2 – Trouver les points critiques**  
\\[f'(x)=0 \\Rightarrow x=0 \\text{ ou } x=2\\]

**Étape 3 – Test de la dérivée seconde**  
\\[f''(x)=6x-6\\]

- Pour x=0 : f''(0)=-6 < 0 ⇒ maximum relatif  
- Pour x=2 : f''(2)=6 > 0 ⇒ minimum relatif

**Étape 4 – Valeurs correspondantes**  
\\[f(0)=0^3-3*0^2+2=2, \quad f(2)=8-12+2=-2\\]

**Réponse :**  
- Maximum relatif en (0,2)  
- Minimum relatif en (2,-2)
"""
  ),

  Exercise(
    question: "Déterminer les points d’inflexion de \\(f(x)=x^3-3x^2+4\\) et vérifier le changement de concavité.",
    solution: """
**Étape 1 – Calcul des dérivées**  
\\[f'(x)=3x^2-6x, \\quad f''(x)=6x-6\\]

**Étape 2 – Résolution f''(x)=0**  
\\[6x-6=0 \\Rightarrow x=1\\]

**Étape 3 – Vérification du changement de signe de f''**  
- Pour x<1 : f''(0)=-6 < 0 (concave vers le bas)  
- Pour x>1 : f''(2)=6 > 0 (concave vers le haut)

✅ La concavité change ⇒ point d’inflexion en (1, f(1))  
\\[f(1)=1-3+4=2\\]

**Réponse :** Point d’inflexion en (1,2)
"""
  ),

  Exercise(
    question: "Optimisation : Une entreprise vend x produits avec un profit P(x)= -2x^2 + 40x - 100. Déterminer le nombre de produits qui maximise le profit.",
    solution: """
**Étape 1 – Dérivée du profit**  
\\[P'(x)=-4x+40\\]

**Étape 2 – Trouver le maximum**  
\\[P'(x)=0 \\Rightarrow -4x+40=0 \\Rightarrow x=10\\]

**Étape 3 – Vérification avec la dérivée seconde**  
\\[P''(x)=-4<0\\]
⇒ maximum

**Étape 4 – Valeur du profit maximal**  
\\[P(10)=-2*100+400-100=100\\]

**Réponse :** Le profit est maximal pour x=10 produits, profit maximal = 100
"""
  ),

  Exercise(
    question: "Trouver les maximums et minimums relatifs de \\(f(x)=x^4-4x^3+6x^2\\) en utilisant la dérivée seconde.",
    solution: """
**Étape 1 – Dérivée première**  
\\[f'(x)=4x^3-12x^2+12x=4x(x^2-3x+3)\\]

**Étape 2 – Points critiques**  
- x=0  
- Les racines du quadratique x^2-3x+3=0 ⇒ discriminant Δ=9-12=-3 <0  
⇒ pas de solution réelle supplémentaire

**Étape 3 – Dérivée seconde**  
\\[f''(x)=12x^2-24x+12=12(x^2-2x+1)=12(x-1)^2\\]

- Pour x=0 : f''(0)=12>0 ⇒ minimum relatif  
- Remarque : f''(x) ≥0 pour tout x, donc pas de maximum relatif

**Réponse :** Minimum relatif en (0,f(0))=(0,0)
"""
  ),

  
],

'Intégrales et aires': [
  Exercise(
    question: "Calculez l'intégrale \\( \\int_0^2 (3x^2 + 2x - 1) dx \\)",
    solution: """
**Étape 1:** Trouver la primitive  
\\[\\int(3x^2 + 2x - 1) dx = x^3 + x^2 - x + C\\]

**Étape 2:** Appliquer les bornes  
\\[\\int_0^2 (3x^2 + 2x - 1) dx = [x^3 + x^2 - x]_0^2\\]

**Réponse:**  
\\[\\int_0^2 (3x^2 + 2x - 1) dx = 10\\]
"""
  ),

  Exercise(
    question: "Calculez l'aire délimitée par la courbe \\(y = x^2 - 4x + 3\\) et l'axe des x.",
    solution: """
**Étape 1:** Trouver les points d'intersection  
\\[x^2 - 4x + 3 = 0 \\Rightarrow (x - 1)(x - 3)=0 \\Rightarrow x=1, x=3\\]

**Étape 2:** Déterminer le signe de la fonction  
\\[f(x) = x^2 - 4x + 3 = (x - 2)^2 - 1\\]
Minimum en \\(x=2\\), \\(f(2) = -1 < 0\\)  
Donc \\(f(x)<0\\) sur \\([1,3]\\).

**Étape 3:** Calculer l'aire  
\\[A = \\left| \\int_1^3 (x^2 - 4x + 3) dx \\right|= \\left| \\left[ \\frac{x^3}{3} - 2x^2 + 3x \\right]_1^3 \\right|\\]

\\[A = \\left| \\left( 9 - 18 + 9 \\right) - \\left( \\frac{1}{3} - 2 + 3 \\right) \\right|= \\left| 0 - \\frac{4}{3} \\right| = \\frac{4}{3}\\]

**Réponse:** Aire = \\(\\frac{4}{3}\\) unités²
"""
  ),

  Exercise(
    question: "Calculez l'intégrale \\( \\int \\sin(2x) \\cos(2x) dx \\)",
    solution: """
**Étape 1:** Posons \\(u = \\cos(2x)\\), donc \\(du = -2\\sin(2x) dx\\).  

**Étape 2:** Intégrer  
\\[\\int \\sin(2x) \\cos(2x) dx = \\int -\\frac{1}{2} u \\, du = -\\frac{1}{4}u^2 + C\\]

Retour en x :  
\\[= -\\frac{1}{4}\\cos^2(2x) + C\\]

**Réponse:**  
\\[\\int \\sin(2x) \\cos(2x) dx = -\\frac{1}{4}\\cos^2(2x) + C\\]
"""
  ),

  Exercise(
    question: "Trouvez l'aire entre les courbes \\(y = x^2\\) et \\(y = 2x\\) pour \\(0 \\le x \\le 2\\).",
    solution: """
**Étape 1:** Points d'intersection  
\\[x^2 = 2x \\Rightarrow x(x-2)=0 \\Rightarrow x=0, x=2\\]

**Étape 2:** Déterminer la fonction au-dessus  
Pour \\(x=1\\) : \\(y_1=1, y_2=2\\Rightarrow 2x > x^2\\)

**Étape 3:** Aire  
\\[A = \\int_0^2 (2x - x^2) dx = \\left[ x^2 - \\frac{x^3}{3} \\right]_0^2= \\left(4 - \\frac{8}{3}\\right) - 0= \\frac{12-8}{3}=\\frac{4}{3}\\]

**Réponse:** Aire = \\(\\frac{4}{3}\\) unités²
"""
  ),
],

'Cinématique': [
  Exercise(
    question: "Une particule se déplace selon \\(x(t)=2t^3-6t^2+4t\\)\n"
    " Calculez sa vitesse et son accélération à \\(t=2s\\).",
    solution: """
**Étape 1:** Vitesse  
\\[v(t)=\\frac{dx}{dt}=6t^2-12t+4\\]

À \\(t=2\\) :  
\\[v(2)=24-24+4=4\\, m/s\\]

**Étape 2:** Accélération  
\\[a(t)=\\frac{dv}{dt}=12t-12, \\quad a(2)=24-12=12\\, m/s^2\\]

**Réponse:** Vitesse = 4 m/s, Accélération = 12 m/s²
"""
  ),

  Exercise(
    question: "Un projectile est lancé verticalement avec \\(v_0=30 m/s\\). \\(h(t)=30t-5t^2\\).\n"
    " Trouver le temps et la hauteur maximale.",
    solution: """
**Étape 1:** Vitesse  
\\[v(t)=30-10t\\]

Mettre \\(v(t)=0\\) :  
\\[30-10t=0 \\Rightarrow t=3s\\]

**Étape 2:** Hauteur max  
\\[h(3)=30(3)-5(9)=90-45=45m\\]

**Réponse:** Temps = 3s, Hauteur max = 45m
"""
  ),

  Exercise(
    question: "Une voiture accélère selon \\(a(t)=3t\\).\n"
    "Si \\(v(0)=10\\), trouvez la distance parcourue en 4s.",
    solution: """
**Étape 1:** Vitesse  
\\[v(t)=\\int 3t dt=\\frac{3t^2}{2}+C, \\quad v(0)=10 \\Rightarrow C=10\\]
\\[v(t)=\\frac{3t^2}{2}+10\\]

**Étape 2:** Position  
\\[x(t)=\\int v(t) dt=\\frac{t^3}{2}+10t\\]

En \\(t=4\\) :  
\\[x(4)=32+40=72m\\]

**Réponse:** Distance = 72m
"""
  ),

  Exercise(
    question: "Un mobile a \\(a(t)=6t-2\\).\n"
    " Partant du repos, trouvez sa position à \\(t=3s\\).",
    solution: """
**Étape 1:** Vitesse  
\\[v(t)=\\int (6t-2) dt=3t^2-2t, \\quad v(0)=0\\]

**Étape 2:** Position  
\\[s(t)=\\int v(t) dt=t^3 - t^2\\]

À \\(t=3\\) :  
\\[s(3)=27-9=18m\\]

**Réponse:** Position = 18m
"""
  ),
  Exercise(
    question: "Une particule se déplace selon \\(v(t)=4t-2\\) m/s pour \\(0 \\le t \\le 5\\). Déterminez :\n1) le déplacement entre \\(t=0\\) et \\(t=5\\),\n2) la distance totale parcourue sur le même intervalle.",
    solution: """
**Étape 1 – Déplacement**  
\\[s = \\int_0^5 v(t) dt = \\int_0^5 (4t-2) dt= \\left[ 2t^2 - 2t \\right]_0^5= (50-10) - 0 = 40 \\, m\\]

**Étape 2 – Distance totale**  
Cherchons quand \\(v(t)=0\\) :  
\\[4t-2=0 \\Rightarrow t=0.5\\]

Sur \\([0,0.5]\\), \\(v(t)<0\\) donc il faut prendre la valeur absolue :  
\\[D = \\left| \\int_0^{0.5} (4t-2) dt \\right| + \\int_{0.5}^{5} (4t-2) dt\\]

Calcul :  
\\[\\int (4t-2) dt = 2t^2-2t\\]

Partie 1 :  
\\[\\left[2t^2-2t\\right]_0^{0.5} = (0.5-1)-0=-0.5 \\Rightarrow | -0.5 |=0.5\\]

Partie 2 :  
\\[\\left[2t^2-2t\\right]_{0.5}^{5} = 40 - (0.5-1)= 40.5\\]

Distance totale :  
\\[D = 0.5 + 40.5 = 41 \\, m\\]

**Réponse:**  
Déplacement = \\(40\\, m\\) ; Distance totale = \\(41\\, m\\)
"""
  ),

  Exercise(
    question: "Un mobile a pour accélération \\(a(t)=6\\) m/s², avec \\(v(0)=2\\) m/s et \\(s(0)=0\\).\n"
    " Déterminez la fonction \\(s(t)\\) et la distance parcourue entre \\(t=0\\) et \\(t=3\\).",
    solution: """
**Étape 1 – Trouver la vitesse**  
\\[v(t)=\\int a(t) dt = \\int 6 dt = 6t + C\\]

Condition initiale \\(v(0)=2\\) :  
\\[2=0+C \\Rightarrow C=2 \\Rightarrow v(t)=6t+2\\]

**Étape 2 – Trouver le déplacement**  
\\[s(t)=\\int v(t) dt=\\int (6t+2) dt=3t^2+2t+C_1\\]

Avec \\(s(0)=0 \\Rightarrow C_1=0\\), donc  
\\[s(t)=3t^2+2t\\]

**Étape 3 – Distance entre 0 et 3**  
\\[\\Delta s = s(3)-s(0)= (27+6)-0=33 \\, m\\]

**Réponse:**  
\\[s(t)=3t^2+2t, \\quad \\Delta s = 33\\, m\\]
"""
  ),

  Exercise(
    question: "Une voiture a \\(v(t)=t^2-4t+3\\) m/s pour \\(0 \\le t \\le 4\\).\n Calculez :\n "
    "1) les instants où la voiture s'arrête,"
    "\n2) le déplacement et la distance totale entre \\(t=0\\) et \\(t=4\\).",
    solution: """
**Étape 1 – Zéros de la vitesse**  
\\[v(t)=t^2-4t+3=(t-1)(t-3)\\]

Donc \\(v(t)=0\\) pour \\(t=1\\) et \\(t=3\\).

**Étape 2 – Déplacement total**  
\\[s=\\int_0^4 v(t) dt = \\int_0^4 (t^2-4t+3) dt= \\left[ \\frac{t^3}{3}-2t^2+3t \\right]_0^4\\]

Calcul :  
\\[\\frac{64}{3}-32+12=\\frac{64-96+36}{3}=\\frac{4}{3}\\]

**Étape 3 – Distance totale**  
Découpons sur les intervalles \\([0,1]\\), \\([1,3]\\), \\([3,4]\\) et prenons la valeur absolue de chaque intégrale.

- **[0,1] :**  
\\[\\left[\\frac{t^3}{3}-2t^2+3t\\right]_0^1=\\frac{1}{3}-2+3=\\frac{4}{3}\\]

- **[1,3] :**  
\\[\\left[\\frac{t^3}{3}-2t^2+3t\\right]_1^3=\\left(9-18+9\\right)-\\left(\\frac{1}{3}-2+3\\right)=0-\\frac{4}{3}=-\\frac{4}{3}\\Rightarrow \\left| -\\frac{4}{3} \\right|=\\frac{4}{3}\\]

- **[3,4] :**  
\\[\\left[\\frac{t^3}{3}-2t^2+3t\\right]_3^4=\\frac{4}{3}-0=\\frac{4}{3}\\]

Distance totale :  
\\[D=\\frac{4}{3}+\\frac{4}{3}+\\frac{4}{3}=4\\]

**Réponse:**  
Déplacement = \\(\\frac{4}{3}\\, m\\), Distance totale = \\(4\\, m\\)
"""
  ),
Exercise(
  question: "On donne \\(s(t)=t^2-4t+3\\) (en mètres) pour \\(0\\le t\\le5\\), où \\(t\\) est le temps en secondes. \n\n"
            "(a) Calculez la vitesse de la particule \\(v(t)\\). \n"
            "(b) Déterminez les intervalles de temps où la particule se déplace vers la droite et où elle se déplace vers la gauche. \n"
            "(c) Tracez (ou décrivez) un diagramme de mouvement simple en indiquant les positions aux instants entiers \\(t=0,1,2,3,4,5\\) et la direction du mouvement sur chaque intervalle. \n"
            "(d) Écrivez les intégrales définies donnant le déplacement et la distance parcourue sur l'intervalle \\([0,5]\\). Calculez numériquement ces intégrales (on peut utiliser une calculatrice graphique). Utilisez le diagramme de mouvement pour vérifier les résultats.",
  solution: """
**(a) Vitesse**

\\[s(t)=t^2-4t+3\\]
La vitesse est la dérivée du déplacement :
\\[v(t)=\\frac{ds}{dt}=2t-4.\\]

**Réponse (a) :** \\( v(t)=2t-4 \\).

---

**(b) Sens du mouvement (droite = \(v>0\), gauche = \(v<0\))**

On résout \\(v(t)=0\\) pour trouver les changements de signe :
\\[2t-4=0 \\Rightarrow t=2.\\]

- Pour \\(0\\le t<2\\) : \(v(t)=2t-4<0\\) ⇒ la particule **se déplace vers la gauche**.  
- Pour \\(t>2\\) (jusqu'à 5) : \(v(t)>0\\) ⇒ la particule **se déplace vers la droite**.

**Réponse (b) :** vers la gauche sur \\([0,2)\\), vers la droite sur \\((2,5]\\).

---

**(c) Diagramme de mouvement (positions aux instants entiers)**

Calcul des positions \\(s(t)\\) aux instants indiqués :

\\[\\begin{array}{c|cccccc}t & 0 & 1 & 2 & 3 & 4 & 5 \\\\ \\hlines(t) & 3 & 0 & -1 & 0 & 3 & 8\\end{array}\\]

Interprétation / diagramme de mouvement (version textuelle) :

- \\(t=0\\) : position 3.  
- De \\(t=0\\) à \\(t=2\\) la position passe 3 → 0 → -1 (se déplace vers la gauche).  
- À \\(t=2\\) position minimale \\(-1\\).  
- De \\(t=2\\) à \\(t=5\\) la position passe -1 → 0 → 3 → 8 (se déplace vers la droite).

On peut représenter un petit diagramme par une ligne de positions marquées (schéma simplifié) :

\\[3\\xleftarrow{\\text{gauche}}0\\xleftarrow{\\text{gauche}}{-1}\\xrightarrow{\\text{droite}}0\\xrightarrow{\\text{droite}}3\\xrightarrow{\\text{droite}}8\\]

(ou dessiner des flèches sous une échelle de positions pour visualiser les déplacements).

---

**(d) Intégrales : déplacement et distance parcourue**

- **Déplacement** sur \\([0,5]\\) = \\(\\displaystyle \\int_0^5 v(t)\\,dt = s(5)-s(0)\\) (théorème fondamental).

Calcul direct des bornes :
\\[s(0)=3, \\quad s(5)=5^2-4\\cdot5+3=25-20+3=8.\\]
Donc le déplacement net :
\\[\\Delta s = s(5)-s(0)=8-3=5.\\]

On peut aussi écrire l’intégrale :
\\[\\Delta s = \\int_0^5 (2t-4)\\,dt = \\left[t^2-4t\\right]_0^5 = (25-20)-0=5.\\]

- **Distance totale parcourue** = \\(\\displaystyle \\int_0^5 |v(t)|\\,dt\\). Comme \\(v(t)=2t-4\\) change de signe en \\(t=2\\), on sépare l’intégrale :
\\[\\text{Distance} = \\int_0^2 |2t-4|\\,dt + \\int_2^5 |2t-4|\\,dt.\\]
Sur \\([0,2]\\), \\(v(t)\\le0\\) donc \\(|v(t)|=-(2t-4)=4-2t\\). Sur \\([2,5]\\), \\(|v(t)|=2t-4\\). Ainsi
\\[\\text{Distance} = \\int_0^2 (4-2t)\\,dt + \\int_2^5 (2t-4)\\,dt.\\]

Calculs :
\\[\\int_0^2 (4-2t)\\,dt = \\left[4t - t^2\\right]_0^2 = (8-4)-0=4,\\]
\\[\\int_2^5 (2t-4)\\,dt = \\left[t^2-4t\\right]_2^5 = (25-20) - (4-8) = 5 - (-4) = 9.\\]

Donc
\\[\\text{Distance} = 4 + 9 = 13.\\]

**Résultats numériques (vérifiables avec un GDC)** :  
- Déplacement net sur \\([0,5]\\) : \\(5\\) mètres.  
- Distance totale parcourue sur \\([0,5]\\) : \\(13\\) mètres.

---

**Vérification via le diagramme de mouvement :**

Du point de vue des positions calculées :
- De 3 à -1 (de \\(t=0\\) à \\(t=2\\)) : variation en valeur absolue = \\(|3 - (-1)| = 4\\) → correspond à la première intégrale (4).  
- De -1 à 8 (de \\(t=2\\) à \\(t=5\\)) : variation = \\(|8 - (-1)| = 9\\) → correspond à la seconde intégrale (9).  
Somme = \\(4+9=13\\) (distance totale). Le déplacement net est \\(8-3=5\\) (différence entre position finale et initiale).

✅ Tout concorde : les intégrales confirment le diagramme de mouvement.
"""
),


],


    },
  };
}

