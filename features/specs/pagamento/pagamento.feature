#language: pt 
 
Funcionalidade: Página de pagamento
Contexto: Fechar pedido

    Esquema do Cenário: Selecionar meio de pagamento
    Dado que esteja na página de pagamento
    E que o usuário esteja logado
    E os dados estejam corretos
    Quando selecionar a <opcao_pagamento>
    E clicar no botão fechar pedido
    Então deverá seguir para <info_meio_de_pagamento>

        Exemplos:
            | opcao_pagamento         | info_meio_de_pagamento                |
            | cartao de crédito       | informar dados do cartão              |
            | boleto                  | imprimir/salvar boleto                |
            | ame                     | inserir dados cartao e usar app ame   |
            | pagar na loja           | selecionar forma de pagamento na loja |
            | pix                     | ler qr code e efetuar pagamento       |

    Esquema do Cenário: Pagamento com cartão de crédito
        Dado que estejam sendo solicitadas os dados do cartao
        E os mesmos foram informados corretamente
        Então deverá ser finalizado o pedido

    Esquema do Cenário: Pagamento com cartão de crédito Exception
        Dado que estejam sendo solicitadas os dados do cartao
        E o dado foi informado com erro <tipo_erro>
        Então deverá ser exibida a mensagem de erro <mensagem>
        
        Exemplos:
            | tipo_erro                          | mensagem                          |
            | número do cartão inválido          | número inválido                   |
            | nome impresso no cartão inválido   | nome impresso no cartão incorreto |
            | cartão vencido                     | o cartão está vencido             |
            | código de segurança inválido       | código de segurança inválido      |
            | número de parcelas não selecionado | selecione o número de parcelas    |



