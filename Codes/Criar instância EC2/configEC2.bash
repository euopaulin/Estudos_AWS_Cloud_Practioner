#!/bin/bash

#Script para configurar EC2 para rodar containers Linux na AWS

echo "Iniciando script..."

config(){

sudo yum update -y

sudo yum install docker -y

sudo service docker start

sudo usermod -a -G docker ec2-user

sudo yum install -y ecs-init

sudo sh -c "echo ECS_CLUSTER=TestePH >> /etc/ecs/ecs.config"

sudo service ecs start

echo "A instância EC2 está agora configurada e se registrará no cluster TestePH."
}

config