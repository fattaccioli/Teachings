# Petit tuto pour mettre en place un serveur Discord pour l'enseignement

## Contexte

Enseignant dans un collège/lycée ou à l'université, vous dispensez des enseignements différents à des niveaux différents cette année.

Par exemple, vous donnez : 
- Une série de cours de physique au groupe de TD n°2 des L1
- Une série de cours de chimie à un petit groupe de L3

Vous voulez mettre en place un serveur Discord qui regroupe ces enseignements et les étudiants qui les suivent, et éventuellement des collègues qui vous aident.

Pour chaque niveau et chaque cours, vous voulez utiliser : 

- un canal de chat permanent (écrit) qui vous permet d'échanger avec les étudiants tout au long du semestre, poser des questions, etc.
- un canal de visio qui agira comme une salle de classe virtuelle, et à laquelle vous vous connecterez avec les étudiants pour un cours en synchrone.

Enfin, pour l'ensemble de votre serveur, vous voulez pouvoir faire des sondages simples, soit pour l'organisation, soit lors des cours synchrones pour vous assurer que les étudiants ont bien compris une notion.

Bien que ce qui est écrit ci-dessous ne soit pas exhaustif, vous pouvez suivre ce petit tuto qui vous montrera les premiers pas. 

Monter un serveur simple prend à peine 10 minutes.

## Création du compte Discord

Avant toute chose, il faut créer un compte permanent Discord à cette adresse : [lien](https://discord.com).

Il est plus pratique d'avoir l'application installée, mais vous pouvez aussi travailler directement dans le navigateur.

## Création du serveur pour vos enseignements

Nous sommes ici sur la capture d'écran de mon application Discord, et vous pouvez voir avec les icones sur la partie gauche de l'écran les différents serveurs, publics ou privés, auxquels je me suis inscrit.

Dans votre interface, ces icones n'apparaissent pas, puisque votre application est encore vierge, à l'exception du + qui vous permet d'ajouter un serveur.

![Screenshot](pics/Step1.png)

Cliquez dessus, et une petite fenêtre apparaitra. Vous avez alors le choix : 
- De créer un serveur que vous configurerez complètement (Create my own)
- De créer un serveur en suivant un modèle.
- De rejoindre un serveur pour lequel vous avez reçu une invitation (Join a Server)

Choisissez la première option (Create my own)

![Screenshot](pics/Step2.png)

La fenêtre suivante vous propose des options de personnalisation du serveur. Cliquez sur *Skip this question*

![Screenshot](pics/Step3.png)

La fenêtre suivante vous propose de donner un nom à votre serveur. Ici nous avons choisi un nom très général *Enseignement* que vous pourrez personnaliser à votre guise.

Si vous avez une icône ou une image pour représenter le serveur, vous pouvez cliquer sur le champ avec l'appareil photo. Cette opération peut être réalisée plus tard dans les paramètres du serveur.

Appuyez sur *Create*

![Screenshot](pics/Step4.png)

Voilà, votre serveur est créé. 

Vous voyez deux canaux installés par défaut, dans deux catégories différentes : 

- TEXT CHANNELS / #general
- VOICE CHANNELS / #General

Ces canaux seront par défaut accessibles à toutes les personnes enregistrées sur votre serveur, et, notamment, le canal #general affichera les événements importants (arrivée ou départ d'un nouveau membre notamment).

![Screenshot](pics/Step5.png)

## Création d'une catégorie et des canaux pour une classe

Il y a peut-être d'autres manières d'organiser votre serveur, mais voilà la manière dont j'ai procédé : 

- A chaque classe (L1 Groupe 2 ou L3) nous allons associer une catégorie
- Dans chaque catégorie, nous aurons plusieurs canaux (texte, visio)

La particularité de Discord est de pouvoir définir des *rôles*, à savoir des familles de membres, avec des droits particuliers. Les droits peuvent être accordés au niveau des canaux, ou au niveau des catégories.

Ici, les rôles correspondront à des groupes d'étudiants, d'enseignants, de collègues, etc. Nous les définirons plus tard dans le tuto.

Tout d'abord, cliquez sur *Enseignement* en haut à gauche, et vous verrez apparaître le menu suivant.

Cliquez sur *Create Category*

![Screenshot](pics/Step6.png)

Dans la fenêtre qui apparaît : 
- Entrez un nom de catégorie qui correspondra à votre classe. Ici *Physique L1* puisque ca correspond à vos enseignments pour le groupe 2 des étudiants de L1
- Activez *Private Category* car cela facilitera la mise en place de droits différenciés des membres. Si cette case n'est pas activée, la catégorie sera accessible à tous les membres par défaut, à la création, et le paramétrage ultérieur sera plus fastidieux.
- Cliquez sur *Create Category*

![Screenshot](pics/Step7.png)

Dans la nouvelle fenêtre qui apparaît, cliquez sur **Skip for now** car pour l'instant, vous n'avez pas défini de rôles particuliers.

![Screenshot](pics/Step8.png)

Vous voilà revenus à la page principale du server, et vous voyez maintenant la catégorie **Physique L1** dans la partie gauche de l'écran.

Voilà le moment de créer vos canaux pour vos cours. Dans une catégorie, vous pouvez avoir un grand nombre de canaux, mais pour simplifier, nous allons créer un canal (*channel*) de type *text* et un canal de type *voice* (qui est en fait un canal de visio, avec possibilité de diffuser l'image prise par votre caméra ou un partage d'écran).

Cliquez sur le **+** de la catégorie **Physique L1** et vous voyez apparaître un popup affichant *Create Channel*

![Screenshot](pics/Step9.png)

Dans la fenêtre qui apparaît, intitulée *Create a Private Channel*, veuillez : 
- Choisir **Text Channel** dans *CHANNEL TYPE*
- Donner un nom à votre canal, ici *#physique-chat*
- Activer l'option *Private channel*

Et enfin cliquer sur *Create Channel*


![Screenshot](pics/Step10.png)

Dans la fenêtre suivante, choisissez l'option **Skip for now** car, comme pour les catégories, vous n'avez pas encore de rôles définis.

![Screenshot](pics/Step11.png)

Après être revenu sur l'écran principal, vous voyez un canal intitulé **#physique-chat** dans la catégorie *Physique L1*. Si vous regardez attentivement, vous voyez un petit cadenas qui indique que ce canal est privé.

Pour créer le canal de visio, procédez de la même manière que ci-dessus : 
- Cliquez sur le **+** de la catégorie **Physique L1** et vous voyez apparaître un popup affichant *Create Channel*

![Screenshot](pics/Step11-1.png)

Dans la fenêtre qui apparaît, intitulée *Create a Private Channel*, veuillez : 
- Choisir **Voice Channel** dans *CHANNEL TYPE*
- Donner un nom à votre canal, ici *#physique-visio*
- Activer l'option *Private channel*

Et enfin cliquer sur *Create Channel*

![Screenshot](pics/Step11-2.png)

Dans la fenêtre suivante, choisissez l'option **Skip for now** car, comme pour les catégories, vous n'avez pas encore de rôles définis.

![Screenshot](pics/Step12.png)

Voilà, vous avez maintenant la structure de base de votre enseignement de physique en L1. 

Il vous reste maintenant a assigner un rôle à vos futurs étudiants de L1, pour qu'ils puissent : 
- voir les deux canaux créés sur votre serveur
- participer, par écrit dans le canal texte, et par voix/visio dans le canal visio.

## Création de rôles (familles de membres)

![Screenshot](pics/Step13.png)
![Screenshot](pics/Step14.png)
![Screenshot](pics/Step15.png)
![Screenshot](pics/Step16.png)
![Screenshot](pics/Step17.png)
![Screenshot](pics/Step18.png)
![Screenshot](pics/Step19.png)
![Screenshot](pics/Step20.png)
![Screenshot](pics/Step21.png)
![Screenshot](pics/Step22.png)
![Screenshot](pics/Step23.png)
![Screenshot](pics/Step24.png)
![Screenshot](pics/Step25.png)
![Screenshot](pics/Step26.png)
![Screenshot](pics/Step27.png)
![Screenshot](pics/Step28.png)
