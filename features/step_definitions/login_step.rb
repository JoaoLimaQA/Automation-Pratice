

Dado("que digito meus dados de login {string} e {string}") do |email, senha|
    @login_page.happy_login(email, senha)
end
  
Quando("clico no botão Sing In") do
   @login_page.btn_login
end
  
Então("devo entrar na minha conta e ver o nome do usuário {string}") do |usuario|
    user = find(".account").text
    expect(user).to have_text usuario
end

Então("devo ver a {string} de erro") do |notificacao|
 expect(page).to have_text notificacao
  end