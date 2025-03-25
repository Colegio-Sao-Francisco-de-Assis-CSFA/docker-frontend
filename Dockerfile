FROM node:20.18.3-alpine

LABEL \
  version="1.0" \
  owner="Colégio São Francisco de Assis" \
  description="Container com as dependências de FrontEnd do site do CSFA"

WORKDIR /app

# Copia apenas os arquivos de dependências para aproveitar cache de build
COPY package.json ./
# COPY package-lock.json ./  # opcional, mas recomendado

# Instala as dependências
RUN npm install

# EXPOSE 3000

# O volume externo vai montar o código-fonte por cima de /app
# Mas os node_modules já estarão instalados na imagem
CMD ["npm", "run", "dev"]
