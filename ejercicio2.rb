#Se tiene el siguiente hash:
productos = { 'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750 }

#1 y se realiza la siguiente consulta para conocer los productos existentes:
productos.each { |producto, valor| puts producto }

#2 Se quiere agregar un nuevo producto al hash:
productos['cereal'] = 2200
print productos
puts

#3 Se quiere actualizar el precio de la bebida:
productos['bebida'] = 2000
print productos
puts

#4 Convertir el hash en un array y guardarlo en una nueva variable.
a = productos.to_a
print a
puts

#5 Eliminar el producto 'galletas' del hash.
productos.delete('galletas')
print productos
puts
