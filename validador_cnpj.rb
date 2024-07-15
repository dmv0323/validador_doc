def calcular_digitos_verificadores(cnpj)
  cnpj = cnpj.gsub(/\D/, '')

  if cnpj.length != 14
    return false
  end

  num_base = cnpj[0..11]

  def calcular_dv(num_base, multiplicadores)
    soma = 0
    num_base.chars.each_with_index do |char, index|
      soma += char.to_i * multiplicadores[index]
    end

    resto = soma % 11
    dv = resto < 2 ? 0 : 11 - resto
    dv
  end

  multiplicadores_1 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
  multiplicadores_2 = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]

  dv1 = calcular_dv(num_base, multiplicadores_1)

  num_base_com_dv1 = num_base + dv1.to_s

  dv2 = calcular_dv(num_base_com_dv1, multiplicadores_2)

  [dv1, dv2]
end

def cnpj_valido?(cnpj)
  cnpj = cnpj.gsub(/\D/, '')

  if cnpj.length != 14
    return false
  end

  digitos_calculados = calcular_digitos_verificadores(cnpj)

  digitos_fornecidos = [cnpj[12].to_i, cnpj[13].to_i]

  digitos_calculados == digitos_fornecidos
end

puts "Digite seu CNPJ (com ou sem pontuação):"
cnpj_usuario = gets.chomp

if cnpj_valido?(cnpj_usuario)
  puts "O CNPJ #{cnpj_usuario} é válido."
else
  puts "O CNPJ #{cnpj_usuario} é inválido."
end