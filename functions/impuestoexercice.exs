defmodule Taxes do

  def taxA(price, type) do
    porcentage(type) * price
  end

  # private function
  defp porcentage(type) do
    cond do
      type == :normal -> 0.21
      type == :reducido -> 0.10
      type == :super_reducido -> 0.04
    end
  end
end

IO.inspect(Taxes.taxA(10, :reducido))
