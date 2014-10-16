require './Complejo'

numberOne = Complejo.new(3.0,2.0)
numberTwo = Complejo.new(0.0,2.0)
numberThree = Complejo.new(0.0,0.0)

puts "Numero uno = #{numberOne}" 
puts "Numero dos = #{numberTwo}" 
puts "Numero tres = #{numberThree}" 

puts "\nNumero uno + Numero dos = #{numberOne.sum(numberTwo)}"
puts "Numero uno - Numero dos = #{numberOne.subtract(numberTwo)}"
puts "Numero uno * Numero dos = #{numberOne.product(numberTwo)}"
puts "Numero uno / Numero dos = #{numberOne.division(numberTwo)}"

puts "\nCambiando el valor de Numero tres por la suma de numero uno más numero dos."
numberThree = numberOne.sum(numberTwo)
puts "Numero tres = #{numberThree}" 