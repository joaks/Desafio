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

i=0
while i < array.length
	array.each do |x|
		print "#{x[i]} "
	end
	print "\n"
	i +=1
end


