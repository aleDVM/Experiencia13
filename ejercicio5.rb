meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

# Generar un hash que contenga los meses como llave y las ventas como valor:
# h = {'Enero': 2000, 'Febrero': 3000 ... }

h = {}
meses.each do |mes|
  f = meses.index(mes)
  h[mes] = ventas[f]
end
print h

# Invertir las llaves y los valores del hash.
g = h.invert
print g

# Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
puts g.max.last
