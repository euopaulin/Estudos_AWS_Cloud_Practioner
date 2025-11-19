#!/bin/bash

#Script para criar uma instância EC2 na AWS
echo "Criando instância EC2..."

ec2=$(aws ec2 run-instances \
    --image-id ami-077aec33f15de0896 \
    --count 1 \
    --instance-type t2.micro \
    --key-name Testeph \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=testeec2labcli}]')

exit_status=$?
instancie_id=$(echo $ec2 | jq -r '.Instances[0].InstanceId')
instance_id=$(echo $ec2 | jq -r '.Instances[0].InstanceId')

if [ $exit_status -eq 0 ]; then
    echo "Instância EC2 criada com sucesso! ID da instância: $instance_id"
else
    echo "Falha ao criar a instância EC2."
fi