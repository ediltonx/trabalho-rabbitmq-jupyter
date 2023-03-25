# inf016-backup
# backup do trabalho de rabbitmq

NSTRUÇÕES

1- baixar a imagem através do seguinte comando:

docker pull ediltonsjr/inf016:latest

2- iniciar o container com o comando abaixo:

docker run --rm --name teste  -p 5672:5672 -p 15672:15672 -p 8888:8888 ediltonsjr/inf016

3- acessar os serviços seguintes endereços:

http://localhost:15672/ - Rabbitmq

http://localhost:8888/lab  - Jupyter Lab

Caso deseje montar localmente a imagem, use o comando:

docker build -t <nome-da-imagem> .
