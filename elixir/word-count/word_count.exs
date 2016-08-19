defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    words = String.split(sentence, " ")
     Enum.cou
    for n <- words, o <- words, do: is_dup_word?(n, o)
  end

  defp is_dup_word?(n, o) do
    cond do
      n = o -> %{n => 1}
    end
  end
end
