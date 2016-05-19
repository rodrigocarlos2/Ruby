
module Calculadora

  def soma(x, y)
  
    return x+y
  
  end
  
  def sub(x, y)
  
    return x-y
  
  end
  
  def mpy(x, y)
  
    return x*y
  
  end
  
  def div(x, y)
  
    return x/y
  
  end
  
  def expo(x, y)
  
    return x**y
  
  end

end

soma56 = Calculadora.soma(5, 6)

puts soma56

expo23 = Calculadora.expo(2, 3)

puts expo23
