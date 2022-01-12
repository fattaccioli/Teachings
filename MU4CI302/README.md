# Chimie et Numérique - MU4CI302 - 2021/2022
## Sorbonne Université - Master 1 de Chimie
## Option : Data Science

Bonjour à toutes et à tous, ce document donnes les informations nécessaires pour la partie Data Science du groupe du Lundi dans l'UE Chimie et Numérique.

Intervenants : J. Fattaccioli, M. Morel (Sorbonne Université, Laboratoire [PASTEUR](https://www.chimie.ens.fr/?q=pasteur), Département de Chimie, ENS)

## Objectifs du cours

Le but de cette partie de l'UE est d'initier les étudiants aux méthodes numériques d'analyse d'images, dans le contexte de la physico-chimie et de la biologie.
Nous avons isolé deux ou trois domaines pour lesquels nous vous demandons de 
- comprendre la problématique posée
- proposer une méthode d'analyse de données par rapport aux observables choisis
- la mettre en oeuvre à partir d'outils standart
- proposer une analyse de résultats pertinente

Parmi les problèmes proposés : 

1. mesure d'un coefficient de diffusion d'une particule (avec et sans champ externe)
2. mesure de l'hétérogénéité de fluorescence d'une population de cellules
3. mesure de l'expression de protéines fluorescentes dans des gouttelettes microfluidiques

## Prérequis

Pouvez-vous remplir ce sondage en amont du premier cours ? 
https://forms.gle/HMn5mAbKgZwz6jEV6

## Organisation générale

### Communication au sein de l'UE

Nous avons mis en place un serveur Discord dont les liens d'invitation vous ont été communiqué sur le forum Moodle de l'UE pour le groupe du lundi.
C'est l'outil qui sera utilisé pour les cours en visio, et aussi pour les questions/réponses par écrit.

### Planning

Le planning des séances du mercredi est disponible sur le site Moodle de l'UE.

### FAQ (Frequently Asked Questions)

Les réponses aux questions que vous nous posez par chat écrit seront mises en forme et rédigées dans le répertoire [FAQ](https://github.com/jfattaccioli/Teachings/tree/master/MU4CI302/FAQ).
Il sera mis à jour régulièrement.

### Constitution des binômes de travail

Les binômes constituer sont à renseigner ici : 
https://docs.google.com/spreadsheets/d/1XZ8V1lkKLiq6j419Xy_APTPY0jAI5ADMmkDO0HPqT44/edit?usp=sharing

Veuillez mettre à jour les colonnes de progression ImageJ et Matlab au cours du semestre (de manière hebdomadaire). Cela sera utile pour être certain que les notions sont connues de tout le monde.

### Attendus du cours et notation

Il y aura plusieurs choses à rendre pendant le semestre : 

1. A mi-parcours, une courte présentation sur l'analyse d'images dans le cadre des projets sur lesquels vous travaillerez.
2. Une présentation par binôme (10 minutes / 5 min de questions)

## Progression du travail

### De la semaine 1 à la semaine 4 incluse

Comme des cours en ligne sont parfois très bien faits, nous vous proposons pour la première période de cette UE de vous enregistrer sur ce cours en ligne : 

Image Processing and Analysis for Life Scientists
https://www.edx.org/course/image-processing-and-analysis-for-life-scientists

et de suivre au moins les 3 premiers cours : 
- Week 1: Digital Images
Introduction to digital image formation and how optical systems go from objects to images.
- Week 2: Colors
Review of human visual perception and the RGB color model. Introduction to the concepts of image bit-depth and lookup tables.
- Week3: Operating on Images
Introduction to image scaling, interpolation, and mathematical operations of images, and why certain bit-depths are more suitable than others.

Nous ferons des points intermédiaires en visio pour que vous puissiez nous poser des questions sur des choses encore peu comprises.


Il y a bien entendu d'autres ressources disponibles (MOOCs, etc.), donc faites au mieux, mais il sera difficile de se passer de ces connaissances pour la suite.

#### Séance 1 

En amont de la séance, veuillez regarder cette vidéo : https://www.youtube.com/watch?v=sAIzoZac9ZA

Elle a été réalisée par le [DIM ELICIT](https://dim-elicit.fr/en/), qui est une structure de financement de la région Ile de France dédiée aux Technologies pour la Santé.

- Avant ou après la premère séance, veuillez vous inscrire sur les deux MOOCs et aller au bout de la leçon 1 du MOOC sur l'Analyse d'Image
- Veuillez poser vos questions (choses imprécises, etc) sur le canal dédié sur Discord. Nous répondrons aux questions par écrit, puis lors de la visio de la semaine suivante.

#### Séance 2 

Normalement, vous avez tous un environnement de travail fonctionnel, et réalisé au mois la partie 1 du MOOC sur l'analyse d'image.

- Normalement, vous pouvez suivre la partie 2 des cours sur l'analyse d'image.

Il est très important que vous puissiez refaire les exemples seuls, c'est-à-dire sans support visuel. 

#### Séance 3 

Vous avez tous bien progressé avec ImageJ/Fiji. Pour Fiji et l'analyse d'image, il vous manque encore deux chapitres pour pouvoir être indépendants et vous attaquer aux projets. Notamment pour connaitre les notions de segmentation et d'analyse de particules.

#### Séance 4 

Idéalement, il faudrait que vous puissiez suivre le chapitre 4 et le début du chapitre 5 des cours sur l'analyse d'image avant la séance.
Dans la séance 4, la partie relative aux filtres dans l'espace de Fourier n'est pas vraiment nécessaire. Il vaut mieux se concentrer sur les filtres dans l'espace réel, et aux problèmes de segmentation.

Il faut commencer à penser aux projets, et notamment au premier, ou il faudra analyser les films de particules seules animées d'un mouvement brownien, et plus spécifiquement "mouvement_Brownien.avi".

### De la semaine 5 à la fin de l'UE

Vous avez normalement bien progressé en analyse d'images et en programmation, en fonction de vos connaissances préalables.
À partir d'aujourd'hui, vous avez deux choses à faire en parallèle : 

1. Continuer à progresser dans les deux cours en ligne, car il y a des choses interessantes à connaitre au delà de ce que vous avez appris jusqu'à aujourd'hui.
2. Mener à bien les 3 premiers projets d'analyse sans support de cours : analyse du mouvement de billes et analyse de la fluorescence de cellules.

Les informations sont mises à jour dans les dossiers dédiés :

#### Projet 1 : Analyse du mouvement de particules browniennes

Le dossier est [ici](https://github.com/jfattaccioli/Teachings/tree/master/MU4CI302/SingleParticle-Diffusion)


## Resources

### Brownian motion
https://www.youtube.com/watch?v=NSe3TFLYcO8

### Importance of diffusion processes
http://thebiologyprimer.com/diffusion-and-osmosis

### Ressources logicielles
Analyser des images necéssite d'utiliser des logiciels spécifiques ou généralistes, ayant une interface graphique ou non. Dans le cadre de ce cours, 3 outils sont à votre disposition, et vous pouvez les utiliser indifféremment en fonction de l'objectif fixé : 
- FIJI/ImageJ : https://fiji.sc (Libre, donc installable sans procédure particulière sur votre ordinateur personnel)
- Matlab : https://www.mathworks.com/products/matlab.html (Disponible sur le bureau à distance de LUTES)
- GNU Octave pour l'analyse d'image : https://octave.org/doc/v4.2.1/Image-Processing.html
- Python avec la distribution Anaconda : https://anaconda.org (Libre, donc installable sans procédure particulière sur votre ordinateur personnel)

GNU Octave est un clone libre de Matlab. Vous pouvez donc l'installer sur votre ordinateur personnel sans license payante particulière.

Un bon cours en ligne de Matlab et GNU Octave pour les débutants 
https://www.edx.org/course/matlab-et-octave-pour-debutants

Pour se connecter à votre bureau virtuel de LUTES à partir d'un ordinateur extérieur à LUTES (domicile, bibliothèque), vous devez suivre ces instructions suivantes : 
- Installer Microsoft Remote Desktop (disponible pour PC et Mac : https://www.microsoft.com/en-us/p/microsoft-remote-desktop/9wzdncrfj3ps?activetab=pivot:overviewtab
- Télécharger le fichier de connection en suivant ce lien : https://lutes.upmc.fr/bdl-ext.php
- Vous munir de vos identifiants SU

### Particle tracking with Matlab 
http://site.physics.georgetown.edu/matlab/

### Particle tracking with Python

http://soft-matter.github.io/trackpy/v0.4.2/

From the work of Crocker, Grier and others.


