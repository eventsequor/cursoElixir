defmodule Robot do
  defstruct [:direction, :position]

  def create(dir, {a, b})
      when is_atom(dir) and (dir === :north or dir === :east or dir === :south or dir === :west) do
    %Robot{direction: dir, position: {a, b}}
  end

  def create(_, _) do
    {:error, "The instructions does not match with the valid args, the first arg dir should be
     type atom and match with one of the following values :north, :east, :south, :west
     and the second one argument should be tuple/2 type"}
  end

  def direction(%Robot{} = robot) do
    robot.direction
  end

  def position(%Robot{} = robot) do
    robot.position
  end

  def simulate(instructions, %Robot{} = robot) do
    if(String.match?(instructions, ~r/[RLA]+$/)) do
      evaluate_instructions(-1, instructions, robot)
    else
      {:error,
       "The instructions does not match with the valid args, the argument only should contains the next letters RLA"}
    end
  end

  defp evaluate_instructions(index, instructions, %Robot{} = robot) do
    index = index + 1

    if index === String.length(instructions) do
      robot
    else
      instruction = String.at(instructions, index)

      dir =
        if instruction === "R" or instruction === "L",
          do: rotate(instruction, robot.direction),
          else: robot.direction

      coordinates =
        if instruction === "A", do: moved(robot.position, robot.direction), else: robot.position

      robot = %Robot{direction: dir, position: coordinates}
      evaluate_instructions(index, instructions, robot)
    end
  end

  def rotate(letter, dir) do
    unless(letter == "R" or letter == "L") do
      dir
    else
      directions = [{:north, 0}, {:east, 1}, {:south, 2}, {:west, 3}]
      pos = directions[dir]

      pos = if letter === "R", do: pos + 1, else: pos
      pos = if letter === "L", do: pos - 1, else: pos

      pos = if pos > 3, do: 0, else: pos
      pos = if pos < 0, do: 3, else: pos

      elem(Enum.at(directions, pos), 0)
    end
  end

  def moved({a, b}, dir) do
    cond do
      dir === :north -> {a, b + 1}
      dir === :east -> {a + 1, b}
      dir === :south -> {a, b - 1}
      dir === :west -> {a - 1, b}
      true -> {a, b}
    end
  end
end
