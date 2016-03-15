require "pp"
mappin = {Arica: ["Arica", "Camarones", "Putre", "General Lagos"],
  Tarapaca: ["Iquique", "Alto Hospicio", "Pozo Almonte", "Camiña", "Colchane", "Huara", "Pica"],
  Antofagasta: ["Antofagasta", "Mejillones", "Sierra Gorda", "Taltal"]}


puts "¿Qué quieres hacer?\na) Agregar una ciudad.\nb) Quitar una ciudad\nc) Agregar una región\nd) Quitar una región"
user_choice = gets.chomp


if user_choice == "a"

  puts "A cuál región le quieres agregar una ciudad"
  user_region = gets.chomp

  mappin.each do |k,v|
    if user_region.to_sym == k
      puts "Escribe el nombre de la ciudad"
      user_city = gets.chomp
      v.push(user_city)

    else
      puts "No está registrada esa región en el mapa"
    end
  end
end

puts mappin