defmodule Calculadora do
  # suma/2
  def suma(a, b) do
    IO.puts("Me estan solicitando sumar #{a} y #{b}")
    c = a + b
    c
  end

  def rester(a, b) do
    a - b
  end

  def multiplicar(a, b) do
    a * b
  end

  def dividir(_a, b) when b == 0 do
    :inf
  end

  def dividir(a, b) do
    a / b
  end
end

IO.puts(Calculadora.suma(5, 3))
