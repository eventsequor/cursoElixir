defmodule Counter do
  def count(string) when is_bitstring(string) do
    string = String.replace(string, ~r"['?:_!@#$%^&*:|,./]", "")
    list_of_words = String.split(string, " ")
    list_of_words = Enum.filter(list_of_words, fn x -> x != "" end)

    map_values =
      populate_counter_map(
        -1,
        Enum.filter(Enum.uniq(list_of_words), fn x -> x != "" end),
        Map.new()
      )

    determinate_concurrence(-1, map_values, list_of_words)
  end

  def determinate_concurrence(index, map_values, list_of_words) do
    index = index + 1

    if Enum.count(list_of_words) == index do
      map_values
    else
      key = Enum.at(list_of_words, index)
      map_values = Map.put(map_values, key, (Map.get(map_values, key) + 1))
      determinate_concurrence(index, map_values, list_of_words)
    end
  end

  defp populate_counter_map(index, list, map) when is_list(list) do
    index = index + 1

    if Enum.count(list) == index do
      map
    else
      map = Map.put(map, Enum.at(list, index), 0)
      populate_counter_map(index, list, map)
    end
  end

  def count(_a) do
    {:error, "The argument did you send it is not a string"}
  end
end
