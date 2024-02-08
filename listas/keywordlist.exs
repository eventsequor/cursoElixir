kwlist = [{:key1, "value1"}, {:key2, "value2"}]

IO.puts("print value key #{kwlist[:key2]}")

# Append elemento to keyword list
kwlist = kwlist ++ [{:key3, "value3"}]
IO.inspect(kwlist)
