require "pp"

arreglo = []
 20.times do
 	arreglo.push(rand(100))
end
pp arreglo

arreglo2 = []
arreglo.each do |x|
	if x >= 10 
	arreglo2.push(x)
	end
end

pp arreglo2
