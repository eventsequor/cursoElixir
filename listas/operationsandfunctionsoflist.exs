# Concatenacion de listas es con el simbolo
# ++
lista = [1, 2, 3, 4, 5] ++ [6, 7, 8, 9]

# Output [1, 2, 3, 4, 5, 6, 7, 8, 9]
IO.inspect(lista)

# remove elements
# Output [1, 3, 5]
lista = [1, 2, 3, 4, 5] -- [2, 4]
IO.inspect(lista)

IO.puts("\n\n")

# Get elements with patter matchine in x position in this case three(2)
lista = [1, 2, 3, 4, 5]
element = [_, _, x | _] = lista

IO.puts("Element in three(2) position #{x} of [1, 2, 3, 4, 5] \n")

# Given a position get element
lista = [1, 2, 3, 4, 5]
element = Enum.at(lista, 2)
IO.puts("Element on position three(2) <#{element}> \n")

first_element = List.first(lista)
IO.puts("First element of list #{first_element}")

last_element = List.last(lista)
IO.puts("Second element of list #{last_element}")

#Insert elements in specific posisition
IO.puts("Insert in the list")
letters_list = ["a", "b", "c"]
IO.puts("\nLa lista de letras es: ")
IO.inspect(letters_list)

new_letters_list = List.insert_at(letters_list, 1, "e")

IO.puts("\nLa nueva lista de letras es: ")
IO.inspect(new_letters_list)

# Eliminar in specific position
IO.puts("Delete a element in the list")
letters_list = ["a", "b", "c"]
IO.puts("\nLa lista de letras es: ")
IO.inspect(letters_list)

new_letters_list = List.delete_at(letters_list, 1)

IO.puts("\nLa nueva lista de letras es: ")
IO.inspect(new_letters_list)


# Size or lenght

other_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] # Size 11
list_lenght = length(other_list)
IO.puts("\n lenght of list is #{list_lenght}")
