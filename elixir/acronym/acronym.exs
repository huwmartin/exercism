defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(string) :: String.t()
  def abbreviate(string) do
    string
    |> String.split([" ", ",", "-"], trim: true)
    |> Enum.map(fn(x) -> String.split(x, ~r/(?=[A-Z])/) end)
    |> List.flatten
    |> Enum.map(fn(x) -> x |> String.first |> String.capitalize end)
    |> Enum.join
  end
end
