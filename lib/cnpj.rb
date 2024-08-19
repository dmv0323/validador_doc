class CNPJ < Documento
  def self.comprimento
    14
  end

  def self.calcular_digitos_verificadores(cnpj)
    num_base = cnpj[0..11]
    dv1 = calcular_dv(num_base, [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2])
    num_base_com_dv1 = num_base + dv1.to_s
    dv2 = calcular_dv(num_base_com_dv1, [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2])
    [dv1, dv2]
  end

  def self.obter_digitos_fornecidos(cnpj)
    [cnpj[12].to_i, cnpj[13].to_i]
  end
end
