defmodule Parent do
  def respondToMyIgnorance(input) do
    String.strip(input) == ""
  end

  def givesMeEmotionalReponse(input) do
    String.upcase(input) == input and
    String.downcase(input) != input
  end

  def respondsCluelesslyAboutModernLife(input) do
    String.ends_with?(input, "?")
  end

  def talksToMe do
    true
  end
end

defmodule TeenageAngst do
  def hey(input) do
    cond do
      Parent.respondToMyIgnorance(input) -> "Fine. Be that way!"
      Parent.givesMeEmotionalReponse(input) -> "Whoa, chill out!"
      Parent.respondsCluelesslyAboutModernLife(input)-> "Sure."
      Parent.talksToMe -> "Whatever."
    end
  end
end

defmodule Bob do
  def hey(input) do
    TeenageAngst.hey(input)
  end
end
