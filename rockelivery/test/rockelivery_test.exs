defmodule RockeliveryTest do
  use ExUnit.Case
  doctest Rockelivery

  test "greets the world" do
    assert Rockelivery.hello() == :world
  end
end
