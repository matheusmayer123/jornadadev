FUNCTION Main()
    
    

    LOCAL cNome := "Matheus"
    LOCAL cSobrenome := "Mayer"
    LOCAL cCidade := "Sorocaba"
    LOCAL cCurso := "Harbour/ADVPL"
    LOCAL cDataAtual := DToC(Date())
    LOCAL cHoraAtual := Time()

    QQOUT("===========================")
    QOut("  FICHA DE APRESENTACAO")
    QOut("===========================")
    QOut("Nome      : " + cNome)
    QOut("Cidade    : " + cCidade)
    QOut("Curso     : " + cCurso)
    QOut("Data      : " + cDataAtual + " as " + cHoraAtual)
    QOut("===========================")
    
RETURN NIL
