defmodule Search do
  def search(tuple, integer) when is_number(integer) do
    recursive_search(tuple, integer, -1)
  end

  defp recursive_search(tuple, integer, index) do
    index = index + 1

    cond do
      Enum.count(Tuple.to_list(tuple)) === index -> :not_found
      elem(tuple, index) === integer -> {:ok, index}
      elem(tuple, index) != integer -> recursive_search(tuple, integer, index)
      true -> :not_found
    end
  end
end
