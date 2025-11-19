#!/bin/bash

#Script para conectar container Linux a uma instância EC2 na AWS

echo "Iniciando script..."

config(){
    
    USER=$(whoami)

    echo "Configurando Docker..."
    sudo apt-get update
    sudo apt-get install -y docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
    sudo usermod -aG docker $USER
    newgrp docker
    echo "Docker configurado com sucesso!"
}

config