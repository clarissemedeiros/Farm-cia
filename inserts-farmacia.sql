INSERT INTO Cliente (ID_cliente, telefone, endereco, nome_cliente)
VALUES (1, '(11) 98765-4321', 'Rua das Flores', 'João');
INSERT INTO Cliente (ID_cliente, telefone, endereco, nome_cliente)
VALUES (2, '(21) 99876-5432', 'Avenida Central', 'Maria');
INSERT INTO Cliente (ID_cliente, telefone, endereco, nome_cliente)
VALUES (3, '(31) 91234-5678', 'Praça da Liberdade', 'Pedro');
INSERT INTO Cliente (ID_cliente, telefone, endereco, nome_cliente)
VALUES (4, '(41) 92345-8765', 'Travessa das Pedras', 'Ana');
INSERT INTO Cliente (ID_cliente, telefone, endereco, nome_cliente)
VALUES (5, '(51) 93214-5678', 'Alameda das Árvores', 'Carlos');

INSERT INTO Medicamento (ID_medic, nome_medic, fabricante, subst_ativa, categ_terap, ListaDeEspera_ID_lista)
VALUES (1, 'Paracetamol', 'Farmacom', 'Paracetamol', 'Analgésico', 1);
INSERT INTO Medicamento (ID_medic, nome_medic, fabricante, subst_ativa, categ_terap, ListaDeEspera_ID_lista)
VALUES (2, 'Amoxicilina', 'RemédioBom', 'Amoxicilina', 'Antibiótico', 2);
INSERT INTO Medicamento (ID_medic, nome_medic, fabricante, subst_ativa, categ_terap, ListaDeEspera_ID_lista)
VALUES (3, 'Omeprazol', 'PharmaMed', 'Omeprazol', 'Antiácido', 3);
INSERT INTO Medicamento (ID_medic, nome_medic, fabricante, subst_ativa, categ_terap, ListaDeEspera_ID_lista)
VALUES (4, 'Dipirona', 'MedFarma', 'Dipirona', 'Analgésico', 4);
INSERT INTO Medicamento (ID_medic, nome_medic, fabricante, subst_ativa, categ_terap, ListaDeEspera_ID_lista)
VALUES (5, 'Captopril', 'Medicor', 'Captopril', 'Anti-hipertensivo', 5);

INSERT INTO Fornecedor (ID_fornec, nome_fornec, endereco, contato)
VALUES (1, 'XYZ Pharma', 'Rua das Indústrias', '(11) 98765-4321');
INSERT INTO Fornecedor (ID_fornec, nome_fornec, endereco, contato)
VALUES (2, 'FarmaGen', 'Avenida Comercial', '(21) 99876-5432');
INSERT INTO Fornecedor (ID_fornec, nome_fornec, endereco, contato)
VALUES (3, 'MegaMed', 'Praça dos Laboratórios', '(31) 91234-5678');
INSERT INTO Fornecedor (ID_fornec, nome_fornec, endereco, contato)
VALUES (4, 'BioPharm', 'Rua das Indústrias', '(41) 92345-8765');
INSERT INTO Fornecedor (ID_fornec, nome_fornec, endereco, contato)
VALUES (5, 'PharmaPlus', 'Rua das Indústrias', '(51) 93214-5678');

INSERT INTO Compra (id, data_compra, valor_compra, status, Cliente_ID_cliente)
VALUES (1, '2023-07-01', 150.50, 'Concluída', 1);
INSERT INTO Compra (id, data_compra, valor_compra, status, Cliente_ID_cliente)
VALUES (2, '2023-07-05', 80.25, 'Concluída', 2);
INSERT INTO Compra (id, data_compra, valor_compra, status, Cliente_ID_cliente)
VALUES (3, '2023-07-10', 200.00, 'Pendente', 3);
INSERT INTO Compra (id, data_compra, valor_compra, status, Cliente_ID_cliente)
VALUES (4, '2023-07-15', 45.75, 'Concluída', 4);
INSERT INTO Compra (id, data_compra, valor_compra, status, Cliente_ID_cliente)
VALUES (5, '2023-07-20', 100.00, 'Pendente', 5);

INSERT INTO ListaDeEspera (ID_lista, status, data_entrada, Cliente_ID_cliente)
VALUES (1, 'Aguardando', '2023-07-02', 1);
INSERT INTO ListaDeEspera (ID_lista, status, data_entrada, Cliente_ID_cliente)
VALUES (2, 'Aguardando', '2023-07-06', 2);
INSERT INTO ListaDeEspera (ID_lista, status, data_entrada, Cliente_ID_cliente)
VALUES (3, 'Aguardando', '2023-07-11', 3);
INSERT INTO ListaDeEspera (ID_lista, status, data_entrada, Cliente_ID_cliente)
VALUES (4, 'Aguardando', '2023-07-16', 4);
INSERT INTO ListaDeEspera (ID_lista, status, data_entrada, Cliente_ID_cliente)
VALUES (5, 'Aguardando', '2023-07-21', 5);