defmodule Aoc.Day1 do
  def part_one([first | rest]) do
    Enum.reduce(rest, {first, 0}, fn next, {prev, count} ->
      if next > prev do
        {next, count + 1}
      else
        {next, count}
      end
    end)
    |> elem(1)
  end

  def part_two(input) do
    [first | rest] = Enum.chunk_every(input, 3, 1)

    Enum.reduce(rest, {Enum.sum(first), 0}, fn next, {prev, count} ->
      next_sum = Enum.sum(next)

      if next_sum > prev do
        {next_sum, count + 1}
      else
        {next_sum, count}
      end
    end)
    |> elem(1)
  end
end
