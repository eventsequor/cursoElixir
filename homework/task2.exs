defmodule Robot do
  defstruct [:direction, :position]
  
  def create(:nort, {a, b}) do
    %Robot{direction: :nort, position: {a, b}}
  end
  def create(:east, {a, b}) do
    %Robot{direction: :east, position: {a, b}}
  end
  def create(:south, {a, b}) do
    %Robot{direction: :south, position: {a, b}}
  end
  def create(:west, {a, b}) do
    %Robot{direction: :west, position: {a, b}}
  end
  def direction(%Robot{} = robot) do
    robot.direction
  end
  def position(%Robot{} = robot) do
    robot.position
  end
end