Function Main()

    local nNumero1
    local nNumero2

    input "Insira o primeiro numero: " to nNumero1
    input "Insira o segundo numero: " to nNumero2
    
    if nNumero1 <> 0 .and. nNumero2 <> 0
        if nNumero1 == nNumero2
            QOut("Os numeros inseridos (" + alltrim(str(nNumero1)) + ", " + alltrim(str(nNumero2)) + ") são iguais")
        elseif nNumero1 > nNumero2 .and. nNumero1 <> 0
            QOut("O primeiro numero inserido (" + alltrim(str(nNumero1)) + ") é maior que o segundo (" + alltrim(str(nNumero2)) + ")")
        else
            QOut("O segundo numero inserido (" + alltrim(str(nNumero2)) + ") é maior que o primeiro (" + alltrim(str(nNumero1)) + ")")
        endif
    else
        QOut("Ambos os valores devem ser maior que 0")
    endif

Return nil