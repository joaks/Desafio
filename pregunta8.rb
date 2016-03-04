 require "pp"
 string = "1,2,7,1,3,5,3.4,9,1"

 arreglo = string.split(",")
 
sum=0

 arreglo.each do |x|
 	sum +=x.to_f
 end
 pp arreglo
 pp arreglo.mode
 pp sum