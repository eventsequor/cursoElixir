defmodule Exercise do
  def getlist() do
    1..100
  end

  def isPar(number) do
    if rem(number, 2) == 0 do
      number
    else
      0
    end
  end

  def main do
    IO.puts(List.foldl(Enum.filter(getlist(), fn x -> rem(x,2) == 0 end),0, fn(x, acc) -> x + acc end))
    IO.puts(List.foldl(Enum.filter(getlist(), fn x -> rem(x,2) != 0 end),0, fn(x, acc) -> x + acc end))
    IO.puts(List.foldl(getlist(), 0, fn(x, acc) -> isPar(x) + acc end))
  end
end
