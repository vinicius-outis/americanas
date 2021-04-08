#language: pt 
 
Funcionalidade: Página da Cesta
    Esquema do Cenário:: Confirmar compra
    Dado que esteja na página da cesta
    E que o usuário esteja <modo_usuario>
    Quando selecionar a quantidade
    E clicar no botão comprar
    Então deverá seguir para a página <pagina_correspondente>

     Exemplos:
        | modo_usuario | pagina_correspondente  |
        | logado       | pagamento              |
        | deslogado    | login/cadastro         |