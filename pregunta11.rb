require "pp"
array = [[1,"azul"], [2,"verde"], [3,:rojo]]
array2 = []

array.each do |x|
  x[0].times do
    array2.push(x[1])
  end
end

print array2
