# FROM -> Copia uma imagem do Docker Hub (Repositório de Imagens);
FROM node:14

# WORKDIR -> Define as pastas e subpastas
WORKDIR /

# IMPORTANTE -> O arquivo package.json que irá ser criado, não terá nome e nem scripts personalizados, 
# caso queira definir algo antes, crie seu arquivo aqui e copie ele para a imagem, exemplo: COPY package*.json ./
RUN npm init -y

RUN npm install express

# COPY -> Copia uma pasta e cola ela dentro do container
# COPY <pasta que quer copiar> <pasta dentro do container>
# '.' é a pasta raiz
COPY . .

# EXPOSE -> Expõe a imagem em alguma porta do Docker
EXPOSE 5000

CMD [ "node", "index.js" ]



