if true do
  "return something"
else
  "return something else"
end


# if with keywork list structure, look at the expresion needs three parameters
edad = 18
message = if edad >= 18, do: "Mayor de edad", else: "Menor de edad"
message = if(edad >= 18, do: "Mayor de edad", else: "Menor de edad")

# only two parameter as a input conditional and true value

messag = if(edad>=18, do: "Puede ingresar")
