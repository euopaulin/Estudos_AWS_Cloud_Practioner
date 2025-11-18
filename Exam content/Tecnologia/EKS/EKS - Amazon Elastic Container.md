Usa Kubernetes

Por que usar containers?

Containers = Cost otimization

Imagem = Código e dependências
- Coloca tudo no container para aplicação, sem a necessidade de um manual de instalação.

Diferença entre VM e Container:
![[Pasted image 20251118104652.png]]

O **EKS** (Elastic Kubernetes Service) é a ferramenta de **orquestração** da AWS para o **Kubernetes (K8s)**, e o K8s tem como objetivo principal **gerenciar, escalar e implantar containers**.

---

**Fluxo de Trabalho Simplificado**

1. Você cria o seu **container** (ex: Docker).
    
2. Armazena a imagem em um registro (ex: **ECR**).
    
3. Usa configurações do K8s (ex: **Deployment** em YAML) para apontar para essa imagem.
    
4. O **EKS** gerencia o cluster K8s, que usa objetos como **Pods** para executar seus containers nos **Worker Nodes** (EC2 ou Fargate).

**Diferença entre ECS e EKS**

|**Característica**|**Amazon ECS (Elastic Container Service)**|**Amazon EKS (Elastic Kubernetes Service)**|
|---|---|---|
|**Tecnologia**|Orquestrador **nativo** da AWS.|Orquestrador de **Kubernetes** (Open Source).|
|**Complexidade**|Geralmente **mais simples** de configurar e gerenciar.|Curva de aprendizado **mais acentuada** (K8s).|
|**Integração**|Forte e nativa com serviços AWS.|Padrão da indústria; oferece maior flexibilidade e portabilidade entre nuvens.|
|**Recomendado**|Para quem prefere simplicidade, gerenciamento AWS-native e não precisa da flexibilidade total do Kubernetes.|Para quem precisa de padronização K8s, flexibilidade, ou já possui _expertise_ em Kubernetes.|
