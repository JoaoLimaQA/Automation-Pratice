#language: pt
@go_login
@add
    Funcionalidade: Adicionando Produtos no Carrinho
        Para pode comprar produtos no site
        Sendo um cliente cadastrado
        Posso escolher qualquer item dos catalogos
    
@cash
    Cenario: Adicionando item no carrinho
        Dado que seleciono o catologo "DRESSES"
        Quando seleciono o item "Printed Summer Dress"
        E seleciono minhas preferências
        E adiciono ao carrinho
        E devo ver uma menssagem de confirmação "Product successfully added to your shopping cart"
        Então clico em Continue shopping
    
@cashplus 
    Cenario: Adicionando novos itens ao carrinho
        Dado que seleciono outro catologo "T-SHORTS"
        Quando seleciono um novo item "Faded Short Sleeve T-shirts" 
        E seleciono minhas novas preferências
        E adiciono ao carrinho.
        Então devo ver uma menssagem de confirmação "Product successfully added to your shopping cart"