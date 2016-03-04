=begin
1 :amarillo Tacos
2 :rojo Quesadillas
3 :azul Hamburguesas
=end


require "pp"
a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

pp a.reverse
alReves = b.reverse

array=[a,alReves,c]

array.each do |x|

	pp "#{x[0]} "
	pp "#{x[1]} "
	pp "#{x[2]} "
	
end
