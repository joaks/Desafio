require "pp"
mappin = {Arica: ["Arica", "Camarones", "Putre", "General Lagos"], Tarapaca: ["Iquique", "Alto Hospicio", "Pozo Almonte", "Camiña", "Colchane", "Huara", "Pica"]}

puts "A cuál región le quieres agregar una ciudad"
user_choice = gets.chomp

mappin.each do |k,v|
  if user_choice.to_sym == k
    puts "Escribe el nombre de la ciudad"
    user_choice2 = gets.chomp
    v.push(user_choice2)
  end
end

puts mappin