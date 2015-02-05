# Nous le Peuple

Ceci est la plateforme qui permet le fonctionnement de "Nous le Peuple", l'agora citoyenne
du [Mouvement pour la 6ème République](http://www.m6r.fr).

C'est un fork de [Pligg](http://pligg.com/).

Vous pouvez utiliser le système d'issues de Github pour signaler des bugs.

Si vous êtes développeuse ou développeur, vous êtes invité-e à contribuer au
développement en rejoignant la liste http://listes.m6r.fr/wws/info/nouslepeuple-devel,
et en faisant des pull requests. Avant toute chose, lisez cependant les
[règles de contribution](https://github.com/m6r/nouslepeuple/blob/master/CONTRIBUTING.md).

Merci aussi de ne pas utiliser Github pour proposer de nouvelles fonctionnalités ou discuter de l'évolution de la plateforme. Utilisez plutôt la [catégorie dédiée](https://www.m6r.fr/nouslepeuple/?category=propositions-evolution) sur Nous le Peuple.

# Installation pour développement

## Requis

* une base de données mysql
* PHP
 
## Installation

Cloner d'abord le dépot nous le peuple :

```
$ git clone https://github.com/m6r/nouslepeuple
```

Avant toute chose, il vous faut renommer quelques fichiers :
```
$ cd nouslepeuple/
$ mv settings.php.default settings.php
$ mv libs/dbconnect.php.default libs/dbconnect.php
$ mv languages/lang_french.conf.default languages/lang_french.conf
```

Si vous avez une version de PHP inférieure à 5.4, vous devez utiliser un
serveur web tel qu'Apache2 en le faisant pointer vers le répertoire du
projet. Il faut que le serveur ait les droits d'écriture sur `settings.php`
et `libs/dbconnect.php`.
L'installateur vous le demandera si nécessaire.

Si vous avez PHP >= 5.4, il est vivement conseillé d'utiliser le serveur
de développement fourni avec PHP :
```
$ cd nouslepeuple/
$ php -S 127.0.0.1:8000
```
Un serveur PHP basique écoute maintenant sur [http://localhost:8000/](http://localhost:8000/).

Rendez-vous sur [http://localhost:8000/install/](http://localhost:8000/install/) pour remplir les quelques
étapes d'installation. C'est toujours l'installateur par défaut de Pligg
mais modifier de telle sorte que la configuration du M6R s'installe automatiquement.
Choisissez "Français" lors du choix de la langue, et entrez les identifiants de
la base de données.

Faites bien attention lors de vos commit à ne pas inclure les fichiers renommés et
le dossier `install`, qui sont modifiés mais restent spécifiques à votre installation !
