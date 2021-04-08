#language: pt 
 
Funcionalidade: Minha Conta
    Contexto: Gerenciar conta 
        Esquema do Cenário: Alterar dados
            Dado que esteja no menu Cadastro dentro de Minha Conta
            Quando o usuário alterar o valor do <campo>
            E clicar no botão salvar alterações
            Então os dados deverão ser atualizados conforme o valor digitado pelo usuário

            Exemplos:
                |      campo       |
                |  nome completo   |
                |     apelido      | 
                |      cpf         |
                |      sexo        |
                |     datanasc     |
                | telefone contato |
                | telefone celular |
        
        Esquema do Cenário: Alterar dados Exception
            Dado que esteja no menu Cadastro dentro de Minha Conta
            Quando o usuário informar um valor inválido para o <campo>
            E clicar no botão salvar alterações
            Então deverá ser exibida a <mensagem_erro>

            Exemplos:
                |          campo               |              mensagem_erro                 |
                | cpf inválido                 | CPF inválido.                              |
                | nome e sobrenome inválido    | Nome inválido.                             |
                | apelido inválido             | Apelido inválido                           |
                | data nascimento inválida     | Data de nascimento inválida.               |
                | telefone contato inválido    | Telefone de contato inválido.              |
                | telefone celular inválido    | Telefone celular inválido.                 |
                | cpf em branco                | É necessário informar o cpf                |
                | apelido                      | É necessário informar o apelido            |
                | data de nascimento em branco | É necessário informar a data de nascimento |
                | telefone de contato vazio    | É necessário informar o telefone           |
                | telefone celular  vazio      | É necessário informar o celular            |

