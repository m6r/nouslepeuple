Contribuer
==========

1: Configurer votre environnement
---------------------------------

### Installer les logiciels

Vous pouvez installer Git en le téléchargeant sur http://git-scm.com/download.

### Configurer Git

Spécifiez vos informations personnelles en définissant votre nom et une adresse
email fonctionnelle :

    $ git config --global user.name "Votre nom"
    $ git config --global user.email votre_email@exemple.com

Si vous découvrez Git, il vous est vivement recommandé de lire l'excellent livre
gratuit [ProGit].

Si votre IDE crée les fichiers de configuration dans le répertoire de votre
projet, vous pouvez utiliser le fichier global ``.gitignore`` (pour tout les
projets) ou le fichier ``.git/info/exclude`` (par projet) pour les ignorer.

Pour les utilisateurs Windows : en installant Git, l'installeur vous demandera quoi faire avec les fins de lignes, et vous suggérera de remplacer tout les saut de lignes (LF pour Line Feed) par des fins de lignes (CRLF pour Carriage Return Line Feed). Ce n'est pas la bonne configuration ! Conserver la configuration par défaut est le meilleur choix à faire, puisque Git convertira vos sauts de ligne (Line Feed) conformément à ceux du dépôt. Si vous avez déjà installé Git, vous pouvez vérifier la valeur en tapant :

    $ git config core.autocrlf

Cela retournera soit « false », « input » ou « true », « true » et « false » étant les mauvaises valeurs. Changez la en tapant :

    $ git config --global core.autocrlf input

Remplacez --global par --local si vous ne voulez le changer que pour le dépôt actif.

### Récupérez le code source


Récupérez le code source :

* Créez un compte [GitHub] et authentifiez vous;

* Faites un Fork du [dépôt m6r/nouslepeuple] : cliquez sur le bouton « Fork »;

* Après que le clone est terminé, clonez votre fork
  localement (cela créera un dossier nouslepeuple) :

      $ git clone git@github.com:USERNAME/nouslepeuple.git

* Ajoutez le dépôt distant comme ``remote`` :
  ```
  $ cd pligg-cms
  $ git remote add m6r git://github.com/m6r/nouslepeuple.git
  ```

2: Travaillez sur votre patch
-----------------------------

### Créez une nouvelle branche

Chaque fois que vous voulez travailler sur un patch lié à un bug ou à une nouvelle
fonctionnalité, créez une nouvelle branche :

    $ git checkout -b NOM_BRANCHE master

Utilisez un nom explicite pour votre branche (`ticket_XXX` où `XXX` est le numéro
du ticket est une bonne convention pour les corrections de bugs).

La commande Checkout ci-dessus bascule automatiquement le code vers la branche
nouvellement créée (vérifiez la branche sur laquelle vous vous trouvez avec `git branch`).

### Travaillez sur votre patch

Travaillez sur le code autant que vous le désirez et commitez aussi souvent que
vous le voulez mais gardez bien à l'esprit de :

* Faire des commits bien organisés et clairs (utilisez le pouvoir du `git rebase` afin d'avoir un
  historique clair et logique);

* Supprimer les commits non pertinents qui concernent les standards de code ou les
  corrections de fautes de frappe dans votre propre code;

* Ne jamais corriger les standards de code dans le code existant car cela rend la
  revue de code plus difficile;

* Écrire des messages parlants pour chacun des commits (lisez le conseil ci-dessous).

Un bon message de commit est composé d'un résumé succinct (la première ligne),
suivi optionnellement par une ligne vide et par une description plus détaillée. 
Le résumé commence par le composant sur lequel vous êtes en train de
travailler entre crochets (``[template]``, ``[traduction]``,
...).

### Respectez les standards de code

Le code de Nous le Peuple essaie de respecter un certain nombre de standards de
code afin de faciliter la participation de chacun. Tout le code proposé doit
passer les fixers de [php-cs-fixer](http://cs.sensiolabs.org/) tels que
configurés dans le fichier
[.php_cs](https://github.com/m6r/nouslepeuple/blob/master/.php_cs) à la racine
du projet. Vous êtes encouragé-e à installer et utiliser [php-cs-
fixer](http://cs.sensiolabs.org/). Grâce au fichier .php_cs situer à la racine
du projet, il vous suffit d'utiliser la commande pour faire se conformer votre
code aux standards :

    $ php php-cs-fixer.phar fix

3: Soumettez votre patch
------------------------

Lorsque vous pensez que votre patch est prêt à être envoyé, suivez les étapes
suivantes.

### Mettez à jour votre patch avec rebase

Avant de soumettre votre patch, mettez à jour votre branche (cela est
nécessaire si vous avez mis du temps à terminer vos changements) :

    $ git checkout master
    $ git fetch m6r
    $ git merge m6r/master
    $ git checkout NOM_BRANCHE
    $ git rebase master

Lorsque vous utilisez la commande ``rebase``, vous pourriez avoir des conflits
lors du merge. ``git status`` affichera les fichiers *non mergés*. Résolvez tout
les conflits avant de continuer le rebase :

    $ git add ... # ajouter les fichiers traités
    $ git rebase --continue

Vérifiez que tout les tests passent toujours et pushez votre branche
sur le dépôt distant :

    $ git push origin NOM_BRANCHE

### Faites une Pull Request

Vous pouvez maintenant faire une pull request sur le dépôt ``m6r/nouslepeuple``.

Dans la description de la Pull Request, donnez autant de détails que possible sur
les changements (n'hésitez pas à donner des exemples de code pour illustrer vos
propos). 

### Retravaillez votre patch

Selon les retours que vous aurez sur votre Pull Request, vous pourriez avoir
besoin de retravailler votre patch. Avant de le re-soumettre, faites un rebase
avec ``upstream/master`` ou ``upstream/2.0``, ne mergez pas; et forcez le push
vers origin :

    $ git rebase -f upstream/master
    $ git push -f origin NOM_BRANCHE

lorsque vous faites un ``push --force``, spécifiez toujours explicitement le
nom de la branche pour éviter de mettre la pagaille dans votre dépôt (``--force``
dit à git que vous voulez vraiment écraser les données existantes, donc faites attention).

Souvent, les modérateurs vous demanderont « d'aplanir » vos commits. Cela signifie que vous
devrez fusionner plusieurs commits en un seul. Pour faire cela, utilisez la commande rebase :

    $ git rebase -i HEAD~3
    $ git push -f origin NOM_BRANCHE

Ici, le nombre 3 doit être égal au nombre de commit de votre branche. Après que
vous avez tapé cette commande, un éditeur vous affichera une liste de commits :

    pick 1a31be6 premier commit
    pick 7fc64b4 second commit
    pick 7d33018 troisième commit

Pour fusionner tous les commits dans le premier, supprimez le mot « pick »
avant le second et les derniers commits, et remplacez le par le mot « squash »
ou juste « s ». Quand vous enregistrez, git commencera le rebase et, quand il aura
terminé, vous demandera de modifier le message de commit qui est, par défaut, une
liste des messages de chaque commit. Lorsque vous aurez terminé, lancez la commande push.

[ProGit]:                                       http://git-scm.com/book
[GitHub]:                                       https://github.com/signup/free
[documentation Github]:              https://help.github.com/articles/ignoring-files
[dépôt m6r/pligg-cms]: https://github.com/m6r/pligg-cms
