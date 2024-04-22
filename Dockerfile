# Utilisation d'une image Node.js comme base
FROM node:latest AS builder

# Création d'un répertoire de travail
WORKDIR /app

# Copie des fichiers source dans le conteneur
COPY accounting.js accounting.min.js /app/

# Définition de la commande par défaut pour l'exécution du conteneur
CMD ["node", "accounting.js"]
