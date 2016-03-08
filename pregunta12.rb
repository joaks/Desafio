require "pp"
array = [1,2,3,4,5,6,7,8]

pp array.each_slice(2).to_a
