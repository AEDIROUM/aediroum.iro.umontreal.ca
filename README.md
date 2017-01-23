# AÉDIROUM

Dépôt contenant le site web de l'Association des Étudiants du [Département d'Informatique et de Recherche Opérationnelle](//diro.umontreal.ca) de l'[Université de Montréal](//umontreal.ca).

Le site web utilise [Hugo](https://gohugo.io), un moteur de sites web statiques.

## Logiciels requis

* [Hugo](https://gohugo.io), pour générer le site web.
* [npm](https://npmjs.com), pour les fichiers statiques (CSS/JS).
* [rsync](https://rsync.samba.org), pour le déploiement.

## Guide d'utilisation

### Contenu

Toutes les pages ont un fichier dans le répertoire `content`.
Ce sont des fichiers dans le format [Markdown](https://daringfireball.net/projects/markdown/syntax).

Certaines pages comme *Liste d'évènements* (`evenements.md`) et *Liens* (`liens.md`) peuvent être modifiées directement, tout simplement.

#### Nouvelles, MiDiros

Les nouvelles se situent dans `content/nouvelles`.
Les MiDiros se situent dans `content/midiros`.
Référez-vous aux fichiers déjà existants pour créer les vôtres.

**Attention :** Assurez-vous que votre fichier contient toujours la balise `<!--more-->` qui sépare ce qui est affiché comme "résumé" et le reste du contenu.

### Données

Le répertoire `data` regroupe les listes de conseils d'administration et de procès verbaux par année scolaire.
Ce sont des fichiers dans le format [YAML](//yaml.org).

Il est à noter que les `id` dans les fichiers de conseils sont les noms d'utilisateurs du DIRO des membres.

### Fichiers

Les fichiers vont dans le répertoire `static`.

Si ce sont des documents, vous pouvez les déposer dans `static/documents`.
Vous pouvez alors utiliser le nom du fichier comme lien dans `documents.md`.

Si ce sont des procès verbaux, assurez-vous que le nom du fichier correspond à la date utlisée dans le fichier YAML, dans `data/proces`.

### Déploiement

Pour déployer le site web, vous n'avez qu'à exécuter `deploy.sh` sur votre ordinateur ou directement sur frontal.

## License

Ce projet est licensié sous les termes de la [License MIT](LICENSE.md).
