exp = {:ok, "hola"}

output = case exp do
  _ -> "Match any thing"
  {ok, x} when is_number(x) -> "Ha dicho #{x}"
  {:ok, x} -> "Ha resuelto correctamente #{x}"
  {:error, y} -> "No ha resuelto correctamente #{y}"
end

IO.puts output
