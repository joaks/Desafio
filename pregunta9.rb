# Se tiene un arreglo del tipo [1,2,1,3,2,1,4,7,1,2]
# Mostrar todos los índices y números que corresponden, en el ejemplo mostrado,
#  el elemento 3 está en la
# posición 3, por lo tranto habría que mostrar 
# "El elemento 3 está en la posición 3", hay que repetir eso por
# cada elemento que cumpla la condición.

require "pp"

arreglo = [1,2,1,3,2,1,4,7,1,2]
i = 0
arreglo.each do |x|
	pp "el elemento #{x} esta en la posicion #{i}"
	i+=1
end