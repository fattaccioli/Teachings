# Expression cell-free de protéines en gouttes microfluidiques

Le but de ce projet est d’utiliser les outils de l’analyse d’images afin d’obtenir les courbes de cinétique de la synthèse _in vitro_ de deux protéines fluorescentes : la protéine Phi-YFP et la protéine mKate2 à partir d’images de microscopie optique.

# Se rafraichir la mémoire sur les objectifs et le cadre scientifique

Vous trouverez dans le dossier le film Artifiical_cells_1fpm.avi. 
Celui-ci a été obtenu par microscopie de fluorescence et montre des gouttes microfluidiques contenant un milieu d’expression dit « cell-free » et qui permet l’expression in vitro de protéines à partir de leurs séquences d’ADN. L’expression de deux séquences codantes sont étudiées simultanément : une protéine fluorescente jaune (Phi-YFP, ) et une protéine fluorescente rouge (mKate2, ). Des protéines non-actives et marquées par un fluorophore bleu sont également ajoutées au milieu (Streptavidin-Atto-425).

Les documents auxquels vous pouvez vous référer sont :

Pour l’analyse d’images et la prise en main d’ImageJ :
https://www.edx.org/course/image-processing-and-analysis-for-life-scientists

Pour la culture scientifique :
•	Un rappel sur la microscopie de fluorescence (cours optionnel 4C011)
•	Des notions sur les protéines fluorescentes
•	Des notions sur l’expression de protéines 
•	Un article sur la microfluidique digitale

# Principe général de l'analyse du film

Le but ici n'est pas de donner la solution mais de proposer des pistes de résolution. Mais nous pouvons donner malgré tout quelques éléments pour débuter.
1.	La première chose à faire dans votre cas, avec Fiji ou Matlab/Octave, est de traiter le film afin de détecter les gouttes à l’aide du signal de fluorescence bleu, qui est à peu près constant au cours de l’expérience. 
2.	Les régions détectées par ce signal pourront ensuite être utilisées afin de mesurer le signal vert et le signal rouge dans chaque goutte. Il faudra peut-être obtenir également les positions de chaque gouttes (ou d’autres informations !) pour l’analyse à suivre.
3.	Quand vous aurez ce tableau de données, vous utiliserez un logiciel de traitement de données (Matlab/Octave ou Python) afin de reconstruire l’évolution des différents signaux au cours du temps dans chaque goutte.
4.	Vous pourrez alors en faire une étude statistique et comparer les résultats pour les deux protéines.

![image](https://user-images.githubusercontent.com/77150239/147095744-130bdfba-7cf0-4c1f-b845-c64ee2266b0c.png)
