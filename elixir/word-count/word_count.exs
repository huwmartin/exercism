defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence
    |> String.downcase
    |> String.split(~r/[^[:alnum:]-]+/u, trim: true)
    |> Enum.reduce(Map.new, &counter/2)
  end

  @spec counter(String.t, Map.t) :: map
  defp counter(word, dict) do
    Map.update(dict, word, 1, &(&1 + 1))
  end
end
