require "pp"
mappin = {Arica: ["Arica", "Camarones", "Putre", "General Lagos"],
  Tarapaca: ["Iquique", "Alto Hospicio", "Pozo Almonte", "Camiña", "Colchane", "Huara", "Pica"],
  Antofagasta: ["Antofagasta", "Mejillones", "Sierra Gorda", "Taltal"]}


puts "¿Qué quieres hacer?\na) Agregar una ciudad.\nb) Quitar una ciudad\nc) Agregar una región\nd) Quitar una región"
user_choice = gets.chomp


if user_choice == "a"
  puts "¿A cuál región le quieres agregar una ciudad?"
  user_region = gets.chomp
  boolean_variable = mappin.has_key?(user_region.to_sym)
  v = mappin[user_region.to_sym]

  if boolean_variable
    puts "Escribe el nombre de la ciudad que quieres agregar"
    user_city = gets.chomp
    v.push(user_city)
    puts "Se ha agregado la ciudad #{user_city} de la región #{user_region}"

  else
    puts "No está registrada esa región"
  end

elsif user_choice == "b"
  puts "¿A cuál región le quieres quitar una ciudad?"
  user_region2 = gets.chomp
  boolean_variable2 = mappin.has_key?(user_region2.to_sym)
  v2 = mappin[user_region2.to_sym]

  if boolean_variable2
    puts "Escribe el nombre de la ciudad que quieres eliminar"
    user_city2 = gets.chomp
    boolean_variable2_2 = v2.include?(user_city2)
    
    if boolean_variable2_2
      v2.delete(user_city2)
      puts "Se ha eliminado la ciudad #{user_city2} de la región #{user_region2}"

    else
      puts "Desde un principio no estaba registrada esa ciudad"
    end

  else
    puts "No está registrada esa región"
  end

elsif user_choice == "c"
  puts "¿Qué región quieres agregar?"
  user_region3 = gets.chomp
  boolean_variable3 = mappin.has_key?(user_region3.to_sym)
  
  if boolean_variable3
    puts "Ya está registrada esa región"
  else
    puts "Agrégale ciudades a la región #{user_region3} separadas por comas"
    user_city3 = gets.chomp
    mappin[user_region3.to_sym] = user_city3.split(", ")
    puts "Se ha agregado la región #{user_region3} con las ciudades #{mappin[user_region3.to_sym]}"
  end

elsif user_choice == "d"
  puts "¿Qué región quieres eliminar?"
  user_region4 = gets.chomp
  boolean_variable4 = mappin.has_key?(user_region4.to_sym)
  
  if boolean_variable4
    mappin.delete(user_region4.to_sym)
    puts "Se ha eliminado la región #{user_region4} con sus ciudades"
  else
    puts "No está registrada esa región"
  end

else
  puts "No has puesto una opción válida"
end

puts mappin