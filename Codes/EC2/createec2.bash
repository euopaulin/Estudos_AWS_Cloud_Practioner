#!/bin/bash

#Script para criar uma instância EC2 na AWS
echo "Criando instância EC2..."

ec2=$(aws ec2 run-instances \
    --image-id ami-00f943f626f580b28 \
    --count 1 \
    --instance-type t2.micro \
    --key-name Testeph \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=testeec2labcli}]')
${ec2}
if [ $? -eq 0 ]; then
    instance_id=$(echo $ec2 | jq -r '.Instances[0].InstanceId')
    echo "Instância EC2 criada com sucesso! ID da instância: $instance_id"
else
    echo "Falha ao criar a instância EC2."
fi