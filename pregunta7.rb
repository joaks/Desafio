require "pp"

arreglo = []
 10.times do
 	arreglo.push(rand(100))

end
pp arreglo
sum = 0
arreglo.each do |i|
  sum += i
end
pp sum/arreglo.length.to_f
