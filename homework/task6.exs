defmodule TopSecret do
  def to_ast(string_sentence) do
    elem(Code.string_to_quoted(string_sentence), 1)
  end

  def decode_secret_message_part(ast_node, listX) do
    type = elem(ast_node, 0)
    name = quote(do: ast_node) |> elem(0)

    if type == :defp or type == :def do
      arity = ast_node |> elem(2) |> Enum.at(0) |> elem(2) |> Enum.count()

      message =
        String.slice(Atom.to_string(ast_node |> elem(2) |> Enum.at(0) |> elem(0)), 0, arity)

      {name, [message | listX]}
    else
      {name, listX}
    end
  end

  def decode_secret_message(string_code) do
    ast_node = to_ast(string_code)
    list_functions = ast_node |> elem(2) |> Enum.at(1) |> Enum.at(0) |> elem(1) |> elem(2)

    variable =
      list_functions
      |> Enum.map(fn list_module ->
        List.to_charlist(elem(TopSecret.decode_secret_message_part(list_module, [""]), 1))
      end)

    List.to_string(variable)
  end
end
