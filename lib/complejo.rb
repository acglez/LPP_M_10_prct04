class Complejo
  attr_reader :real, :imaginary
  attr_writer :real, :imaginary
  
  def initialize(real, imaginary)
    @real, @imaginary = real, imaginary
  end
  
  def to_s
    "#{@real}+#{@imaginary}i"
  end
/
  def *(value)
    Complejo.new(@real * value, @imaginary * value)
  end
  
  def -@
    Complejo.new(@real * -1, @imaginary * -1)
  end
/
  def sum (other)
    Complejo.new(@real + other.real, @imaginary + other.imaginary)
  end

  def subtract (other)
    Complejo.new(@real - other.real, @imaginary - other.imaginary)
  end

  def product (other)
    Complejo.new(@real * other.real + @imaginary * other.imaginary, @real * other.imaginary + @imaginary * other.real)
  end

  def division (other)
    realPart = (@real * other.real + @imaginary * other.imaginary) / (other.real**2 + other.imaginary**2)
    imaginaryPart = (@imaginary * other.real - @real * other.imaginary) / (other.real**2 + other.imaginary**2)
    Complejo.new(realPart,imaginaryPart)
  end

end
