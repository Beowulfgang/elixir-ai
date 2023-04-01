defmodule ElixirAiTest do
  use ExUnit.Case
  doctest ElixirAi

  test "greets the world" do
    assert ElixirAi.hello() == :world
  end
end
