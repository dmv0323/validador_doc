require_relative 'lib/documento'
require_relative 'lib/cpf'
require_relative 'lib/cnpj'

puts "Digite seu CPF ou CNPJ (com ou sem pontuação):"
entrada_usuario = gets.chomp

if entrada_usuario.length == 11 && CPF.validar(entrada_usuario)
  puts "O CPF #{entrada_usuario} é válido."
elsif entrada_usuario.length == 14 && CNPJ.validar(entrada_usuario)
  puts "O CNPJ #{entrada_usuario} é válido."
else
  puts "O documento digitado é inválido."
end
