#!/bin/bash

# Actualizar paquetes
sudo yum update -y

# Instalar Docker
sudo yum install -y docker

# Iniciar y habilitar Docker
sudo service docker start
sudo systemctl enable docker

# Agregar el usuario actual al grupo Docker
sudo usermod -aG docker $(whoami)

# Mensaje de confirmación
echo "Docker instalado correctamente."
