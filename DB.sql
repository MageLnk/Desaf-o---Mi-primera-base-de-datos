-- Creando DB

CREATE DATABASE desafio_gabriel_lopez_170;

-- Conectando a la DB

\c desafio_gabriel_lopez_170;

-- Crear tabla

CREATE TABLE clientes(
  id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  nombre VARCHAR,
  telefono VARCHAR(16),
  empresa VARCHAR(50),
  prioridad SMALLINT NOT NULL CHECK (prioridad >= 1 AND prioridad <= 10)
);

-- Checkeo de tabla

SELECT * FROM clientes;

-- Ingresar 5 clientes distintos

INSERT INTO clientes (email, nombre, telefono, empresa, prioridad) VALUES ('gabriel@notengocorreo.com', 'Gabriel', '123456789', 'Google', 10),
('aguero@notengocorreo.com', 'Aguero', '456789123', 'Facebook', 5),('marcela@notengocorreo.com', 'Marcela', '987654321', 'Amazon', 9),
('raul@notengocorreo.com', 'Raúl', '742971269', 'Microsoft', 8),('pedro@notengocorreo.com', 'Pedro', '156465757', 'Apple', 7);

-- Checkeo de tabla

SELECT * FROM clientes;

-- Selecciona los 5 clientes de mayor prioridad

SELECT * FROM clientes ORDER BY prioridad DESC limit 3;

-- Selecciona de la tabla clientes, una prioridad o una empresa.

SELECT * FROM clientes WHERE prioridad = 10 OR empresa = 'Facebook';

-- Terminado