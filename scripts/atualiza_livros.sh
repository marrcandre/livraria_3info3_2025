#!/bin/bash

# Livro 1
curl -X PUT http://localhost:19003/api/livros/1/ \
  -H "Content-Type: application/json" \
  -d '{
        "titulo": "O Código Limpo",
        "quantidade": 100,
        "preco": "10.00",
        "categoria": 1,
        "editora": 1,
        "autores": [1]
      }'

# Livro 2
curl -X PUT http://localhost:19003/api/livros/2/ \
  -H "Content-Type: application/json" \
  -d '{
        "titulo": "O Codificador Limpo",
        "quantidade": 100,
        "preco": "20.00",
        "categoria": 1,
        "editora": 1,
        "autores": [1]
      }'

# Livro 3
curl -X PUT http://localhost:19003/api/livros/3/ \
  -H "Content-Type: application/json" \
  -d '{
        "titulo": "As Crônicas de Nárnia",
        "isbn": null,
        "quantidade": 100,
        "preco": "30.00",
        "categoria": 2,
        "editora": 3,
        "autores": [3]
      }'

# Livro 4
curl -X PUT http://localhost:19003/api/livros/4/ \
  -H "Content-Type: application/json" \
  -d '{
        "titulo": "O Senhor dos Anéis",
        "quantidade": 100,
        "preco": "40.00",
        "categoria": 2,
        "editora": 3,
        "autores": [2]
      }'

# Livro 5
curl -X PUT http://localhost:19003/api/livros/5/ \
  -H "Content-Type: application/json" \
  -d '{
        "titulo": "O Hobbit",
        "quantidade": 100,
        "preco": "50.00",
        "categoria": 2,
        "editora": 10,
        "autores": [2]
      }'
