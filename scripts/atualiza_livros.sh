#!/bin/bash

# Livro 1
echo "Atualizando Livro ID 1"
curl -X PATCH http://localhost:19003/api/livros/1/ \
  -H "Content-Type: application/json" \
  -d '{
        "quantidade": 100,
        "preco": "10.00"
      }'

# Livro 2
echo "Atualizando Livro ID 2"
curl -X PATCH http://localhost:19003/api/livros/2/ \
  -H "Content-Type: application/json" \
  -d '{
        "quantidade": 100,
        "preco": "20.00"
      }'

# Livro 3
echo "Atualizando Livro ID 3"
curl -X PATCH http://localhost:19003/api/livros/3/ \
  -H "Content-Type: application/json" \
  -d '{
        "quantidade": 100,
        "preco": "30.00"
      }'

# Livro 4
echo "Atualizando Livro ID 4"
curl -X PATCH http://localhost:19003/api/livros/4/ \
  -H "Content-Type: application/json" \
  -d '{
        "quantidade": 100,
        "preco": "40.00"
      }'

# Livro 5
echo "Atualizando Livro ID 5"
curl -X PATCH http://localhost:19003/api/livros/5/ \
  -H "Content-Type: application/json" \
  -d '{
        "quantidade": 100,
        "preco": "50.00"
      }'
