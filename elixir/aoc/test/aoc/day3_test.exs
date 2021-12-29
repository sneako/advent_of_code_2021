defmodule Aoc.Day3Test do
  use ExUnit.Case, async: true

  describe "part one" do
    test "example" do
      assert 198 == Aoc.Day3.part_one(example_input())
    end

    test "solution" do
      assert 845_186 == Aoc.Day3.part_one(input())
    end
  end

  describe "part two" do
    test "example" do
      assert 198 == Aoc.Day3.part_two(example_input())
    end
  end

  defp example_input do
    """
    00100
    11110
    10110
    10111
    10101
    01111
    00111
    11100
    10000
    11001
    00010
    01010
    """
    |> Aoc.Day3.parse_input()
  end

  defp input do
    File.read!("inputs/day3.txt")
    |> Aoc.Day3.parse_input()
  end
end
