defmodule Poliwave.Encoder do
  use Bitwise
  
  def encode(num) do
    num
    |> round
  end

  defp round(num) do
    num = num * 1.0e5
        |> round
  end
end