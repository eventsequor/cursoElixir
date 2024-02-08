# An anonymous function is a function whitout name definition tha allows execute a group o sentences like a func
# also the normal function could receive a function like a parameter look at the next example
defmodule Calcular do
  def operar(func) do
    func.(5, 3)
  end
end

IO.puts(Calcular.operar(fn a, b -> a + b end))

restar = fn a, b -> a - b end

IO.puts(Calcular.operar(restar))
