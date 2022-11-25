defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "return quantity of odd numbers" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call(list)

      expectedResponse = 3

      assert response == expectedResponse
    end
  end
end
