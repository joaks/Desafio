require "pp"
array = [1,2,3,[1,2,3],4,5,6,[1,2,3]]
array2 = []

array.each do |x|
  if x.class == Array
    suma = 0
    x.each do |z|
      suma += z
    end
    array2.push(suma)
  end
end
print array2