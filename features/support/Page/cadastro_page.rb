class CadastroPage
    include Capybara::DSL

    def go
       visit "/index.php"
    end   

    def sing_in
    click_link "Sign in"
    end

    def create(email)
        value = ""; 2.times { value << (65 + rand(25)).chr }  
        find("#email_create").set value + email
        click_button "Create an account"
    end    

    def data(info)
        #Sexo
        find("#id_gender1").click
        #Nome
        find("#customer_firstname").set info["name"]
        find("#customer_lastname").set info["last"]
        #Senha
        find("#passwd").set info["password"]
        #Data de Nasc.
        find("#days option[value='17']").select_option
        find("#months option[value='3']").select_option
        find("#years option[value='2001']").select_option
        #seleção opcional
        find("#uniform-newsletter").click
        find("#uniform-optin").click
        #Endereço
        find("#company").set info["company"]
        find("#address1").set info["address"]
        find("#city").set info["city"]
        find("#id_state option[value='32']").select_option
        find("#postcode").set info["zipcode"]
        #Telefone
        find("#phone").set info["phone"]
        find("#phone_mobile").set info["mobile"]    
    end    

    def finish
        click_button "Register"
    end


end    