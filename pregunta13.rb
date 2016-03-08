require "pp"
feriados = ["Lunes 3", "Martes 4", "Jueves 20", "Viernes 21", "Lunes 31"]
dias = ["Sábado 1", "Domingo 2", "Lunes 3", "Martes 4", "Miercoles 5", "Jueves 6", "Viernes 7", "Sábado 8", "Domingo 9", "Lunes 10", "Martes 11", "Miércoles 12", "Jueves 13", "Viernes 14", "Sábado 15", "Domingo 16", "Lunes 17", "Martes 18", "Miércoles 19", "Jueves 20", "Viernes 21", "Sábado 22", "Domingo 23", "Lunes 24", "Martes 25", "Miércoles 26", "Jueves 27", "Viernes 28", "Sábado 29", "Domingo 30", "Lunes 31"]
dias_menos = []

dias.each do |x|
  if x.include?("Sábado") || x.include?("Domingo")
    dias_menos.push(x)
  end
end


dias_habiles = dias - feriados - dias_menos

print dias_habiles
