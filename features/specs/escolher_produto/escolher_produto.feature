#language: pt 
 
Funcionalidade: Escolher produto para compra
   Contexto: Abrir produto 

    Esquema do Cenário: Selecionar Departamento
        Dado que esteja na home
        Quando selecionar <departamento>
        Então deverá ser aberto o <departamento>

        Exemplos:
        |   departamento   |  
        | eletrodomésticos |
        | celulares        |
        | games            |
        | moda , beleza    |
        | brinquedos       |

    Cenário: Escolher produto
        Dado que esteja no departamento desejado
        Quando selecionar produto
        Então deverá ser aberto o produto