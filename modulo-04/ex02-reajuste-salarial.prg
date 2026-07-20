#define MenorQueMil 1.15
#define DeMilADoisMil 1.12
#define DeDoisAQuatroMil 1.08
#define MaiorQueQuatroMil 1.05

FUNCTION Main()

    local nSalarioAtual
    local nSalarioAjustado

    QOut("Olá, somos um sistema para calcular o aumento do salario do seu colaborado")
    QOut("Podemos começar?")

    input "Nos informe, qual salario gostaria de reajustar: " to nSalarioAtual

    if nSalarioAtual > 0 .and. nSalarioAtual <> nil
        if nSalarioAtual < 1000
            nSalarioAjustado := nSalarioAtual * MenorQueMil
        elseif nSalarioAtual >= 1000 .and. nSalarioAtual < 2000
            nSalarioAjustado := nSalarioAtual * DeMilADoisMil
        elseif nSalarioAtual >= 2000 .and. nSalarioAtual < 4000
            nSalarioAjustado := nSalarioAtual * DeDoisAQuatroMil
        elseif nSalarioAtual >= 4000
            nSalarioAjustado := nSalarioAtual * MaiorQueQuatroMil
        endif
    else
        QOut("O salario informado deve ser superior a 0.00")
    endif

    QOut("O salario do seu colaborador R$" + alltrim(str(nSalarioAtual, 10, 2)) + ", apos o ajuste ficou em R$" + alltrim(str(nSalarioAjustado, 10, 2)))

RETURN NIL