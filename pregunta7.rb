require "pp"

prng = Random.new
arreglo = []
 10.times do
 	arreglo.push(prng.rand(100))

end
pp arreglo
sum = 0
arreglo.each do |i|
  sum += i
end
pp sum/arreglo.length.to_f
