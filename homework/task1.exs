defmodule TriangleType do
  def kind(a, b, c) when a == b and b == c do
    {:ok, :equilateral}
  end

  def kind(a, b, c) when (a == b and (c > a or c < a)) or (a == c and (b > a or b < a)) or (b == c and (a > b or a < b)) do
    {:ok, :isosceles}
  end

  def kind(a, b, c) when a + b >= c and b + c >= a and a + c >= b do
    {:ok, :scalene}
  end

  def kind(a, b, c) when a <= 0 or b <= 0 or c <= 0 do
    {:error, "All sides of the triangle must be greater than zero."}
  end

  def kind(_, _, _) do
    {:error, "The values does not match with any kind of triangle"}
  end
end
