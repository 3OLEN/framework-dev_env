# Framework - Environnement de développement

Ce projet est à destination de la promotion `3OLEN` et consiste à fournir un environnement de développement basique
pour l'utilisation de Symfony et l'initialisation de projets.

# 🐋 Environnement Docker

Ce projet met à disposition une image Docker utilisée par le service `composer`, permettant d'exécuter des commandes par
le biais de `composer` et, ainsi, aider à initialiser un projet Symfony.

## 🏷️ Versions

L'image intègre :

* 🐘 php:8.3
* 🤵 composer:2.7

# 🔨 Commandes à utiliser

Exécuter des commandes `composer` avec le service éponyme :

```bash
docker compose run --rm composer
```

> ⚠️ Ne pas oublier l'option `--rm` afin de ne pas surcharger la liste des containers.

## 1. Créer un nouveau projet Symfony

Admettons un nouveau projet `my-app`, en utilisant le `symfony/skeleton` :

```bash
docker compose run --rm composer create-project "symfony/skeleton:7.0.*" my-app
```

## 2. Convertir le projet en application web

Toujours avec le projet `my-app` précédemment créé :

```bash
docker compose run --rm composer -d my-app require symfony/webapp-pack
```

Si on vous demande d'ajouter la configuration Docker « Do you want to include Docker configuration from recipes? »,
répondez `n`.
