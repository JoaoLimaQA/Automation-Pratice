class AdicionandoPage
    include Capybara::DSL

    def catalogo
        click_link "Dresses" 
    end

    def choice
        find("#group_1, option[value='3']")
        find("#color_8").click
    end    

    def select_iten
        find(:xpath, "(//a[contains(@class,'product-name')])[5]").click
    end

    def add_cart
        find("button[name='Submit']").click
    end   
end

class AddNovoPage
    include Capybara::DSL

    def catalogo
        click_link "T-shirts"
    end  

    def select_iten
        find(:xpath, "//a[@class='product-name'][contains(.,'Faded Short Sleeve T-shirts')]").click
    end

    def choice
        find("#group_1, option[value='2']")
        find("#color_14").click
    end    

    def cart
      click_link "Cart"
    end  

    def cash
       find("#total_price").text
    end

    def head
        find(".page-heading").text
    end
    
    def terms
        find("#uniform-cgv").click
    end

    def checkout
        click_link_or_button "Proceed to checkout"
    end

    def pay
        click_link "Pay by bank wire"
    end

    def conf_pay
        find(".cheque-indent").text
    end
     
    def bank
        find(".page-subheading").text
    end

end    