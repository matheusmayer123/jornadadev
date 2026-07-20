#define Ate25Anos 180.00
#define De26A40Anos 260.00
#define De41A60Anos 380.00
#define AcimaDe60Anos 520.00
#define Dependente 90.00
FUNCTION Main()

    local nIdade
    local nDependentes
    local nValorPlano

    QOut("Ola, seja bem-vindo")
    QOut("hoje iremos realizar o orcamento do seu plano de saude, para isso responda duas perguntas: ")
    
    input "Sua idade: " to nIdade
    input "Numero de Dependentes: " to nDependentes

    if nIdade > 0 
        if nDependentes > 0 
            if nIdade < 26 
                nValorPlano := Ate25Anos + (nDependentes * Dependente)
            elseif nIdade > 25 .and. nIdade < 41
                nValorPlano := De26A40Anos + (nDependentes * Dependente)
            elseif nIdade > 40 .and. nIdade < 61
                nValorPlano := De41A60Anos + (nDependentes * Dependente)
            else
                nValorPlano := AcimaDe60Anos + (nDependentes * Dependente)
            endif
            
            QOut("O valor do seu plano de saude para sua idade, " + alltrim(str(nIdade)) + " anos e com " + alltrim(str(nDependentes)) + " dependente(s), ficou em R$" + alltrim(str(nValorPlano, 8, 2)))
        else
            if nIdade < 26 
                nValorPlano := Ate25Anos 
            elseif nIdade > 25 .and. nIdade < 41
                nValorPlano := De26A40Anos
            elseif nIdade > 40 .and. nIdade < 61
                nValorPlano := De41A60Anos 
            else
                nValorPlano := AcimaDe60Anos
            endif
            QOut("O valor do seu plano de saude para sua idade, " + alltrim(str(nIdade)) + " anos, ficou em R$" + alltrim(str(nValorPlano, 8, 2)))
        endif
    else
        QOut("ERRO: a idade deve ser maior que zero" )
    endif


RETURN NIL  