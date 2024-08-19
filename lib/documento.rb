class Documento
  def self.validar(documento)
    documento = documento.gsub(/\D/, '')
    return false unless documento.length == comprimento

    digitos_calculados = calcular_digitos_verificadores(documento)
    digitos_fornecidos = obter_digitos_fornecidos(documento)

    digitos_calculados == digitos_fornecidos
  end

  def self.comprimento
    raise NotImplementedError, "Subclasses devem definir o comprimento do documento."
  end

  def self.calcular_digitos_verificadores(documento)
    raise NotImplementedError, "Subclasses devem implementar o cálculo dos dígitos verificadores."
  end

  def self.obter_digitos_fornecidos(documento)
    raise NotImplementedError, "Subclasses devem implementar a extração dos dígitos fornecidos."
  end

  def self.calcular_dv(num_base, multiplicadores)
    soma = 0
    num_base.chars.each_with_index do |char, index|
      soma += char.to_i * multiplicadores[index]
    end

    resto = soma % 11
    dv = resto < 2 ? 0 : 11 - resto
    dv
  end
end
