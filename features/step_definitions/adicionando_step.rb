Dado("que seleciono o catologo {string}") do |cat|
   @add_page.catalogo
end

Dado("seleciono o item {string}") do |item|
   @add_page.select_iten
   itens = find(".pb-center-column").text
   expect(itens).to have_text item
  
end

Quando("seleciono minhas preferências") do
  @add_page.choice
end

Quando("adiciono ao carrinho") do
    @add_page.add_cart
end
  
Quando("devo ver uma menssagem de confirmação {string}") do |confirmation|
    msn = find(".layer_cart_product").text
    expect(msn).to have_text confirmation
end

Então("clico em Continue shopping") do
    find(".continue").click
end

Dado("que seleciono outro catologo {string}") do |new_cat|
    @addplus_page.catalogo 
end
  
Quando("seleciono um novo item {string}") do |new_iten|
    @addplus_page.select_iten
    itens = find(".pb-center-column").text
    expect(itens).to have_text new_iten
end

Quando("seleciono minhas novas preferências") do
    @addplus_page.choice
end