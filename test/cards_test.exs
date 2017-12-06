defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "deck contains card" do
    assert Cards.contains?(["One", "Two"], "Two") == false
  end
end
