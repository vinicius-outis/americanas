#language: pt 
 
Funcionalidade: Autenticação
    Contexto: Acesso
        Dado que esteja na home
 
        Esquema do Cenário: Cadastro
            Quando realizar cadastro 
            Então deverá ser exibido o nome do usuário no header
     
        
        Esquema do Cenário: Cadastro Exception
            Quando realizar cadastro com erro <tipo_erro>
            Então deverá ser exibida a mensagem de erro <mensagem>
 
            Exemplos:
                |          tipo_erro           | mensagem                                   |
                | email inválido               | E-mail inválido.                           |
                | senha curta                  | É necessário atender os requisitos de senha|
                | cpf inválido                 | CPF inválido.                              |
                | nome e sobrenome inválido    | Nome inválido.                             |
                | data nascimento inválida     | Data de nascimento inválida.               |
                | telefone inválido            | Telefone inválido.                         |
                | email em branco              | É necessário informar o email.             |
                | senha em branco              | É necessário definir uma senha             |
                | cpf em branco                | É necessário informar o cpf                |
                | nome e sobrenome em branco   | É necessário informar o nome               |
                | data de nascimento em branco | É necessário informar a data de nascimento |
                | sexo não informado           | É necessário escolher um sexo              |
                | telefone em branco           | É necessário informar o telefone           |

        Esquema do Cenário: Login
            Dado que esteja na home
            Quando realizar login com usuário <usuario> e senha <senha>
            Então o nome do usuário deverá ser exibido no header
 
            Exemplos:
                | usuario | senha |
                | user    | 12345 |
 
        Esquema do Cenário: Login Exception
            Quando realizar login com usuário <usuario> e senha <senha>
            Então deverá ser exibida a mensagem de erro <mensagem>
 
            Exemplos:
                | usuario           | senha           | mensagem             |
                |                   | 12345           | Campo obrigatório.   |
                | Usuário inválido  | 12345           | Usuário inexistente. |
                |     usuário       | Senha incorreta | Senha incorreta.     |
    