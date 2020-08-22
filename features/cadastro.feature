#language :pt

Funcionalidade: Cadastro de Clientes
        Para que um cliente possa comprar em nosso site
        Sendo que ele não tem um cadastro
        Posso fazer um cadastro

@cadastro
    Esquema do Cenario: Cadastrando e Informando dados pessoais
    Dado que estou no site
    Quando clico o Sing in
    E digito um email "joaopaulo@test.com.br"
    E que coloco meus <dados> pessoais
    E clico no botão Register
    Então vejo a menssagem "Welcome to your account. Here you can manage all of your personal information and orders."


    Exemplos:
      |  dados              |
      | "informacoes"       |  