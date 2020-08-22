class LoginPage
    include Capybara::DSL

    def happy_login (email, senha)
        find("#email").set email
        find("#passwd").set senha
    end

    def btn_login
      find(".icon-lock").click
    end

    def cart
      click_link "Cart"
    end


end