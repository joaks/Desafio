#Iterando los arreglos anteriroes crear un único arreglo final con:
#[1, :azul, Tacos, 2, :rojo, Quesadillas, 3, :amarillo, “Hamburguesas]

require "pp"
a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

array = [a,b,c]
arrayFinal = []
i = 0
while i < array.length
	array.each do |x|
    arrayFinal.push(x[i])
	end
	
	i +=1
end

pp arrayFinal