FUNCTION Main()

    local nOperacao
    local nNumeroUm
    local nNumeroDois
    local nExpoente
    local nResultado

    QOut("Bem-vindo a calculadora feita em Harbour")
    QOut("para começarmos, preciso que nos informe qual operacao deseja realizar")
    QOut("====================")
    QOut("1- Soma")
    QOut("2- Subtracao")
    QOut("3- Multiplicacao")
    QOut("4- Divisao")
    QOut("5- Potencia")
    QOut("6- Raiz Quadrada")
    QOut("====================")
    
    input "Opcao: " to nOperacao

    if nOperacao <= 4 .and. nOperacao > 0
        input "Insira o primeiro numero: " to nNumeroUm
        input "Insira o segundo numero: " to nNumeroDois
    elseif nOperacao == 5
        input "Insira o valor da base: " to nNumeroUm
        input "Insira o valor do expoente: " to nExpoente
    elseif nOperacao == 6
        input "Insira o numero: " to nNumeroUm
    endif

    DO CASE
        CASE nOperacao == 1    
            nResultado := nNumeroUm + nNumeroDois

            QOut("O resultado da soma foi: " + alltrim(str(nResultado, 8, 2)))
        CASE nOperacao == 2
            nResultado := nNumeroUm - nNumeroDois

            QOut("O resultado da subtracao foi: " + alltrim(str(nResultado, 8 , 2)))
        CASE nOperacao == 3
            nResultado := nNumeroUm * nNumeroDois
            
            QOut("O resultado da multiplicacao foi: " + alltrim(str(nResultado, 8, 2)))
        CASE nOperacao == 4
            if nNumeroDois < 1
                QOut("ERRO: divisao por zero ou numero negativo")
            else
                nResultado := nNumeroUm / nNumeroDois
            endif

            QOut("O Resultado da subtracao foi: " + alltrim(str(nResultado, 8, 2)))
        CASE nOperacao == 5
            if nExpoente >= 0
                nResultado := nNumeroUm ^ nExpoente
            endif

            QOut("O resultado da potencia foi: " + alltrim(str(nResultado, 8, 2)))
        CASE nOperacao == 6
            if nNumeroUm > 0
                nResultado := Sqrt(nNumeroUm)
            endif

            QOut("O resultado da raiz quadrada foi: " + alltrim(str(nResultado, 8, 2)))
        OTHERWISE
            QOut("Nenhuma das opcoes corretas foi inserida.")
    ENDCASE

RETURN NIL