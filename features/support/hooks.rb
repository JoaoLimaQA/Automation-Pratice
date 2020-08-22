Before do
    page.current_window.resize_to(1800, 900)


    @addplus_page = AddNovoPage.new
    @login_page = LoginPage.new
    @cadastro_page = CadastroPage.new
    @add_page = AdicionandoPage.new
end

Before("@cart") do
    @cadastro_page.go
    @cadastro_page.sing_in
    @login_page.happy_login("joaopaulo@teste.com.br", "pwd123")
    @login_page.btn_login
    @login_page.cart
end


Before("@go_login") do
    @cadastro_page.go
    @cadastro_page.sing_in
    @login_page.happy_login("joaopaulo@teste.com.br", "pwd123")
    @login_page.btn_login
end

Before("@site") do
    @cadastro_page.go
    @cadastro_page.sing_in
end   
