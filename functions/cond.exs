rain = 91

message = cond do
  rain == 0 -> "No ha llovido"
  rain < 30 -> "Ha llovido un poco "
  rain < 60 -> "Ha llovido un rato"
  rain < 90 -> "Ha llovido bastante"
  true -> "ya se paso de calidad la lluvia"
end

IO.puts(message)
