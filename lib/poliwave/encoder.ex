defmodule Poliwave.Encoder do
  use Bitwise
  
  def encode(num) do
    num
    |> round
    |> to_binary
  end

  defp round(num) do
    num = num * 1.0e5
        |> round
  end

  defp to_binary(num) do
    if num < 0 do
      num = num * -1
          |> Integer.digits(2)
    else
      Integer.digits(num, 2)
    end
  end
end