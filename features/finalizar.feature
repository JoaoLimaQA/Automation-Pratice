#language: pt
@cart
    Funcionalidade: Verificando o Carrinho
        Para que um cliente possa organizar seus intens no carrinho
        Sendo um cliente já cadastrado
        Pode fazer suas compras

    @finish
    Cenario: Finalizando a compra
        Dado que estou no carrinho e verifico se meu iten é o "Printed Summer Dress"
        Quando confirmo o valor da compra de "$32.50"
        E clico no botão Proceed to checkout
        E valido a tela de endereço e clico no botão Proceed to checkout 
        E valido a tela de entrega confirmo os termos e clico no botão Proceed to checkout 
        E confirmo o pagamento por cartão e clico no botão I confirm my order
        Então devo ver a mensagem "Your order on My Store is complete."