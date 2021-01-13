# Mode Médiane Moyenne 

Le mode est la valeur la plus probable, donc oui le max de la distribution
La moyenne arithmetique est celle que vous connaissez
Et la médiane est la valeur pour laquelle on a autant d'évenements de part et d'autre de sa valeur.
Quand la distribution est gaussienne, ou même symétrique, les 3 valeurs sont confondues

Quand la distribution est dyssymétrique (par exemple une log-normale) dans ce cas, les 3 valeurs sont différentes
Les toolboxes de Matlab ou Python permettent bien entendu de calculer ces 3 valeurs.
La médiane est la mesure la plus "stable" par rapport à une éventuelle perte de symétrie. D'ailleurs dans l'exemple ci-dessus, elle ne varie par en fonction du paramètre sigma de la loi log-normale prise en exemple.

Source : https://fr.wikipedia.org/wiki/Médiane_(statistiques)