# Verificação de CPF e CNPJ

Este projeto em Ruby consiste em dois scripts separados para validar CPF (Cadastro de Pessoa Física) e CNPJ (Cadastro Nacional da Pessoa Jurídica). Cada script contém funções específicas para calcular os dígitos verificadores e validar os documentos com base nos algoritmos oficiais.

## CPF

Este script Ruby valida CPFs com base nos dígitos verificadores. Aqui está um resumo do que o script faz, seguido de uma explicação dos cálculos matemáticos envolvidos:

### Funcionamento do Script para CPF

1. **Entrada do Usuário**:
   - Solicita que o usuário digite um CPF (com ou sem pontuação).

2. **Remoção de Caracteres Não Numéricos**:
   - Remove todos os caracteres não numéricos da entrada do usuário para garantir apenas dígitos são utilizados no cálculo.

3. **Validação do Tamanho do CPF**:
   - Verifica se o CPF tem 11 dígitos após a remoção de caracteres não numéricos.

4. **Cálculo dos Dígitos Verificadores**:
   - Calcula os dígitos verificadores a partir dos primeiros nove dígitos do CPF usando multiplicadores específicos e uma operação de módulo.

5. **Comparação dos Dígitos Verificadores**:
   - Compara os dígitos verificadores calculados com os dígitos fornecidos no CPF para determinar se o documento é válido.

6. **Resultado**:
   - Informa ao usuário se o CPF digitado é válido ou inválido.

### Cálculos Matemáticos para os Dígitos Verificadores do CPF

- Detalhes dos cálculos matemáticos para os dígitos verificadores do CPF.

## CNPJ

Este script Ruby valida CNPJs com base nos dígitos verificadores. Aqui está um resumo do que o script faz, seguido de uma explicação dos cálculos matemáticos envolvidos:

### Funcionamento do Script para CNPJ

1. **Entrada do Usuário**:
   - Solicita que o usuário digite um CNPJ (com ou sem pontuação).

2. **Remoção de Caracteres Não Numéricos**:
   - Remove todos os caracteres não numéricos da entrada do usuário para garantir apenas dígitos são utilizados no cálculo.

3. **Validação do Tamanho do CNPJ**:
   - Verifica se o CNPJ tem 14 dígitos após a remoção de caracteres não numéricos.

4. **Cálculo dos Dígitos Verificadores**:
   - Calcula os dígitos verificadores a partir dos primeiros doze dígitos do CNPJ usando multiplicadores específicos e uma operação de módulo.

5. **Comparação dos Dígitos Verificadores**:
   - Compara os dígitos verificadores calculados com os dígitos fornecidos no CNPJ para determinar se o documento é válido.

6. **Resultado**:
   - Informa ao usuário se o CNPJ digitado é válido ou inválido.

### Cálculos Matemáticos para os Dígitos Verificadores do CNPJ

- Detalhes dos cálculos matemáticos para os dígitos verificadores do CNPJ.

## Como Rodar os Scripts

1. Salve cada código em arquivos separados: [validador_cpf.rb](https://github.com/douglas-vitoriano/validador/blob/main/validador_cpf.rb) e [validador_cnpj.rb](https://github.com/douglas-vitoriano/validador/blob/main/validador_cnpj.rb).

2. No terminal, navegue até o diretório onde os arquivos estão salvos.

3. Execute o script desejado com os comandos:
