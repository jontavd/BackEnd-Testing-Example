# language: pt

Funcionalidade: Deletar Post

Esquema do Cenario: Deletar Post Existente

    Quando eu passar um <id> de um post para deletar
    Entao confirmo que o post foi deletado

    Exemplos:
    |  id  |
    |   7  |
    |  17  |
    | 121  |
    |   3  |

Esquema do Cenario: Alterar um post existente 

    Quando eu escolher um <id> de um post para alterar 
    Entao altero o titulo do post para 'atualizado'

    Exemplos:
    |  id  |
    |  14  |
    |  89  |
    | 239  |
    |  67  |