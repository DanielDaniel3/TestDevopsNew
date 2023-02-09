# spécification de l'image de base avec laquelle nous allons démarrer 
FROM python:3.8

# Définition du répertoire de travail pour l'application 
WORKDIR /usr/src/app

# Copie de tous les fichiers dans le conteneur 
COPY . .

# Installation des dépendances 
RUN pip install --no-cache-dir -r requirements.txt

# Définitio du numéro de port que le conteneur doit exposer 
EXPOSE 5000

# Commande pour exécuter l'application 
CMD ["python", "./app.py"]