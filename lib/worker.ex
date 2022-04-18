defmodule Metex.Worker do
  def temperature_of(location) do
    :timer.sleep(:timer.seconds(1))

    case Enum.random([true, false]) do
      true ->
        {:ok, "Delhi: 26"}

      false ->
        {:error, "Random Error"}
    end
  end
end
