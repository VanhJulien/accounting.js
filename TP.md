# Pipeline Jenkins pour Projet accounting.js

Ce document décrit le Pipeline Jenkins mis en place pour automatiser le processus de déploiement du projet accounting.js. Le Jenkinsfile associé est utilisé pour définir les étapes du Pipeline.

## Étapes du Pipeline

1. **Installation des dépendances de production et construction du projet :**
   Cette étape consiste à installer les dépendances nécessaires au bon fonctionnement du projet et à construire le projet. Cela inclut notamment la minification du fichier accounting.js.

2. **Installation des dépendances de test et exécution des tests :**
   Les dépendances requises pour les tests sont installées, et les tests existants dans l'application sont exécutés. Toutefois, il est important de noter que les tests ne fonctionnent pas correctement et nécessitent des corrections.

3. **Déploiement de l'application sur npm :**
   Une fois les tests passés avec succès, l'application est déployée sur npm. Des informations d'identification sont nécessaires pour ce déploiement. Cela assure que notre package est toujours à jour et accessible à tous les utilisateurs en cas de changement.

4. **Création de l'artifact :**
   Enfin, un artifact est créé à partir du script principal, accounting.js. Il est envisageable de publier cet artifact sur un registry tel que ECR ou Nexus avec des ajustements supplémentaires.

## Remarques supplémentaires

- Il est recommandé de résoudre les problèmes rencontrés avec les tests pour garantir la qualité du code.
- Des améliorations futures pourraient inclure l'ajout de publications sur d'autres registries et l'optimisation du processus de déploiement.

Ce Pipeline Jenkins vise à automatiser efficacement le processus de déploiement du projet accounting.js, garantissant ainsi une livraison rapide et fiable des mises à jour.
