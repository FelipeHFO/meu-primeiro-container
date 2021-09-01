# Passo a passo

### Primeiro crie seu arquvo Dockerfile

- Nele irá conter as configurações e deveres que sua imagem irá realizar

### Crie seus app e os arquivos de dependências dele

- Neste exemplo, criei uma aplicação em NodeJS mas faça com que te deixar mais confortável

# Comandos do Docker

### Para criar sua imagem, basta executar o comando logo abaixo:

`docker build . -it <nome da sua imagem>`

### Para verificar se ela foi criada, basta executar o comando abaixo:

`docker images`

### Para executar nossa imagem, basta executar o comando abaixo:

`docker run -p 5000:5000 -d <nome da sua imagem>`

- O comando '-p' é para definir as portas do seu computador com a do container, respectivamente.
- O comando '-d' é para criar o container mas deixar seu terminal livre para inserir comandos.

### Para verificar os logs da sua imagem, basta executar o comando abaixo:

`docker logs <id do seu container>`

### Para acessar o terminal da sua imagem, basta executar o comando abaixo:

`docker exec -it <id do seu container> /bin/bash`

- Nele você pode fazer mudanças em arquivos, instalar mais dependências e outros aplicativos.
- IMPORTANTE -> Como essas instalações não fazem parte do dockerfile, caso o container venha a cair ou seja parado, essas alterações serão perdidas.

### Para remover alguma imagem

`docker rmi <nome da sua imagem>`

### Para remover algum container

`docker rm <id do seu container>`
