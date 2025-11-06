
1 - Sempre que criamos uma bucket = Pasta raiz onde ficam os arquivos

2 - Dentro das buckets ficam os objetos = arquivos

3 - E cada arquivo possui uma Key: Caminho + Nome do objeto

4 - E por último o local onde a bucket foi hospedada fisicamente, por exemplo: us-west1

![[Pasted image 20251105225123.png]]

##### **Buckets Policy**

Politicas para a bucket dizendo quem pode acessar, deletar, modificar e outras coisas.

É feito através de arquivos JSON

*Exemplo de código JSON*:

{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",                                *Aqui é informado a permissão da bucket*
      "Effect": "Allow",                                                      *Aqui é informado quem pode*
      "Principal": "*",*                                                           *Quais os arquivos*
      "Action": "s3:GetObject",                                          *As ações permitidas*
      "Resource": "arn:aws:s3:::meu-bucket/ *"                   Nome da bucket*
    }
  ]
}