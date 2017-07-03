# Se tienen dos arrays uno con el nombre de personas y otro con las edades,
# se pide generar un hash con el nombre y edad de cada persona
# (se asume que no existen dos personas con el mismo nombre)

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
personas_hash = {}
personas.each do |persona|
  d = personas.index(persona)
  personas_hash[persona] = edades[d]
end
print personas_hash
# Crear un metodo que reciba el hash y devuelva la edad del hash pasado como
# argumento.

def return_age(has)
  a = has.map{ |k, v| v }
  print a
end

return_age(personas_hash)
