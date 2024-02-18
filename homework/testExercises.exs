defmodule PrintTitles do
  def printTask(number) do
    IO.puts("\n\n==============================")
    IO.puts("=========== Task #{number} ===========")
    IO.puts("==============================")
  end
end

PrintTitles.printTask(1)
IO.puts("Check equilateral triangle (5, 5, 5)")
IO.inspect(TriangleType.kind(5, 5, 5))
IO.puts("\nCheck isoceles triangle (5, 5, 8)")
IO.inspect(TriangleType.kind(5, 5, 8))
IO.puts("\nCheck scalene triangle (15, 34, 32)")
IO.inspect(TriangleType.kind(15, 34, 32))
IO.puts("\nCheck triangle measure error (15, 34, 1)")
IO.inspect(TriangleType.kind(15, 34, 1))

PrintTitles.printTask(2)
robot = Robot.create(:north, {7, 3})
IO.puts("Initial Robot info:")
IO.inspect(robot)
robot_new_position = Robot.simulate("RAALAL", robot)
IO.puts("Updated Robot info:")
IO.inspect(robot_new_position)

PrintTitles.printTask(3)

sentence =
  "hola eder hola, que tal ha estado? todo en tu trabajo ** *saludos saludos otra vez ssaludos"

expected_map = %{
  "eder" => 1,
  "en" => 1,
  "estado" => 1,
  "ha" => 1,
  "hola" => 2,
  "otra" => 1,
  "que" => 1,
  "saludos" => 2,
  "ssaludos" => 1,
  "tal" => 1,
  "todo" => 1,
  "trabajo" => 1,
  "tu" => 1,
  "vez" => 1
}

result? = expected_map === Counter.count(sentence)
IO.puts("The expected map is correct: #{result?} \n\nExpected Map:")
IO.inspect(expected_map)

PrintTitles.printTask(4)
tuple = {4, 2, 7, 6, 4, 8, 9, 1}
IO.puts("Tuple input:")
IO.inspect(tuple)
IO.puts("Position of element number 8")
IO.inspect(Search.search(tuple, 8))
IO.puts("\nPosition of element number 6")
IO.inspect(Search.search(tuple, 8))
IO.puts("\nExpected error element is not in the tuple")
IO.inspect(Search.search(tuple, 48))

PrintTitles.printTask(5)
# New inventory
inventory = BoutiqueInventory.new()

IO.puts("New inventory")
IO.inspect(inventory)

# Create item
item = %BoutiqueInventory.SingleItemBoutique{
  name: "chaqueta",
  price: 9,
  quantity_by_size: %{:s => 5}
}

item2 = %BoutiqueInventory.SingleItemBoutique{
  name: "camisa",
  price: 4,
  quantity_by_size: %{:s => 5, :m => 7}
}

item3 = %BoutiqueInventory.SingleItemBoutique{
  name: "pantalon",
  price: 5,
  quantity_by_size: %{:s => 5, :m => 7}
}

item4 = %BoutiqueInventory.SingleItemBoutique{
  name: "cachucha",
  price: 0,
  quantity_by_size: %{:s => 3, :m => 4, :l =>17}
}

item5 = %BoutiqueInventory.SingleItemBoutique{
  name: "sombrero",
  price: 0,
  quantity_by_size: %{:s => 3, :m => 5}
}

# Add item
IO.puts("\nAdd element to inventory")
IO.puts("Element to add:")
IO.inspect(item)

IO.puts("\nNew status of inventory items added")
inventory = BoutiqueInventory.add_item(inventory, item)
inventory = BoutiqueInventory.add_item(inventory, item2)
inventory = BoutiqueInventory.add_item(inventory, item3)
inventory = BoutiqueInventory.add_item(inventory, item4)
inventory = BoutiqueInventory.add_item(inventory, item5)

IO.puts("\n\nModify inventory")
inventory = BoutiqueInventory.add_size(inventory, "pantalon", :l, 12)

IO.puts("\nNew status of inventory after to update inventory")
IO.inspect(inventory)

IO.puts("\n\Sort by price inventory")
inventory = BoutiqueInventory.sort_by_price(inventory)
IO.inspect(inventory)

IO.puts("\n\Missing item of price")
inventory = BoutiqueInventory.with_missing_price(inventory)
IO.inspect(inventory)

IO.puts("\n\Total quantity of element")
IO.inspect(BoutiqueInventory.total_quantity(item4))

PrintTitles.printTask(6)

IO.puts("Parts 1, 2, 3, 4 of point number 6")
ast_node = TopSecret.to_ast("defp cat(a, b, c), do: nil")
IO.inspect(TopSecret.decode_secret_message_part(ast_node, ["day"]))
ast_node = TopSecret.to_ast("defp cat(a, b), do: nil")
IO.inspect(TopSecret.decode_secret_message_part(ast_node, ["day"]))
ast_node = TopSecret.to_ast("10 + 3")
IO.inspect(TopSecret.decode_secret_message_part(ast_node, ["day"]))

code = """
defmodule MyCalendar do
  def busy?(date, time) do
    Date.day_of_week(
      date != 7 and
        time.hour in 10..16
    )
  end
  def yesterday?(date) do
    Date.diff(Date.utc_today(), date)
  end
end
"""

ast_node = TopSecret.to_ast(code)
IO.puts("\nDecode secrete message from code")
IO.puts(code)
IO.puts("\nSecret message:")
IO.inspect(TopSecret.decode_secret_message(code))
