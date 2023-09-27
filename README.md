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
