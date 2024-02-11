defmodule StructurePerfil do
  defstruct [:nombre, :pais, :bebida, :comida, :animal]
end 

# Declaration

first_way = %StructurePerfil{nombre: "Eder", pais: "Colombia", bebida: "redbull", comida: "pasta", animal: "eagle"}
second_way = %{nombre: "Eder", pais: "Colombia", bebida: "redbull", comida: "pasta", animal: "eagle", __struct__: StructurePerfil}


IO.inspect(first_way)
IO.inspect(second_way)
