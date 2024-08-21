# 📊 Banco de Dados de Clientes e Pedidos

Este documento resume as operações e estrutura das tabelas `clientes` e `pedidos` em um banco de dados PostgreSQL.

## 🗂️ Estrutura do Banco de Dados

### Tabela: `clientes`

- 🔑 `id` (SERIAL): Chave primária.
- 📝 `nome` (VARCHAR(255)): Nome completo do cliente.
- 📧 `email` (VARCHAR(255)): E-mail do cliente.
- 🎂 `data_nascimento` (DATE): Data de nascimento.
- 🏙️ `cidade` (VARCHAR(100)): Cidade de residência.

### Tabela: `pedidos`

- 🔑 `pedidoId` (SERIAL): Chave primária.
- 📅 `dataPedido` (DATE): Data do pedido.
- 💰 `valorTotal` (DECIMAL(10,2)): Valor total do pedido.
- 👤 `clienteId` (INTEGER): Chave estrangeira, referência ao `id` em `clientes`.
