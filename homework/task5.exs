defmodule BoutiqueInventory do
  defmodule SingleItemBoutique do
    defstruct [:name, :price, quantity_by_size: %{}]
  end

  def new do
    []
  end

  def add_item(inventory, new_item = %SingleItemBoutique{}) when is_list(inventory) do
    if Enum.count(inventory) == 0 do
      [new_item | []]
    else
      Enum.concat(inventory, [new_item | []])
    end
  end

  def add_size(inventory, item_name, new_size, quantity)
      when is_list(inventory) and is_atom(new_size) and is_number(quantity) do
    item_searched =
      Enum.filter(inventory, fn element -> Map.get(element, :name) === item_name end)

    inventory2 = Enum.reject(inventory, fn element -> Map.get(element, :name) === item_name end)

    map_quantity_by_size =
      Map.put(Map.get(List.first(item_searched), :quantity_by_size), new_size, quantity)

    item_searched = Map.put(List.first(item_searched), :quantity_by_size, map_quantity_by_size)
    add_item(inventory2, item_searched)
  end

  def sort_by_price(inventory) do
    Enum.sort_by(inventory, fn element -> Map.get(element, :price) end)
  end

  def with_missing_price(inventory) do
    Enum.filter(inventory, fn element -> Map.get(element, :price) === 0 end)
  end
end
