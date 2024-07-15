def calcular_digitos_verificadores(cpf)
  cpf = cpf.gsub(/\D/, '')
  if cpf.length != 11
    return false
  end

  num_base = cpf[0..8]

  def calcular_dv(num_base, multiplicadores)
    soma = 0
    num_base.chars.each_with_index do |char, index|
      soma += char.to_i * multiplicadores[index]
    end

    resto = soma % 11
    dv = resto < 2 ? 0 : 11 - resto
    dv
  end

  multiplicadores_1 = [10, 9, 8, 7, 6, 5, 4, 3, 2]
  multiplicadores_2 = [11, 10, 9, 8, 7, 6, 5, 4, 3, 2]

  dv1 = calcular_dv(num_base, multiplicadores_1)

  num_base_com_dv1 = num_base + dv1.to_s

  dv2 = calcular_dv(num_base_com_dv1, multiplicadores_2)

  [dv1, dv2]
end

def cpf_valido?(cpf)
  cpf = cpf.gsub(/\D/, '')

  if cpf.length != 11
    return false
  end

  digitos_calculados = calcular_digitos_verificadores(cpf)

  digitos_fornecidos = [cpf[9].to_i, cpf[10].to_i]

  digitos_calculados == digitos_fornecidos
end

puts "Digite seu CPF (com ou sem pontuação):"
cpf_usuario = gets.chomp

if cpf_valido?(cpf_usuario)
  puts "O CPF #{cpf_usuario} é válido."
else
  puts "O CPF #{cpf_usuario} é inválido."
end