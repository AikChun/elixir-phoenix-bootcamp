defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "Deck contains a given card" do
    assert Cards.contains?(["Ace of Spades", "Two of Spades"], "Two of Spades") == true
  end

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffle a deck randomizes it" do
    deck = Cards.create_deck
    assert deck != Cards.shuffle(deck)
    refute deck == Cards.shuffle(deck)
  end
end
