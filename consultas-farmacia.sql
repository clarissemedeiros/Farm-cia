# Questão 1: Consultar todos os clientes registrados no banco de dados
SELECT *
FROM Cliente; 

# Questão 2: Consulte o estado de todas as listas de espera que estejam em aguardo
SELECT *
FROM ListaDeEspera
WHERE status = 'Aguardando';

# Questão 3: Consultar todos os medicamentos que são analgésicos
SELECT *
FROM Medicamento
WHERE categ_terap = 'Analgésico';

# Questão 4: Consultar a lista de espera para um medicamento específico, exibindo o nome do cliente, telefone e a data de entrada na lista de espera
SELECT Cliente.nome_cliente, Cliente.telefone, ListaDeEspera.data_entrada
FROM Cliente, ListaDeEspera
WHERE Cliente.ID_cliente = ListaDeEspera.ID_lista = 1;

# Questão 5: Fazer uma média entre as compras concluídas
SELECT AVG(valor_compra) AS media_compras_concluidas
FROM Compra
WHERE status = 'Concluída';

# Questão 6: Fazer uma média entre as compras pendentes
SELECT AVG(valor_compra) AS media_compras_pendentes
FROM Compra
WHERE status = 'Pendente';

# Questão 7: Consultar um cliente (Pedro) pelo telefone, exibindo seu telefone e endereço
SELECT nome_cliente, telefone, endereco
FROM Cliente
WHERE telefone = '(31) 91234-5678';

# Questão 8: Consultar todas as compras com valor acima de R$ 100,00
SELECT * 
FROM Compra 
WHERE valor_compra > 100.00;

# Questão 9: Consultar todos os fornecedores que moram na Rua das Indústrias 
SELECT *
FROM Fornecedor 
WHERE endereco = 'Rua das Indústrias';

# Questão 10: Consultar todos os clientes que fizeram compras:
SELECT *
FROM Cliente
WHERE ID_cliente IN (
    SELECT DISTINCT ID_cliente
    FROM Compra
);
