CREATE DATABASE IF NOT EXISTS Sistema_completo
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE Sistema_completo;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    email VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL UNIQUE,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    nome_usuario VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    categoria VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO categorias (nome_categoria) VALUES ('Eletrônicos');
INSERT INTO categorias (nome_categoria) VALUES ('Roupas');
INSERT INTO categorias (nome_categoria) VALUES ('Alimentos');
INSERT INTO categorias (nome_categoria) VALUES ('Livros');
INSERT INTO categorias (nome_categoria) VALUES ('Brinquedos');
INSERT INTO categorias (nome_categoria) VALUES ('Utensilhos');
INSERT INTO categorias (nome_categoria) VALUES ('Todos');

select * from usuarios;
select * from produtos;
SELECT * FROM categorias;
