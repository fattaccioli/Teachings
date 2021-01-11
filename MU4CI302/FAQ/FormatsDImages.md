# Formats d'images et compression

Alors pour les formats d'images (je ne peux pas me mettre en visio tout de suite) : 

1. une image numérique = un tableau ou une matrice avec des coordonnées de lignes et de colonnes qui définissent un pixel
2. dans chaque case de la matrice, on stocke un nombre (ou plusieurs pour des images en couleur) qui est grosso modo proportionnel à l'intensité lumineuse reçue par le pixel
3. Cette intensité est codée (quantifiée) entre I=0 (noir) à I = 2^n -1 (blanc), avec n : profondeur.
- Si n=8, on a 256 valeurs de gris possibles (de 0 à 2^8-1=255). 
- Si n= 12 on a 4096 nuances de gris possibles
- Si n=16 (le plus courant aujourd'hui, on a 65536 valeurs de gris possibles

Quand on stocke une image numérique de la sorte, on a NxN pixels, et (pour n=8 bits) une image qui fait en poids NxM octets. 

Pour un capteur de 5 Mpixels, ca fait donc 5 megaoctet par image.

C'est beaucoup, et comme ajourd'hui la profondeur est de 16 bits et les capteurs de plus en plus gros, ca fait des images de plus en plus lourdes.
C'est pour cela qu'on veut compresser les images pour qu'elles prennent moins de place. 

## Compression avec et sans perte

Il y a quelques petites choses à savoir sur la compression : 
- il existe des compressions dites loss less (sans perte) qui permettent de gagner de la place ET de revenir à l'image originale intacte si necessaire. Ce sera des formats de type  TIFF
- les compressions les plus courantes que vous connaissez ne permettent pas de revenir à l'image originale, car vous voulez en général des images de petit poids pour envoyer une photo ou la mettre sur snapchat. Je pense aux formats jpg et gif


Vous pouvez voir un exemple de compression jpg (avec une qualité variable ici ): 
https://en.wikipedia.org/wiki/File:Quality_comparison_jpg_vs_saveforweb.jpg

Plus le poids final de l'image est petit, et plus vous voyez des défauts (aplats de couleurs, etc)

## Conclusion pour l'imagerie scientifique

Quand on fait de l'imagerie *scientifique*, la valeur d'intensité stockée par pixel est importante : elle sera par exemple proportionnelle à une intensité optique de l'échantillon, à la concentration locale d'un marqueur fluorescent, etc. On ne peut pas se permettre d'avoir une image qui représente correctement les structures, au niveau visuel, mais qui perdrait cette information.

De manière générale, on ne travaille JAMAIS avec des images en jpg ou en gif pour faire de l'analyse d'images, à part si on veut avoir une illustration !

Le format de prédilection : TIFF, avec eventuellement une compression loss less pour gagner de la place.

## Quelques ressources : 

- Khan Academy : https://www.khanacademy.org/computing/computers-and-internet/xcae6f4a7ff015e7d:digital-information/xcae6f4a7ff015e7d:data-compression/a/simple-image-compression
- Shortpixel blog : https://blog.shortpixel.com/complete-guide-image-compression-reduce-image-sizes-faster-sites/
