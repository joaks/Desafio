 require "pp"
 string = "1,2,7,1,3,5,3.4,9,1"

arreglo = string.split(",")
 
sum=0

arreglo.each do |x|
  sum +=x.to_f
end

pp arreglo
pp sum

freq = arreglo.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
moda = arreglo.max_by { |v| freq[v] }
pp moda