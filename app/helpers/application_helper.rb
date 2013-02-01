module ApplicationHelper
  
  def SimNao(value)
    if value
      'Sim'
    else
      'Nao'
    end
  end
  
  def Moeda(value)
    'R$ ' + value.to_s
  end
  
  def Porcentagem(value)
    value.to_s + ' %'
  end

end
