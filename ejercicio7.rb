inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
#Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4
# y según eso el programa realizará distintas funciones.
# Si el usuario ingresa 1, podra agregar un item y su stock en un solo string
# y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
# Ejemplo del input: "Pendrives, 100"
#Si el usuario ingresa 2, podrá eliminar un item.

#Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).

#Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item)
# que hay en el negocio.

#Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.

#Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item
#existe en el inventario o no. Por ejemplo, el usuario ingresará "Notebooks"
#y el programa responderá "Sí".

#El programa debe repertirse hasta que el usuario ingrese 7 (salir).
option = 1

  while option <= 6 && option >0
    puts 'Choose an option:'
    puts 'Option 1 : add an item'
    puts 'Option 2 : delete an item'
    puts 'Option 3 : update'
    puts 'Option 4 : view total stock'
    puts 'Option 5 : item with higher stock'
    puts 'Option 6 : existence of an item'
    puts 'Option 7 : exit'

    option = gets.chomp.to_i
    if option <= 7 && option >0

  case option
    when 1
      puts 'Enter name and quantity of an item'
      item_new = gets.chomp
      c = item_new.split(', ')
      inventario[c[0]. to_sym] = c[-1].to_i
      print inventario
      puts
    when 2
      puts 'Type the item to delete'
      item_delete = gets.chomp.to_sym
      inventario.delete(item_delete)
      print inventario
      puts
    when 3
      puts 'enter item to update'
      item_update = gets.chomp.to_sym
      puts 'enter amount to update'
      quantity = gets.chomp.to_i
      inventario[item_update] = quantity
      print inventario
      puts
    when 4
      sum = 0
      inventario.each do |k, v|
        sum += v
      end
      print "The sum of the total stock is : #{sum}"
      puts
    when 5
      c = inventario.max
      print " Item with higher stock is : #{c[0]}"
      puts
    when 6
      puts 'enter the item to consult'
      search = gets.chomp.to_sym
      print inventario.invert[search]
        inventario.each do |k, v|
          if search == k
            puts 'item exists'
          else
            puts 'item does not exist'
            break
          end
        end
    else
    end
  else
      option = 2
  end

  end
