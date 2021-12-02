defmodule Aoc.Day2Test do
  use ExUnit.Case, async: true

  describe "part one" do
    test "example" do
      assert 150 == Aoc.Day2.part_one(example_input())
    end

    test "solution" do
      assert 1_648_020 == Aoc.Day2.part_one(input())
    end
  end

  describe "part two" do
    test "example" do
      assert 900 == Aoc.Day2.part_two(example_input())
    end

    test "solution" do
      assert 1_759_818_555 == Aoc.Day2.part_two(input())
    end
  end

  defp example_input do
    """
    forward 5
    down 5
    forward 8
    up 3
    down 8
    forward 2
    """
    |> Aoc.Day2.parse_input()
  end

  defp input do
    "inputs/day2.txt"
    |> File.read!()
    |> Aoc.Day2.parse_input()
  end
end
