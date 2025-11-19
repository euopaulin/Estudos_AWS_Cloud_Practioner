#!/bin/bash

#Esse script cria uma role IAM para ECS e associa a uma instância EC2 existente

#Cria o agente IAM Role para ECS
config_iamrole(){
    echo "Criando função IAM para ECS..."

cat > ecs-trust-policy.json <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF

aws iam create-role --role-name ecsInstanceRole --assume-role-policy-document file://ecs-trust-policy.json

aws iam attach-role-policy --role-name ecsInstanceRole --policy-arn arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role

exit_status=$?

if [ $exit_status -eq 0 ]; then
    echo "Função IAM 'ecsInstanceRole' criada com sucesso!"
else
    echo "Falha ao criar a função IAM 'ecsInstanceRole'."
    exit 1
fi

rm ecs-trust-policy.json
}

#Associa a role IAM criada à instância EC2 existente
config_ec2_profile(){
    echo "Criando perfil de instância EC2 para ECS..."

    # Você precisará do nome do perfil da instância (Instance Profile Name), que geralmente é o mesmo que o nome da Role.
aws ec2 associate-iam-instance-profile --instance-id $instance_id --iam-instance-profile Name=ecsInstanceRole --region sa-east-1

$exit_status=$?

if [ $exit_status -eq 0 ]; then
    echo "Perfil de instância EC2 associado com sucesso à instância $instance_id!"
else
    echo "Falha ao associar o perfil de instância EC2 à instância $instance_id."
fi
}

config_iamrole
config_ec2_profile