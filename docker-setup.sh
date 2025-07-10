#!/bin/bash

echo "🚀 Configurando o projeto DT Money Backend..."

if [ ! -f .env ]; then
    echo "📝 Criando arquivo .env..."
    cp env.example .env
    echo "✅ Arquivo .env criado!"
else
    echo "ℹ️  Arquivo .env já existe"
fi

if [ ! -d "prisma/db" ]; then
    echo "📁 Criando diretório para o banco SQLite..."
    mkdir -p prisma/db
    echo "✅ Diretório criado!"
else
    echo "ℹ️  Diretório prisma/db já existe"
fi

echo "🐳 Construindo e executando com Docker Compose..."
docker-compose up --build

echo "✅ Setup concluído!" 