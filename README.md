# AÉDIROUM

Dépôt contenant le site web de l'Association des Étudiants du [Département
d'Informatique et de Recherche Opérationnelle](http://diro.umontreal.ca) de
l'[Université de Montréal](http://umontreal.ca).

## Logiciels requis

* [hugo](//gohugo.io), pour la génération du site.
* [rsync](//rsync.samba.org), pour le déploiement du site.

## Guide d'utilisation

### Contenu

Toutes les pages ont un fichier dans le répertoire [`content`](content).
Ce sont des fichiers dans le format
[Markdown](//daringfireball.net/projects/markdown/syntax).

Certaines pages comme *Liste d'évènements*
([`content/evenements.md`](content/evenements.md)) et *Liens*
([`content/liens.md`](content/liens.md)) peuvent être modifiées directement,
tout simplement.

#### Nouvelles, MiDiros

Les nouvelles se situent dans [`content/nouvelles/`](content/nouvelles).
Les MiDiros se situent dans [`content/midiros/`](content/midiros).

Référez-vous aux fichiers déjà existants pour créer les vôtres.

**Attention** Assurez-vous que votre fichier contient toujours la balise
`<!--more-->` qui sépare ce qui est affiché comme « résumé » et le reste du
contenu.

### Données

Le répertoire [`data`](data) regroupe les listes de conseils d'administration
et de procès verbaux par année scolaire. Ce sont des fichiers dans le format
[YAML](//yaml.org).

Il est à noter que les **id** dans les fichiers de conseils sont les noms
d'utilisateurs du DIRO des membres.

### Fichiers

Les fichiers vont dans le répertoire [`static`](static).

Si ce sont des documents, vous pouvez les déposer dans
[`static/documents/`](static/documents).
Vous pouvez alors utiliser le nom du fichier comme lien dans
[`content/documents.md`](content/documents.md).

Si ce sont des procès verbaux, assurez-vous que le nom du fichier correspond à
la date utilisée dans le fichier YAML, dans [`data/proces/`](data/proces).

### Déploiement

Pour déployer le site web, vous n'avez qu'à exécuter le script
[`deploy.sh`](deploy.sh) sur votre ordinateur.

Vous pouvez aussi le déployer en vous connectant sur le compte de l'AÉDIROUM,
dans un des ordinateurs du DIRO.

Le site web est maintenant situé dans le dossier `/home/www-labs/aediroum/public_html` sur le serveur

## License

Ce projet suit les termes de la [License ISC](LICENSE).
