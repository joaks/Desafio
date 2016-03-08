#Utilizando como base el arreglo de la pregunta anterior, 
#crear un arreglo nuevo remplazando todos los
#números y símbolos por string
require "pp"
a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

array = [a,b,c]
arrayFinal = []
i = 0
while i < array.length
	array.each do |x|
		arrayFinal.push(x[i].to_s)
	end
	
	i +=1
end
print arrayFinal
