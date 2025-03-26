# CSFA Frontend Dev Container

Este repositório contém a configuração de um contêiner Docker com as dependências necessárias para o desenvolvimento do frontend do site do **Colégio São Francisco de Assis**.

## 📦 Sobre a imagem

A imagem é baseada na versão **Node.js 20.18.3 (alpine)** e tem como objetivo facilitar o desenvolvimento local, garantindo que todas as dependências estejam corretamente instaladas e isoladas.

## 📁 Estrutura da imagem

- Utiliza `node:20.18.3-alpine` como base.
- Copia apenas `package.json` e `package-lock.json` para otimizar o cache do Docker.
- Instala as dependências com `npm ci` para garantir builds consistentes.
- Define `/app` como diretório de trabalho.
- Espera que o volume externo monte o código-fonte sobre `/app`, aproveitando os `node_modules` já instalados na imagem.
- Executa o script de desenvolvimento padrão com `npm run dev`.

## 🚀 Como usar

### 1. Build da imagem

```bash
docker build -t csfa-frontend .
```

### 2. Rodar o contêiner

```bash
docker run -it --rm -v $(pwd):/app -p 3000:3000 csfa-frontend
```

> 🔄 O código-fonte será montado como volume em tempo real. Qualquer alteração no host será refletida no contêiner.

## 🧰 Pré-requisitos

- Docker instalado e em execução.
- Código-fonte do frontend disponível na mesma pasta do `Dockerfile`.

## 📝 Autor

Colégio São Francisco de Assis  
Versão 1.0