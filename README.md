# Estudos AWS Cloud Practitioner

Repositório de apoio para estudos ao exame **AWS Certified Cloud Practitioner**. Contém anotações, resumos e exemplos práticos organizados por tópicos — ideal para revisar conceitos, políticas de preços, serviços principais e segurança.

## Estrutura do repositório

- `Exam content/` — Materiais de estudo, divididos por temas (Faturamento, Segurança, Tecnologia, etc.).
- `Codes/` — Scripts e exemplos (por exemplo, `createec2.bash`).
- `Images/` — Imagens e diagramas usados nos estudos.
- `README.md` — Este arquivo.

## Plano de estudos sugerido

1. Visão geral dos conceitos de nuvem e modelos (público, privado, híbrido).
2. Serviços principais: Compute, Storage, Database, Networking.
3. Segurança e conformidade: responsabilidade compartilhada, IAM e proteção de dados.
4. Faturamento e suporte: modelos de preço, ferramentas de custo e planos de suporte.
5. Revisão de perguntas práticas e simulações de exame.

Sugestão prática: estude 1-2 tópicos por dia, faça anotações em `Exam content/` e use os scripts em `Codes/` para reforçar aspectos práticos (quando aplicável).

## Como usar este repositório

1. Abra a pasta do projeto no seu editor (VS Code ou similar).
2. Leia os arquivos dentro de `Exam content/` conforme o plano acima.
3. Para executar scripts Bash (ex.: `Codes/createec2.bash`) em Windows, use WSL, Git Bash ou um ambiente Linux:

	 - WSL (Windows Subsystem for Linux) — abra o terminal WSL e execute:

		 bash Codes/createec2.bash

	 - Git Bash — abra Git Bash na raiz do repositório e execute:

		 ./Codes/createec2.bash

Observação: os scripts podem requerer credenciais AWS configuradas (por exemplo via `aws configure`) e permissões apropriadas.

## Recursos recomendados

- Documentação oficial da AWS (https://docs.aws.amazon.com)
- AWS Free Tier para prática prática
- Cursos introdutórios e simulados (A Cloud Guru, Coursera, Udemy)

## Como contribuir

Contribuições são bem-vindas:

1. Abra uma issue descrevendo a sugestão ou correção.
2. Submeta um pull request com mudanças pequenas e um resumo claro.

Mantenha o conteúdo em português preferencialmente e organize novos materiais dentro de `Exam content/` em subpastas temáticas.

## Licença

Este projeto está disponível sem licença específica por enquanto. Se quiser sugerir uma licença (por exemplo MIT), abra uma issue.

## Contato

Para dúvidas ou sugestões, abra uma issue no repositório.

---

Boa sorte nos estudos — foco na compreensão dos conceitos, não só na memorização.

