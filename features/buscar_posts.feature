# language: pt

Funcionalidade: Buscar todos os Posts

Cenario: Obter Lista com todos os posts existentes
    Quando eu solicitar a lista de posts
    Entao recebo a lista completa

Esquema do Cenario: Obter detalhes dos posts a partir do ID
    Quando eu informar o <id> do post 
    Entao recebo o usuario, titulo e a descricao

    Exemplos:
    	|  id  |
    	|   1  |
    	|   5  |
    	|  85  |
    	| 150  |
