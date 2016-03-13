require "pp"

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
puts "el plato mas caro es #{restaurant_menu.group_by{|k, v| v}.max_by{|k, v| k}.last}"
puts "el plato mas barato es #{restaurant_menu.group_by{|k, v| v}.min_by{|k, v| k}.last}"
sum = 0
restaurant_menu.each { |key, value| sum += value }
puts "el promedio de los precios es es #{sum/restaurant_menu.length}"

array_platos=[]

restaurant_menu.each do |key, value| 
	array_platos.push(key)
end
puts "Los nombres de todos los platos son #{array_platos}"

restaurant_menu.update(restaurant_menu) do |key, value| 
	value=(value.to_f)*1.19
end

puts "El hash modificado es #{restaurant_menu}"

restaurant_menu.each do |key, value| 
	if key.include?(" ")
    value=(value.to_f)*0.8
    puts "El plato #{key} con descuento vale #{value}"
	end
end