# Mode Médiane Moyenne 

![Représentation du mode, de la médiane et de la moyenne d'une fonction log-normale](https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Comparison_mean_median_mode.svg/langfr-320px-Comparison_mean_median_mode.svg.png?uselang=fr?raw=true "Mode, Médiane et Moyenne")

Source : https://fr.wikipedia.org/wiki/Médiane_(statistiques)

- Le mode est la valeur la plus probable, donc oui le max de la distribution
- La moyenne arithmetique est celle que vous connaissez
- Et la médiane est la valeur pour laquelle on a autant d'évenements de part et d'autre de sa valeur.

Les valeurs rélatives de ces nombres vont dépendre de la forme de la distribution : 

- Quand la distribution est gaussienne, ou même symétrique, les 3 valeurs sont confondues
- Quand la distribution est dyssymétrique (par exemple une log-normale) dans ce cas, les 3 valeurs sont différentes


Les toolboxes de Matlab ou Python permettent bien entendu de calculer ces 3 valeurs.

La médiane est la mesure la plus "stable" par rapport à une éventuelle perte de symétrie. D'ailleurs dans l'exemple ci-dessus, elle ne varie par en fonction du paramètre sigma de la [loi log-normale](https://fr.wikipedia.org/wiki/Loi_log-normale) prise en exemple. 

