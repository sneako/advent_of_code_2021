defmodule Aoc.Day1Test do
  use ExUnit.Case, async: true

  describe "part one" do
    test "example" do
      assert Aoc.Day1.part_one(example_input()) == 7
    end

    test "nx - example" do
      assert Aoc.Day1.part_one_nx(example_input()) == 7
    end

    test "solution" do
      input = Aoc.file_to_int_list("inputs/day1.txt")
      assert Aoc.Day1.part_one(input) == 1446
    end
  end

  describe "part two" do
    test "example" do
      assert Aoc.Day1.part_two(example_input()) == 5
    end

    test "solution" do
      input = Aoc.file_to_int_list("inputs/day1.txt")
      assert Aoc.Day1.part_two(input) == 1486
    end
  end

  defp example_input do
    """
    199
    200
    208
    210
    200
    207
    240
    269
    260
    263
    """
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)
  end
end
