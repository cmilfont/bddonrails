Feature: Registrar exercicio
  Como um atleta
  Eu quero registrar meus exercicios
  Para que eu possa acompanhar minha evolução

  Contexto:
    Dado que tenho tipo de exercício cadastrado

  Cenário: Registro de exercício
    Dado que estou em "Cadastrar Exercício"
      E que preencho "Frequencia cardiaca" com "155"
      E selecione "Corrida" em "Tipo de exercicio"
      E selecione a hora com "25" de "Outubro" de "2009" as "10":"30" em "Inicio"
      E selecione a hora com "25" de "Outubro" de "2009" as "11":"30" em "Fim"
    Quando eu clicar em "Enviar"
    Então desejo ver a mensagem "Exercicio registrado com sucesso."

