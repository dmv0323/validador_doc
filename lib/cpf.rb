class CPF < Documento
  def self.comprimento
    11
  end

  def self.calcular_digitos_verificadores(cpf)
    num_base = cpf[0..8]
    dv1 = calcular_dv(num_base, [10, 9, 8, 7, 6, 5, 4, 3, 2])
    num_base_com_dv1 = num_base + dv1.to_s
    dv2 = calcular_dv(num_base_com_dv1, [11, 10, 9, 8, 7, 6, 5, 4, 3, 2])
    [dv1, dv2]
  end

  def self.obter_digitos_fornecidos(cpf)
    [cpf[9].to_i, cpf[10].to_i]
  end
end
