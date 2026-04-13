# Dockerfile — Expense Tracker (Node.js)
# Student: Rosemène Jean François (rosemene3426)

# TÂCHE 1: Image de base légère Node.js alpine
FROM node:20-alpine

# TÂCHE 2: Répertoire de travail
WORKDIR /app

# TÂCHE 3: Copier les fichiers de dépendances
COPY package*.json ./

# TÂCHE 4: Installer les dépendances (déterministe)
RUN npm ci

# TÂCHE 5: Copier le code source
COPY src/ ./src/

# TÂCHE 6: Exposer le port
EXPOSE 3000

# TÂCHE 7: Commande de démarrage
CMD ["node", "src/server.js"]
