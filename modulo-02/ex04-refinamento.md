“Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o
subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a
pagar.”

    (Visão Geral)
    Início 
        Registre os Itens da Compra
        Calcule o Subtotal
        Aplique o Desconto de 5% se possuir cartão fidelidade
        Mostre o Total a pagar
    Fim

    (Detalhado)
    Início
        Registre os Itens da Compra
            Leia item1
            Leia item2
            Leia item3
            Leia item4
        Calcule o Subtotal
            nSubtotal <- item1 + item2 + item3 + item4
        Aplique o Desconto de 5% se possuir cartão fidelidade
            Leia lFidelidade
            Se  lFidelidade == .T.
                nTotal <- nSubtotal - (nSubtotal * 0.05)
            Senão
                nTotal <- nSubtotal
            Fim Se
        Mostre o Total a pagar
            Escreva nTotal
    Fim
