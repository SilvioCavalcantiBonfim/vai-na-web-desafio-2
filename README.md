# Funcionamento do Programa

## Função inicio()

A função `inicio()` é a função principal que é executada quando o programa começa. Aqui estão os passos que ela realiza:

1. Abre um arquivo chamado "bancoDeDados.txt" no modo de escrita e armazena seu identificador em uma variável chamada `user`.
2. Escreve duas linhas vazias no arquivo.
3. Fecha o arquivo.
4. Chama a função `menu()`.

## Função menu()

A função `menu()` exibe um menu de opções para o usuário e permite que ele escolha uma das seguintes opções:

- 1: Cadastrar usuário (Limitado a um usuário)
- 2: Login
- 0: Sair

Aqui estão os principais pontos dessa função:

- Ela usa um loop `faca/enquanto` para manter o menu em exibição até que o usuário escolha a opção 0 (Sair).
- Se o usuário escolhe a opção 1, a função `cadastroUser()` é chamada.
- Se o usuário escolhe a opção 2, a função `login()` é chamada.
- Se o usuário escolhe uma opção diferente de 0, 1 ou 2, é exibida uma mensagem de "Opção inválida".
- Se o usuário escolhe a opção 0, o programa termina com a mensagem "FIM".

## Função cadastroUser()

A função `cadastroUser()` é responsável por cadastrar um usuário. Ela realiza as seguintes etapas:

1. Abre o arquivo "bancoDeDados.txt" no modo de escrita e armazena seu identificador em uma variável chamada `user`.
2. Solicita ao usuário que digite seu email e senha.
3. Escreve o email e a senha fornecidos pelo usuário no arquivo.
4. Fecha o arquivo.

## Função login()

A função `login()` é responsável por permitir que o usuário faça login no sistema. Aqui estão os passos que ela realiza:

1. Abre o arquivo "bancoDeDados.txt" no modo de leitura e armazena seu identificador em uma variável chamada `user`.
2. Lê as primeiras duas linhas do arquivo, que devem conter o email e a senha cadastrados anteriormente.
3. Solicita ao usuário que digite seu email e senha.
4. Compara o email e a senha fornecidos pelo usuário com os armazenados no arquivo.
5. Se o email e a senha coincidirem, exibe a mensagem "Login bem-sucedido! Bem-vindo," e o programa termina.
6. Se o email e a senha não coincidirem, o usuário tem mais duas tentativas (totalizando três tentativas). Se todas as tentativas falharem, o programa exibe "Bloqueado".

# Testes

## [ ] Teste 1: Cadastro de Usuário

1. Nome de usuário: "Usuario1"

2. Email: "usuario1@example.com"

3. Senha: "senha123"

## [ ] Teste 2: Login

1. Email: "usuario1@example.com"

2. Senha: "senha123"

## [ ] Teste 3: Calculadora

1. Escolha a operação de Soma.

2. Números: 5 e 7

3. Valor esperado: 12

## [ ] Teste 4: Conversor de Temperatura

1. Escolha a conversão de Celsius para Fahrenheit.

2. Temperatura em Celsius: 25

3. Valor esperado: 77.0

## [ ] Teste 5: Conversor de Moeda

1. Insira um valor em Reais: 100.0

2. Escolha a conversão para Dólar.

3. Valor esperado: 21.0 (considerando uma taxa de câmbio fictícia)

## [ ] Teste 6: Bloco de Notas

1. Escolha a opção CMD no Bloco de Notas.

2. Execute algumas operações, como "ls" para listar arquivos.

3. Saia do Bloco de Notas.

## [ ] Teste 7: Saída do Programa

1. Escolha a opção para sair do programa no menu principal.

## [ ] Teste 8: Opções Inválidas

1. Insira opções inválidas em vários pontos do programa e verifique se as mensagens de erro são exibidas corretamente.

## [ ] Teste 9: Limite de Tentativas de Login

1. Tente fazer login com uma senha incorreta três vezes e verifique se o usuário é bloqueado após três tentativas falhadas.

## [ ] Teste 10: Menu de Aplicativos

1. Acesse o menu de aplicativos no menu principal.
Escolha diferentes aplicativos no menu e verifique se eles funcionam conforme o esperado.

## [ ] Teste 11: Login com Credenciais Incorretas

1. Tente fazer login com um email e senha incorretos.
Verifique se o programa exibe uma mensagem de erro apropriada.

## [ ] Teste 12: Conversor de Temperatura (Kelvin para Celsius)

1. Escolha a conversão de Kelvin para Celsius.

2. Temperatura em Kelvin: 300

3. Valor esperado: 26.85

## [ ] Teste 13: Conversor de Moeda (Euro)

1. Insira um valor em Reais: 500.0

2. Escolha a conversão para Euro.

3. Valor esperado: 95.0 (considerando uma taxa de câmbio fictícia)

## [ ] Teste 14: Bloco de Notas (Git)

1. Escolha a opção Git no Bloco de Notas.

2. Execute algumas operações Git, como "git init" e "git add".

3. Saia do Bloco de Notas Git.

## [ ] Teste 15: Tentativa de Divisão por Zero na Calculadora

1. Escolha a operação de Divisão.

2. Números: 10 e 0

3. Verifique se o programa trata a tentativa de divisão por zero corretamente.

## [ ] Teste 16: Opções Inválidas no Menu de Aplicativos

1. Acesse o menu de aplicativos no menu principal.

2. Insira uma opção inválida e verifique se o programa trata a entrada incorreta adequadamente.

## [ ] Teste 17: Menu de Bloco de Notas (Voltar)

1. Acesse o menu de Bloco de Notas no menu principal.
2. Escolha a opção "VOLTAR" e verifique se o programa retorna ao menu principal corretamente.

## [ ] Teste 18: Cadastro de Usuário (Senha Fraca)

1. Tente cadastrar um usuário com uma senha fraca, por exemplo, uma senha com menos de 6 caracteres.

2. Verifique se o programa trata a senha fraca corretamente.

## [ ] Teste 19: Conversor de Moeda (Sair)

1. No menu de conversor de moeda, escolha a opção "Sair".

2. Verifique se o programa retorna ao menu principal corretamente.

## [ ] Teste 20: Calculadora (Operação Inválida)

1. Escolha a calculadora no menu principal.

2. Insira uma operação inválida (por exemplo, "6") e verifique se o programa trata a operação incorreta adequadamente.