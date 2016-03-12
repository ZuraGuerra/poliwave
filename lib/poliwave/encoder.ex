defmodule Poliwave.Encoder do
  use Bitwise
  
  def encode(number) do
    sign_and_number = number
                    |> round
                    |> to_binary

    case sign_and_number do
      {:negative, number} ->
      {:positive, number} ->
    end
  end

  defp round(number) do
    number = number * 1.0e5
           |> round
  end

  defp to_binary(number) do
    if number < 0 do
      number = number * -1
             |> Integer.digits(2)
      {:negative, number}
    else
      Integer.digits(number, 2)
      {:positive, number}
    end
  end
end