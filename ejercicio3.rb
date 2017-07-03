h = {"x": 1, "y":2}

#Agregar el string z con el valor 3.
h["z"] = 3
print h

#Cambiar el valor de x por 5.
h[:x] = 5
print h

#Eliminar la clave y.
h.delete(:y)
print h

#Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
h.each do |k, v|
  puts 'yeeah' if k == "z"
end

#Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
d = h.invert
print d
