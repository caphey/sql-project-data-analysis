# Service de streaming

## Introduction

Ce projet est une base de données PostgreSQL pour une application de streaming. Il contient des scripts SQL pour créer des tables et insérer des données, ainsi que des requêtes pour interagir avec ces données et les visualiser.

## Technologies utilisées

- PostgreSQL
- SQL
- Python
- Jupyter Notebook

## Structure du projet

- `--postgreSQL database.sql` : Ce fichier contient les scripts SQL pour créer la base de données, les tables et insérer des données.
- `sql_queries.py` : Ce fichier contient les requêtes SQL pour interagir avec la base de données.
- `datavisualisations.ipynb` : Ce fichier contient des visualisations de données basées sur la base de données.

## Installation

1. Assurez-vous d'avoir PostgreSQL, Python et Jupyter Notebook installés sur votre machine.
2. Ouvrez un terminal et clonez ce dépôt sur votre machine locale en utilisant la commande suivante :

    ```bash
    git clone https://github.com/caphey/sql-project-data-analysis.git
    ```
3. Installez les dépendances du projet en utilisant la commande suivante :

    ```bash
    pip install -r requirements.txt
    ```

4. Créez un fichier `.env` à la racine du projet. Ce fichier doit contenir les variables d'environnement nécessaires pour le projet. Par exemple :

   ```bash
   DB_HOST=localhost
   DB_USER=your_username
   DB_PASS=your_password
   DB_NAME=your_database_name
   ```

   Remplacez `your_username`, `your_password` et `your_database_name` par vos propres informations de connexion à la base de données.

5. Exécutez le script `--postgreSQL database.sql` dans votre base de données pour créer les tables, et pour insérer les données.

## Utilisation

1. Utilisez les requêtes dans `sql_queries.py` pour interagir avec la base de données.
2. Ouvrez `datavisualisations.ipynb` pour voir les visualisations de données.
