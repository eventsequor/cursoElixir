defmodule PrintTitles do
  def printTask(number) do
    IO.puts("\n\n==============================")
    IO.puts("=========== Task #{number} ===========")
    IO.puts("==============================")
  end
end


PrintTitles.printTask(1)
IO.puts("Check equilateral triangle (5, 5, 5)")
IO.inspect(TriangleType.kind(5, 5, 5))
IO.puts("\nCheck isoceles triangle (5, 5, 8)")
IO.inspect(TriangleType.kind(5, 5, 8))
IO.puts("\nCheck scalene triangle (15, 34, 32)")
IO.inspect(TriangleType.kind(15, 34, 32))
IO.puts("\nCheck triangle measure error (15, 34, 1)")
IO.inspect(TriangleType.kind(15, 34, 1))

PrintTitles.printTask(2)
robot = Robot.create(:north, {7, 3})
IO.puts("Initial Robot info:")
IO.inspect(robot)
robot_new_position = Robot.simulate("RAALAL", robot)
IO.puts("Updated Robot info:")
IO.inspect(robot_new_position)

PrintTitles.printTask(3)
sentence = "hola eder hola, que tal ha estado? todo en tu trabajo ** *saludos saludos otra vez ssaludos"
expected_map = %{
  "eder" => 1,
  "en" => 1,
  "estado" => 1,
  "ha" => 1,
  "hola" => 2,
  "otra" => 1,
  "que" => 1,
  "saludos" => 2,
  "ssaludos" => 1,
  "tal" => 1,
  "todo" => 1,
  "trabajo" => 1,
  "tu" => 1,
  "vez" => 1
}
result? = (expected_map === Counter.count(sentence))
IO.puts("The expected map is correct: #{result?} \n\nExpected Map:")
IO.inspect(expected_map)
