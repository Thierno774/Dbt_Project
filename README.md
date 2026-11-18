# 📊 Analytics – Projet dbt Cloud

## 1. Présentation du projet

Ce projet a pour objectif de construire et maintenir une plateforme de transformation de données à l'aide de **dbt Cloud** et **Google BigQuery**.

Il permet de transformer les données brutes en données structurées, fiables et exploitables pour les analyses métier et le reporting.

Le développement, l'exécution et le suivi des transformations sont réalisés dans dbt Cloud. GitHub est utilisé pour la gestion du code source et le versionnement.

## 2. Technologies utilisées

| Technologie | Utilisation |
|---|---|
| dbt Cloud | Développement, exécution et documentation des transformations |
| Google BigQuery | Entrepôt de données (Data Warehouse) |
| GitHub | Gestion du code source et versionnement |
| SQL | Langage de transformation des données |

## 3. Architecture du projet

Le projet repose sur plusieurs couches de transformation :

- **Sources** : données provenant des systèmes sources.
- **Staging** : nettoyage, standardisation et préparation des données.
- **Intermediate** : transformations intermédiaires et logique métier.
- **Marts** : tables finales destinées aux analyses et au reporting.

### Flux de données

```text
       SOURCES DE DONNÉES
               |
               ▼
          BIGQUERY
               |
               ▼
         DBT CLOUD
               |
               ▼
          STAGING
               |
               ▼
        INTERMEDIATE
               |
               ▼
            MARTS
               |
               ▼
       ANALYSES & REPORTING
```

## 4. Structure du repository

```text
analytics/
│
├── analyses/
├── macros/
├── models/
├── seeds/
├── snapshots/
├── tests/
├── dbt_project.yml
├── packages.yml
└── README.md
```

*La structure est indicative et doit correspondre aux dossiers réellement présents dans le repository.*

## 5. Environnement technique

- **Plateforme de développement :** dbt Cloud
- **Data Warehouse :** Google BigQuery
- **Gestion de versions :** GitHub
- **Langage de transformation :** SQL

dbt Cloud est connecté à BigQuery afin d'exécuter les transformations directement dans l'entrepôt de données.

## 6. Gestion du code avec GitHub

Le code source est centralisé dans un repository GitHub.

Le workflow de développement repose sur les étapes suivantes :

1. Création d'une branche de développement.
2. Développement des modèles SQL dans dbt Cloud.
3. Vérification des transformations.
4. Commit et Push des modifications.
5. Création d'une Pull Request.
6. Revue et validation du code.
7. Merge dans la branche principale `main`.

## 7. Tests et qualité des données

Les tests dbt permettent de contrôler la qualité et la cohérence des données transformées.

Les contrôles peuvent inclure :

- Unicité des identifiants.
- Absence de valeurs nulles sur les champs obligatoires.
- Intégrité référentielle entre les tables.
- Validité des données.
- Respect des règles métier.

## 8. Documentation

La documentation du projet est gérée depuis dbt Cloud.

Elle permet de consulter :

- Les modèles de données.
- Les descriptions des tables et colonnes.
- Les dépendances entre les modèles.
- Le lineage des transformations.
- Les tests associés aux modèles.

## 9. Objectifs du projet

- Centraliser les transformations de données.
- Structurer les données dans BigQuery.
- Garantir la qualité et la fiabilité des données.
- Faciliter la maintenance des modèles SQL.
- Assurer la traçabilité des modifications avec GitHub.
- Mettre à disposition des données exploitables pour le reporting et l'analyse.

---

**Projet :** Analytics  
**Plateforme de transformation :** dbt Cloud  
**Data Warehouse :** Google BigQuery  
**Versionnement :** GitHub
