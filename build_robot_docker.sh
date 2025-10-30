#!/bin/bash
# noeud hardware, pilotes materiels

# Construire l'image Docker pour yahboomcar_nav
# Pilotes Matériels (yahboomcar_bringup): Ackman_driver_R2, Mcnamu_driver_X3 - Interface directe avec le matériel pour lire les capteurs et commander les moteurs.
docker build -t yahboomcar_bringup:latest ./src/yahboomcar_bringup/
echo "Built yahboomcar_bringup"


# Construire l'image Docker pour yahboomcar_astra
docker build -t yahboomcar_astra:latest ./src/yahboomcar_astra/
echo "Built yahboomcar_astra"

# Construire l'image Docker pour yahboomcar_laser
docker build -t yahboomcar_laser:latest ./src/yahboomcar_laser/
echo "Built yahboomcar_laser"

# Construire l'image Docker pour yahboomcar_linefollow
docker build -t yahboomcar_linefollow:latest ./src/yahboomcar_linefollow/
echo "Built yahboomcar_linefollow"

# Construire l'image Docker pour yahboomcar_voice_ctrl
docker build -t yahboomcar_voice_ctrl:latest ./src/yahboomcar_voice_ctrl/
echo "Built yahboomcar_voice_ctrl"


# Construire l'image Docker pour yahboomcar_base_node
# Odométrie (yahboomcar_base_node): base_node_R2, base_node_X3 - Calcule la position du robot à partir des données des roues.
# echec du build
docker build -t yahboomcar_base_node:latest ./src/yahboomcar_base_node/
echo "Built yahboomcar_base_node"


# Construire l'image Docker pour yahboomcar_ctrl
# Contrôle Manuel (yahboomcar_ctrl): yahboom_joy_*, yahboom_keyboard - Permet de piloter le robot avec un joystick ou un clavier.
docker build -t yahboomcar_ctrl:latest ./src/yahboomcar_ctrl/
echo "Built yahboomcar_ctrl"

# Construire l'image Docker pour yahboomcar_nav
docker build -t yahboomcar_nav:latest ./src/yahboomcar_nav/
echo "Built yahboomcar_nav"

# Construire l'image Docker pour yahboomcar_slam
docker build -t yahboomcar_slam:latest ./src/yahboomcar_slam/
echo "Built yahboomcar_slam"


