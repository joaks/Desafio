require "pp"
array = []

6.times do
  array.push(rand(1..5))
end

array_flota = array.each_slice(2).to_a
puts "Ingrese 3 pares de números separados por coma"
user_choice = gets.chomp
array2 = user_choice.split(",").map(&:to_i).each_slice(2).to_a
intersection = array_flota & array2

pp "Has acertado en #{intersection.length} posiciones"