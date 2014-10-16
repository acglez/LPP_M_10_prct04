class Complejo
  attr_reader :real, :imaginary
  
  def initialize(real, imaginary)
    @real, @imaginary = x, y
  end
  
  def to_s
    "(#{@real},#{@imaginary})"
  end
  
  def *(value)
    Point.new(@x * value, @y * value)
  end
  
  def -@
    Point.new(@x * -1, @y * -1)
  end
  
  def sum (other)
    Complejo.new(@real + other.real, @imaginary + other.imaginary)
  end
end