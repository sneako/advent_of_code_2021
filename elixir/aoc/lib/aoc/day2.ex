defmodule Aoc.Day2 do
  def part_one(input) do
    {depth, pos} =
      Enum.reduce(input, {0, 0}, fn {direction, val}, {depth, pos} ->
        case direction do
          :forward -> {depth, pos + val}
          :down -> {depth + val, pos}
          :up -> {depth - val, pos}
        end
      end)

    depth * pos
  end

  def part_two(input) do
    {depth, pos, _aim} =
      Enum.reduce(input, {0, 0, 0}, fn {direction, val}, {depth, pos, aim} ->
        case direction do
          :forward -> {depth + aim * val, pos + val, aim}
          :down -> {depth, pos, aim + val}
          :up -> {depth, pos, aim - val}
        end
      end)

    depth * pos
  end

  def parse_input(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(fn line ->
      [direction, val] = String.split(line, " ")
      {String.to_existing_atom(direction), String.to_integer(val)}
    end)
  end
end
