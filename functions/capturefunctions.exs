defmodule Calcular do
  def operar(func) do
    func.(5, 3)
  end
end

#Module
IO.puts(Calcular.operar(&rem/2))
