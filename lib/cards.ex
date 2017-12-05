defmodule Cards do

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits , val <- values do
      "#{val} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck) 
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand) do
    Enum.split(deck, hand)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "this file doesn't exists"
    end
  end
end
