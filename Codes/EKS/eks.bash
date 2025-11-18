#!/bin/bash

#Script para criar um container no Linux e conectar ao EKS na AWS

echo "Iniciando script..."

config_docker(){

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

container_linux(){

    echo "Criando container Linux..."
    docker run -dit --name Meucontainer -p 8081:81 ubuntu:latest /bin/bash
    if [ $? -eq 0 ]; then
        echo "Container Linux criado com sucesso!"
    else
        echo "Falha ao criar o container Linux."
    fi
}

config_docker
container_linux