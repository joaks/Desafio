require "pp"

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
puts "el plato mas carozzi es #{restaurant_menu.group_by{|k, v| v}.max_by{|k, v| k}.last}"
puts "el plato mas barato es #{restaurant_menu.group_by{|k, v| v}.min_by{|k, v| k}.last}"
sum = 0
restaurant_menu.each { |key, value| sum += value }
puts "el promedio de los precioes es #{sum/restaurant_menu.length}"

array_platos=[]

restaurant_menu.each do |key, value| 
	array_platos.push(key)
end
pp array_platos

array_precios=[]

restaurant_menu.each do |key, value| 
	array_precios.push(value)
end
pp array_precios

restaurant_menu.update(restaurant_menu) do |key, value| 
	value=(value.to_f)*1.19
	
end
pp restaurant_menu

restaurant_menu.each do |key, value| 
	
	if key.include?(" ")
	value=(value.to_f)*0.8
	pp value
	end
end