#language: pt 
 
Funcionalidade: Página de produto
    Contexto: Comprar 
    Esquema do Cenário:: Realizar Compra
        Dado que esteja na página do produto
        Quando informar um cep válido
        E calcular o frete
        E clicar no botão comprar
        Então deverá ser adicionado o produto à cesta


    Esquema do Cenário: Realizar Compra Exception  
        Dado que esteja na página do produto
        E o cep foi informado com erro <tipo_erro>
        Então deverá ser exibida a mensagem de erro <mensagem>

        | tipo_erro       |  mensagem                  |
        | cep inexistente | o cep informado não existe |
        | cep em branco   | favor informar o cep       |