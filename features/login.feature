#language: pt
@site
    Funcionalidade: Fazendo o Login
        Para que um cliente possa conprar em nosso site  
        Sendo que ele é um cliente cadastrado
        Pode fazer o Login

@happy_login
    Cenario: login com sucesso
        Dado que digito meus dados de login "joaopaulo@teste.com.br" e "pwd123"
        Quando clico no botão Sing In
        Então devo entrar na minha conta e ver o nome do usuário "João Lima"
@bad_login
    Esquema do Cenario: Login sem sucesso
        Dado que digito meus dados de login <email> e <password>
        Quando clico no botão Sing In
        Então devo ver a <notificacao> de erro

    Exemplos:
      | email                    | password   | notificacao                  |
      | "joao@test.com"          | "pwd123"   | "Authentication failed."     |
      | ""                       | "pwd123"   | "An email address required." |
      | "joaopaulo@teste.com.br" | "password" | "Authentication failed."     |
      | "joaopaulo@test.com.br"  | ""         | "Password is required."      |
