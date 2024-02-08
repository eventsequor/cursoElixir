defmodule Recursivo do
  def factorial(0) do
    1
  end

  def factorial(n) do
    # n * (n-1)
    n * factorial(n(-1))
  end
end
