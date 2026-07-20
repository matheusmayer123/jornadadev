FUNCTION Main()

    local hMeses := { ;
        1 => "Janeiro", ;
        2 => "Fevereiro", ;
        3 => "Marco", ;
        4 => "Abril", ;
        5 => "Maio", ;
        6 => "Junho", ;
        7 => "Julho", ;
        8 => "Agosto", ;
        9 => "Setembro", ;
        10 => "Outubro", ;
        11 => "Novembro", ;
        12 => "Dezembro";
    }
    local nNumeroMes

    input "Insira o numero do mes desejado: " TO nNumeroMes

    if hb_HHasKey(hMeses, nNumeroMes)
        QOut(hMeses[nNumeroMes])
    else
        QOut("ERRO: mes invalido.")
    endif
    
RETURN NIL