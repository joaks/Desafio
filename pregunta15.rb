require "pp"
alumnos = [{name: "Sebastián Meza Estrada", age: 25}, {name: "Cristóbal Domínguez Henriquez", age: 35}, {name: "Daniela Alejandra Mora", age: 28}, {name: "Manuel Alejandro Saez Palominos", age: 28},{name: "Gonzalo Patricio Alarcón Iturra", age: 28}, {name: "Rodrigo Ignacio Hein Yanez", age: 29 }, { name: "Francisca Beatriz Medina Concha", age: 22 }, {name: "María Alejandra Quintana Ramirez", age: 28}, {name: "Nathalie Ravilet", age: 28}, {name: "Joaquin Sepúlveda", age: 24}, {name: "Carlos Patricio Salas Marín", age: 27}, {name: "Diego Guajardo", age: 28}, {name: "Benjamín Silva López", age: 35}, {name: "Belén Guede Vicencio", age: 18}]
sum = 0

alumnos.each do |x|
  sum += x[:age].to_f
end

puts "El promedio de edad es #{sum/alumnos.length}"

edades = []
alumno_menor = ""

alumnos.each do |x|
  edades.push(x[:age])
  alumno_menor = x.select { |k,v| v = edades.min }
end

print "El alumno menor es #{alumno_menor[:name]} con #{alumno_menor[:age]} años"
