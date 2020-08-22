Dado("que estou no carrinho e verifico se meu iten é o {string}") do |iten|
    steps %{ 
        Dado que seleciono o catologo "DRESSES"
        Quando seleciono o item "Printed Summer Dress"
        E seleciono minhas preferências
        E adiciono ao carrinho
    }
    @addplus_page.cart
   conf = find("table tbody tr", text: "Printed Summer Dress")
   expect(conf).to have_text iten
end
  
Quando("confirmo o valor da compra de {string}") do |total|
    @addplus_page.cash
    expect(@addplus_page.cash).to eql total
end
                                                                                         
Quando("clico no botão Proceed to checkout") do
    @addplus_page.checkout
end
  
Quando("valido a tela de endereço e clico no botão Proceed to checkout") do
    @addplus_page.head
    expect(@addplus_page.head).to eql "ADDRESSES"
    @addplus_page.checkout
end
  
Quando("valido a tela de entrega confirmo os termos e clico no botão Proceed to checkout") do
    @addplus_page.head
    expect(@addplus_page.head).to eql "SHIPPING"
    @addplus_page.terms
    @addplus_page.checkout
end
  
Quando("confirmo o pagamento por cartão e clico no botão I confirm my order") do
    @addplus_page.pay
    expect(@addplus_page.bank).to eql "BANK-WIRE PAYMENT." 
    click_link_or_button "I confirm my order"
end
  
Então("devo ver a mensagem {string}") do |confirmation|
    @addplus_page.conf_pay
    expect(@addplus_page.conf_pay).to eql confirmation
end