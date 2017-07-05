restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

#Obtener el plato mas caro.
a = restaurant_menu.invert.max
print "el plato mas caro es : #{a[1]}"
puts
#Obtener el plato mas barato.
b = restaurant_menu.invert.min
print "el plato mas barato es : #{b[1]}"
puts
# Sacar el promedio del valor de los platos.
sum = 0
restaurant_menu.each { |k, v| sum = sum + v }
c=  sum / restaurant_menu.length
print "el promedio de los platos es : #{c}"
puts

#Crear un arreglo con solo los nombres de los platos.
print restaurant_menu.map{ |k, v| k}

#Crear un arreglo con solo los valores de los platos.
print restaurant_menu.map{ |k, v| v}

#Modificar el hash y agregar el IVA a los valores de los platos
# (multiplicar por 1.19).
print restaurant_menu.map{ |k, v| v*1.19}

#Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
j = restaurant_menu.map do |k, v|
  f = k.split(' ')
  if f[1] != nil
  print k,  v = v*0.8
end
end
