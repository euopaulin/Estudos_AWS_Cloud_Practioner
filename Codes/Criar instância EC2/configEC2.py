import os

def configurar_ec2():
    
    print("Iniciando configuração do EC2...")
    
    try:
        os.system("sudo apt-get update -y")
        os.system("sudo apt-get install -y awscli")
        print("Configuração do EC2 concluída com sucesso.")
    except Exception as e:
        print(f"Ocorreu um erro durante a configuração do EC2: {e}")
    
configurar_ec2()