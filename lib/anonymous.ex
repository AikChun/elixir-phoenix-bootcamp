defmodule Anonymous do
  def print_five do
    5
  end

  def take_in_function(inline) do
    inline[:do]
  end

  def blank_function() do
    result = take_in_function do
      5 + 1
    end

    result
  end

end
