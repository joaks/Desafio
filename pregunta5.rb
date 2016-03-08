
# Se tienen dos arreglos
# El primero es del tipo [1,2,3,0,1,2,2,1,2,1,2,0,3]
# El segundo es del tipo [:azul, :verde, :amarillo]
# Se pide cambiar todas las apariciones del número que aparece en el 
# arreglo 1 por el elemento con el
# mismo índice del arreglo 2, en caso de no existir el elemento 
# deberá ser remplazado por nil.
# El resultado de este ejercicio debería quedar:
# [:verde, :amarillo, nil, :azul, :verde, :amarillo ….]

require "pp"
array1 = [1,2,3,0,1,2,2,1,2,1,2,0,3]
array2 = [:# ==> [1, 2, 3, 0, 1, 2, 2, 1, 2, 1, 2, 0, 3]
azul, :verde, :amarillo]

array3 = []
i = 0
	while i < array1.length
		case array1[i] 
			when 0
				array3.push(array2[0])
			
			when 1
				array3.push(array2[1])
			 
			when 2
				array3.push(array2[2])	
			else		
				array3.push(nil)	
		end
		i+=1
	end	
print array3
