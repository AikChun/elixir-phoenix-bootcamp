defmodule MapExample do

  def create_map do
    %{primary: "red", secondary: "blue"}
  end

  def get_secondary_color(map) do
    %{secondary: secondary_color} = map
    secondary_color
  end

  def update_map_with_function(map, key, value) do
    Map.put(map, key, value)
  end

end
