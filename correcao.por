programa {
    inclua biblioteca Util --> u
    cadeia emailUser = ""
    cadeia senhaUser = "" 
    cadeia nomeUser = ""
    logico fim = falso

    funcao inicio() {
        menu()
    }

    funcao menu() {
      cadeia opcao
      faca {
            limpa()
            escreva("SISTEMA OPERACIONAL VnW\n[1]Cadastrar usuário (Limitado a um usuário) \n[2]Login \n[0]Sair \n")
            leia(opcao)
            escolha(opcao){
              caso "0":
                escreva("FIM")
              pare
              caso "1":
                cadastroUser()
              pare
              caso "2":
                login()
              pare
              caso contrario:
                escreva("Opção inválida!\n")
                u.aguarde(5000)
            }
        }enquanto(opcao != "0" e fim == falso)
    }
    
    funcao cadastroUser() {
        escreva("Nome de usuário: ")
        leia(nomeUser)
        escreva("\nDigite seu email: ")
        leia(emailUser)
        escreva("\nDigite sua senha: ")
        leia(senhaUser)
    }

    funcao login() {
      cadeia senha, email
      se (emailUser == "" e senhaUser == "") {
        escreva("Nenhum usuário cadastrado.\n")
        u.aguarde(5000)
      }
      senao
        para (inteiro i = 0; i <= 2; i++) {
            escreva("Digite seu email: ")
            leia(email)
            escreva("\nDigite sua senha: ")
            leia(senha)
            se (email == emailUser e senha == senhaUser) {
                limpa()
                escreva("Login bem-sucedido! Bem-vindo, " + nomeUser + "\n")
                u.aguarde(5000)
                menuOs()
                pare
            } senao {
                escreva("\nSenha ou email inválidos!\n")
            }
            se (i == 2) {
                escreva("Usuário Bloqueado!")
                u.aguarde(5000)
                fim = verdadeiro
            }
        }
    }

    funcao menuOs(){
      cadeia opcao
      logico finalizar = verdadeiro
      faca{
        limpa()
        escreva("APLICATIVOS\n[1]Calculadora \n[2]Conversor de Temperatura \n[3]Conversor de Moedas \n[4]Bloco de Notas \n[5]Sair/Menu\n")
        leia(opcao)
            escolha (opcao) {
              caso "1":
                limpa()
                escreva("CALCULADORA\n")
                calculadora()
                pare
              caso "2":
                limpa()
                escreva("CONVERSOR DE TEMPERATURA\n")
                conversor()
                pare
              caso "3":
                limpa()
                escreva("CONVERSOR DE MOEDA\n")
                conversorMoeda()
                pare
              caso "4":
                limpa()
                escreva("BLOCO DE NOTAS\n")
                menuBloco()
                pare
              caso "5":
                inteiro opcaoCaso5
                escreva("Deseja sair? \n[1] Sim [2] Não\n")
                leia(opcaoCaso5)
                se (opcaoCaso5 == 1) {
                  // menuOs() Isso pode da problema porque uma funcao pode chamar ela mesma sem interrupiçoes causando problemas de memoria
                  finalizar = falso
                }
                pare
              caso contrario:
                escreva("Opção inválida.")
                u.aguarde(5000)
            }
      }enquanto(finalizar)
    }

    funcao calculadora(){
      cadeia opcao
      faca{
        limpa()
        escreva("Escolha uma das 4 Operações Matemáticas Básicas\n[1] Soma\n[2] Subtração\n[3] Multiplicação\n[4] Divisão\n[5] Sair\nOpcão: ")
        leia(opcao)
        escolha (opcao) {
                caso "1":
                    limpa()
                    escreva("Você escolheu SOMA\n")
                    glob(opcao)
                    pare
                caso "2":
                    limpa()
                    escreva("Você escolheu SUBTRAÇÃO\n")
                    glob(opcao)
                    pare
                caso "3":
                    limpa()
                    escreva("Você escolheu MULTIPLICAÇÃO\n")
                    glob(opcao)
                    pare
                caso "4":
                    limpa()
                    escreva("Você escolheu DIVISÃO\n")
                    glob(opcao)
                    pare
                caso "5":
                    escreva("Saindo do programa. Até logo!\n")
                    u.aguarde(5000)
                  pare
                caso contrario:
                    escreva("Opção inválida.\n")
                    u.aguarde(5000)
            }
      }enquanto(opcao != "5")
    }

    funcao conversor(){
      cadeia opcao
      real resultado, temperatura
      faca{
        escreva("[1] Celsius para Kelvin\n[2] Celsius para Fahrenheit\n[3] Kelvin para Celsius\n[4] Kelvin para Fahrenheit\n[5] Fahrenheit para Celsius\n[6] Fahrenheit para Kelvin\n[7] Sair\n")
        leia(opcao)
        escolha(opcao){
          caso "1":
            escreva("Digite a temperatura em Celsius: ")
            leia(temperatura)
            resultado = temperatura + 273.15
            escreva("\n", temperatura, " Celsius é igual a ", resultado, " Kelvin.\n")
          pare
          caso "2":
            escreva("Digite a temperatura em Celsius: ")
            leia(temperatura)
            resultado = (temperatura * 1.8) + 32
            escreva("\n", temperatura, " Celsius é igual a ", resultado, " Fahrenheit.\n")
          pare
          caso "3":
            escreva("Digite a temperatura em Kelvin: ")
            leia(temperatura)
            resultado = temperatura - 273.15
            escreva("\n", temperatura, " Kelvin é igual a ", resultado, " Celsius.\n")
          pare
          caso "4":
            escreva("Digite a temperatura em Kelvin: ")
            leia(temperatura)
            resultado = (temperatura - 273.15) * 1.8 + 32
            escreva("\n", temperatura, " Kelvin é igual a ", resultado, " Fahrenheit.\n")
          pare
          caso "5":
            escreva("Digite a temperatura em Fahrenheit: ")
            leia(temperatura)
            resultado = (temperatura - 32) / 1.8
            escreva("\n", temperatura, " Fahrenheit é igual a ", resultado, " Celsius.\n")
          pare
          caso "6":
            escreva("Digite a temperatura em Fahrenheit: ")
            leia(temperatura)
            resultado = (temperatura - 32) / 1.8 + 273.15
            escreva("\n", temperatura, " Fahrenheit é igual a ", resultado, " Kelvin.\n")
          pare
          caso "7":
            escreva("Saindo do programa. Até logo!\n")
          pare
          caso contrario:
            escreva("Opção inválida.")
        }
        u.aguarde(5000)
        limpa()
      }enquanto(opcao != "7")
    }

    funcao conversorMoeda(){
      // dados de 25/09
      real moedaReal
      cadeia opcao
      faca{
        limpa()
        escreva("Digite o valor em Reais que deseja converter: \nR$ ")
        leia(moedaReal)
        escreva("Opções para conversão:\n[1] Dólar\n[2] Euro\n[3] Yuan chinês\n[4] Libra Inglesa\n[0] SAIR\n")
        leia(opcao)
        limpa()
        escolha(opcao){
          caso "1":
            escreva("O valor em Dólar é: ", moedaReal * 0.21, "\n")
          pare
          caso "2":
            escreva("O valor em Euro é: ", moedaReal * 0.19, "\n")
          pare
          caso "3":
            escreva("O valor em Yuan Chinês é: ", moedaReal * 1.49, "\n")
          pare
          caso "4":
            escreva("O valor em Libras Inglesas é: ", moedaReal * 0.17, "\n")
          pare
          caso "0":
            escreva("Saindo do programa. Até logo!\n")
          pare
          caso contrario:
            escreva("Opção inválida.")
        }
        u.aguarde(5000)
      }enquanto(opcao != "0")
    }
    
    funcao menuBloco(){
      cadeia opcao
      faca{
        escreva("Selecione uma opção:\n[1] CMD \n[2] Git\n[3] VOLTAR\n")
        leia(opcao)
        escolha(opcao){
          caso "1":
            limpa()
            escreva("1) whoami → levar até pasta usuário \n2) ls/dir → mostra todos os arquivos presentes naquela pasta\n3) cls → Limpar\n4) cd (nome arquivo)→ entrar no arquivo\n5) cd .. → Voltar\n6) cd → Voltar para raiz\n7) mkdir/md → Criar pasta\n8) RD → Excluir pasta\n9) s/q → deletar\n10) del → deletar arquivo\n11) type nul > (nome).(tipo) / touch → Criar arquivo\n12) start → abrir arquivo\n13) type con > (nome arquivo) → escrever no arquivo\n14) f6 → sair\n")
          pare
          caso "2":
            limpa()
            escreva("1) Git init -> Iniciar o git no local \n2) Git add (nome do arquivo ou .) -> enviar o arquivo para git local \n3) Git commit -m (nome do commit) -> Criar uma versão com um comentário \n4) Git remote add origin (endereço) -> Adicionar o destino remoto do git \n5) Git push -u origin (branch) -> Enviar a versão para o git remote\n6) Git checkout -b -> criar uma branch \n7) git branch -> Ver as branch's disponíveis\n8) git pull -> Puxar atualizações local remote\n")
          pare
          caso "3": 
            escreva("Saindo do programa. Até logo!\n")
          pare
          caso contrario:
            escreva("Opção inválida.\n")
        }
        u.aguarde(5000)
      }enquanto(opcao != "3")
    }
    
    funcao glob(cadeia opcaoCalc){
      real valor[2]
      real resultado = 0
      para(inteiro i = 0; i < 2; i++){
        escreva("[0] para Imprimir o Resultado\n", "Digite o ", i+1, "° Valor: ")
        leia(valor[i])
      }
      se(opcaoCalc == "4" e valor[1] == 0){
          limpa()
          escreva("Não pode dividir por zero.")
          u.aguarde(5000)
      }senao {
        escolha(opcaoCalc){
          caso "1":
            resultado = valor[0]+valor[1]
          pare
          caso "2":
            resultado = valor[0]-valor[1]
          pare
          caso "3":
            resultado = valor[0]*valor[1]
          pare
          caso "4":
            resultado = valor[0]/valor[1]
          pare
          caso contrario:
            escreva("Operação inválida.")
        }
        limpa()
        escreva("O resultado é: ", resultado, "\n")
        u.aguarde(5000)
      }
    }
}
