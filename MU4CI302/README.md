# Chimie et Numérique
# MU4CI302 - 2020/2021

Bonjour à toutes et à tous, ce document donnes les informations nécessaires pour la partie Data Science du groupe du Lundi dans l'UE Chimie et Numérique

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
3. à suivre.

## Prérequis

Pouvez-vous remplir ce sondage en amont du premier cours ? 
https://forms.gle/HMn5mAbKgZwz6jEV6

## Organisation générale

### Communication au sein de l'UE

Nous avons mis en place un serveur Discord dont les liens d'invitation vous ont été communiqué sur le forum Moodle de l'UE pour le groupe du lundi.
C'est l'outil qui sera utilisé pour les cours en visio, et aussi pour les questions/réponses par écrit.

### Planning

- S1 – 11-13 janv PM : Autonomie + Visio
- S2 – 18-20 janv PM : Autonomie (Salle disponible)
- S3 – 25-27 janv PM : Autonomie + Visio
- S4 – 1-3 fev PM :    Autonomie (Salle disponible)
- S5 – 8-10 fev PM : Autonomie + Visio
- S6 – 15-17 fev PM :    Autonomie (Salle disponible)
- S7 – 1-3 mar PM : Autonomie + Visio
- S8 – 8-10 mar PM :    Autonomie (Salle disponible)
- S9 – 15-17 mar PM : Autonomie + Visio
- S10 – 22-24 mar PM : Visio / Présentations de fin de projet

Lors des semaines en autonomie, vous pouvez utiliser des salles disponibles sur le campus de l'Université, ou les bibliothèques.

### Constitution des binômes de travail

Les binômes constituer sont à renseigner ici : 
https://docs.google.com/spreadsheets/d/1XZ8V1lkKLiq6j419Xy_APTPY0jAI5ADMmkDO0HPqT44/edit?usp=sharing

Veuillez mettre à jour les colonnes de progression ImageJ et Matlab au cours du semestre (de manière hebdomadaire). Cela sera utile pour être certain que les notions sont connues de tout le monde.

### Attendus du cours et notation

Il y aura plusieurs choses à rendre pendant le semestre : 

1. Quelques quiz intermédiares sur des points techniques
2. Un rapport court (4000 mots maximum, bibliographie incluse) à rendre pour la semaine du 17 mars 2021
3. Une présentation par binôme (10 minutes / 5 min de questions)

## Progression du travail

### De la semaine 1 à la semaine 4 incluse

Comme des cours en ligne sont parfois très bien faits, nous vous proposons pour la première période de cette UE de vous enregistrer sur ces cours en ligne : 

1. Image Processing and Analysis for Life Scientists
https://www.edx.org/course/image-processing-and-analysis-for-life-scientists

et de suivre au moins les 3 premiers cours : 
- Week 1: Digital Images
Introduction to digital image formation and how optical systems go from objects to images.
- Week 2: Colors
Review of human visual perception and the RGB color model. Introduction to the concepts of image bit-depth and lookup tables.
- Week3: Operating on Images
Introduction to image scaling, interpolation, and mathematical operations of images, and why certain bit-depths are more suitable than others.

Nous ferons des points intermédiaires en visio pour que vous puissiez nous poser des questions sur des choses encore peu comprises.

2. Matlab et GNU Octave pour les débutants 
https://www.edx.org/course/matlab-et-octave-pour-debutants


Il y a bien entendu d'autres ressources disponibles (MOOCs, etc.), donc faites au mieux, mais il sera difficile de se passer de ces connaissances pour la suite.


## Programme des séances

### Séance 1 (11/01/2021)

En amont de la séance, veuillez regarder cette vidéo : https://www.youtube.com/watch?v=sAIzoZac9ZA
Elle a été réalisée par le DIM ELICIT, qui est une structure de financement de la région Ile de France dédiée aux Technologies pour la Santé.

- Connectez-vous sur la visio Discord à 13h30 pour que l'on puisse, Thomas et moi, vous présenter notre partie d'UE et les projets associés.
- Avant ou après la visio, veuillez vous inscrire sur les deux MOOCs et aller au bout de la leçon 1 du MOOC sur l'Analyse d'Image
- Veuillez poser vos questions (choses imprécises, etc) sur le canal dédié sur Discord. Nous répondrons aux questions par écrit, puis lors de la visio de la semaine suivante.

### Séance 2 (18/01/2021)

## Resources

### Importance of diffusion processes
http://thebiologyprimer.com/diffusion-and-osmosis

### Ressources logicielles
Analyser des images necéssite d'utiliser des logiciels spécifiques ou généralistes, ayant une interface graphique ou non. Dans le cadre de ce cours, 3 outils sont à votre disposition, et vous pouvez les utiliser indifféremment en fonction de l'objectif fixé : 
- FIJI/ImageJ : https://fiji.sc (Libre, donc installable sans procédure particulière sur votre ordinateur personnel)
- Matlab : https://www.mathworks.com/products/matlab.html (Disponible sur le bureau à distance de LUTES)
- GNU Octave pour l'analyse d'image : https://octave.org/doc/v4.2.1/Image-Processing.html
- Python avec la distribution Anaconda : https://anaconda.org (Libre, donc installable sans procédure particulière sur votre ordinateur personnel)

GNU Octave est un clone libre de Matlab. Vous pouvez donc l'installer sur votre ordinateur personnel sans license payante particulière.

Pour se connecter à votre bureau virtuel de LUTES à partir d'un ordinateur extérieur à LUTES (domicile, bibliothèque), vous devez suivre ces instructions suivantes : 
- Installer Microsoft Remote Desktop (disponible pour PC et Mac : https://www.microsoft.com/en-us/p/microsoft-remote-desktop/9wzdncrfj3ps?activetab=pivot:overviewtab
- Télécharger le fichier de connection en suivant ce lien : https://lutes.upmc.fr/bdl-ext.php
- Vous munir de vos identifiants SU

### Particle tracking with Matlab 
http://site.physics.georgetown.edu/matlab/

### Brownian motion
https://www.youtube.com/watch?v=NSe3TFLYcO8


