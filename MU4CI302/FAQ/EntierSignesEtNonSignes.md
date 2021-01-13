# Entiers signés et non signés

En programmation et calcul numérique, les entiers sont une classe (un type) de données à part entière, dont la gestion dans la mémoire obéit à certaines règles.

Si on prend les entiers codés sur 8bits (une série de 8 valeurs pouvant prendre 0 ou 1), ceux-ci sont stockés en mémoire dans 8 cases distinctes.

Vous avez le choix d'avoir des entiers signés (avec + ou - devant) ou non signés.

- Si les entiers sont signés (type int8) , alors la première case contient cette information (par exemple 0 = + et 1 = -) et il reste 7 cases pour le nombre. Et ce nombre peut aller de -128 to 127 (soit 256 valeurs)
- Si les entiers ne sont pas signés (uint8, ce sont alors des entiers positifs) les 8 cases sont disponibles et on peut aller de intmin(uint8) = 0 et intmax(uint8) = 255

Dans les deux cas, on a 256 valeurs (2^8)

## Petit apparté : pourquoi la valeur max est 127 et la valeur min -128 quand on code sur 7 bits : 

128 = 1x2^0 + 1x2^1 + 1x2^2 + 1x2^3 + 1x2^4 + 1x2^5+ 1x2^6 + 1x2^7

# Fonctions intmin() et intmax()

Les fonctions intmin() et intmax() sont des fonctions  spécifiques qui concernent les entiers et leur gestion. 

Les fonctions intmin() et intmax() permettent de donner les valeurs extrême en fonction du type d'entier que vous voulez stocker en mémoire

Quelques informations supplémentaires [ici](http://matlab.izmiran.ru/help/techdoc/ref/int8.html)
