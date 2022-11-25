defmodule ListFilter do
  require Integer

  def call(list) do
    listWithoutStrings =
      Enum.flat_map(list, fn string ->
        case Integer.parse(string) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)

    filter = Enum.filter(listWithoutStrings, fn number -> Integer.is_odd(number) end) |> length()

    filter
  end
end
