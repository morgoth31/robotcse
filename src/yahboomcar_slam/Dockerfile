# Utiliser l'image ROS 2 'desktop' comme base
FROM osrf/ros:humble-desktop-full

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /root/ros2_ws

# Copier uniquement le code source dans le conteneur
# Ceci est fait avant la compilation pour optimiser le cache Docker
COPY . ./src

# Sourcer ROS 2, installer les dépendances et compiler le code
# Note : 'RUN' exécute les commandes lors du 'docker build'
RUN apt-get update && \
    rosdep install -i --from-path src --rosdistro humble -y && \
    rm -rf /var/lib/apt/lists/*
#RUN    rm -rf /var/lib/apt/lists/*

# (Optionnel) Définir la commande par défaut qui sera lancée
# Si vous définissez cela, vous n'avez pas besoin de spécifier la commande dans 'docker run'
# CMD ["bash", "-c", "source /root/ros2_ws/install/setup.bash && ros2 run votre_package votre_noeud"]