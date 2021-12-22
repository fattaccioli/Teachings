# Expression cell-free de protéines en gouttes microfluidiques

Le but de ce projet est d’utiliser les outils de l’analyse d’images afin d’obtenir les courbes de cinétique de la synthèse _in vitro_ de deux protéines fluorescentes : la protéine Phi-YFP et la protéine mKate2 à partir d’images de microscopie optique.

# Se rafraichir la mémoire sur les objectifs et le cadre scientifique

Vous trouverez dans le dossier le film **Artificial_cells_1fpm.avi** 

Celui-ci a été obtenu par microscopie de fluorescence et montre des gouttes microfluidiques contenant un milieu d’expression dit « cell-free » et qui permet l’expression _in vitro_ de protéines à partir de leurs séquences d’ADN. 
L’expression de deux séquences codantes sont étudiées simultanément : une protéine fluorescente jaune (Phi-YFP, https://www.fpbase.org/protein/phiyfp/) et une protéine fluorescente rouge (mKate2, https://www.fpbase.org/protein/mkate2/). 
Des protéines non-actives et marquées par un fluorophore bleu sont également ajoutées au milieu (Streptavidin-Atto-425).

Les documents auxquels vous pouvez vous référer sont :

Pour l’analyse d’images et la prise en main d’ImageJ :
- https://www.edx.org/course/image-processing-and-analysis-for-life-scientists (EN)
- https://ww2.ac-poitiers.fr/biochimie/sites/biochimie/IMG/pdf/tutorielimagej.pdf (FR)

Pour la culture scientifique :
- Sur les protéines fluorescentes: 
https://www.microscopyu.com/techniques/fluorescence/introduction-to-fluorescent-proteins  (EN)
https://trigenotoul.com/wp-content/uploads/2014/09/Proteines-fluorescentes-cours.pdf  (FR)
- Sur l’expression de protéines : 
http://biochimej.univ-angers.fr/Page2/COURS/7RelStructFonction/2Biochimie/1SyntheseProteines/1SyntheseProt.htm 
- Sur la microfluidique:
https://www.youtube.com/watch?v=oPJfXSb5QYw&ab_channel=LeprojetLut%C3%A9tium (et vidéos suivantes...)

# Principe général de l'analyse du film

Le but ici n'est pas de donner la solution mais de proposer des pistes de résolution. 
Mais nous pouvons donner malgré tout quelques éléments pour débuter.
_(Afin de prendre progressivement en main ces nouveaux outils numériques, vous pouvez réduire le film et commencer par l’analyse d’une seule goutte avant l’analyse complète!)_

1.	La première chose à faire dans votre cas, avec Fiji ou Matlab/Octave, est de traiter le film afin de détecter les gouttes à l’aide du signal de fluorescence bleu, qui est à peu près constant au cours de l’expérience. 
2.	Les régions détectées pourront ensuite être utilisées afin de mesurer le signal vert et le signal rouge dans chaque goutte. Il faudra peut-être obtenir également les positions de chaque gouttes (ou d’autres informations !) en fonction des analyses que vous voulez faire.
3.	Quand vous aurez ce tableau de données, vous utiliserez un logiciel de traitement de données (Matlab/Octave ou Python) afin de reconstruire l’évolution des différents signaux au cours du temps dans chaque goutte.
4.	Vous pourrez alors en faire une étude statistique et comparer les résultats pour les deux protéines.


