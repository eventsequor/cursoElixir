# Example declaration
mapa = %{:dia => "lunes"}

IO.puts("Mapa")
IO.inspect(mapa)

kv = [mapa: "lunes"]
IO.puts("\nKey word value")
IO.inspect(kv)

# What is the diferent between keywords and maps, it is we can use any elements differents to atoms to declare the keys
days_of_week = %{1 => "lunes", 2 => "martes", 3 => "miercoles"}

IO.puts("\nMaps with integer like a key of the days of week")
IO.inspect(days_of_week)

# If our map has an atom like a keyword we can call directly it

IO.puts("\nGet day from map name mapa")
IO.inspect(mapa.dia)

# The maps has not and orden it independing of its declaration
# in the following two sentences we declare two maps with a different order however, when we compare both we will get they are equals
mapOne = %{:a => "a", :b => "b"}
mapTwo = %{:b => "b", :a => "a"}
are_equals = mapOne == mapTwo

IO.puts(
  "\nTwo maps are equals  %{:a => \"a\", :b => \"b\"} == %{:b => \"b\", :a => \"a\"} == #{are_equals}"
)

# Get values using pattern matching
# Given a map get the value of :c
otherMap = %{:b => "b", :a => "a", :c => "c value"}
%{:c => valeOfC} = otherMap
IO.puts("\nThe value of C is ")
IO.puts(valeOfC)

## append a element map
mapOne = %{:a => "a", :b => "b"}
mapTwo = %{:c => "c", :d => "d"}

newMap = Map.merge(mapOne, mapTwo)

IO.puts("\nMerging two maps %{:a => \"a\", :b => \"b\"} and %{:c => \"c\", :d => \"d\"}")
IO.inspect(newMap)

# This is interesting because the second map has a key with other value is going to get value of the map in the right side, this in simple words is an update
mapOne = %{:a => "a", :b => "b"}
mapTwo = %{:a => "aa", :d => "d"}

newMap = Map.merge(mapOne, mapTwo)

IO.puts("\nMerging two maps with duplicate keys %{:a => \"a\", :b => \"b\"} and %{:a => \"aa\", :d => \"d\"}")
IO.inspect(newMap)

# This puts elements, however, if the element it present yet then the put function is going to update the value
mapOne = %{:a => "a", :b => "b"}
mapTwo = %{:c => "c"}

newMap = Map.put(mapOne, :c, "value of :c")

IO.puts("\nPuts elements to map")
IO.inspect(newMap)

# Get element
mapOne = %{:a => "a", :b => "b"}
value = Map.get(mapOne, :b)
IO.puts("\nValue to get :b key -> #{value}")

# Get element
mapOne = %{:a => "a", :b => "b"}
newMap = Map.delete(mapOne, :b)
IO.puts("\nDelete element")
IO.inspect(Map.from_struct(newMap))
