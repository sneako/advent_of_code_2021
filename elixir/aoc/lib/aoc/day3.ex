defmodule Aoc.Day3 do
  import Bitwise

  def parse_input(raw) do
    raw
    |> String.split("\n", trim: true)
    |> Enum.map(fn line ->
      line
      |> String.split("", trim: true)
      |> Enum.map(&String.to_integer/1)
    end)
  end

  def part_one([first | rest]) do
    count = length(rest) + 1
    half = div(count, 2)
    row_length = length(first)

    gamma =
      Enum.reduce(rest, first, fn curr, acc ->
        Enum.zip_with(curr, acc, &+/2)
      end)
      |> Enum.map_join("", fn x ->
        if x > half do
          "1"
        else
          "0"
        end
      end)
      |> String.to_integer(2)

    mask_list = for _ <- 1..row_length, into: <<>>, do: "1"
    mask = String.to_integer(mask_list, 2)
    epsilon = ~~~gamma &&& mask
    gamma * epsilon
  end

  def part_two([first | _] = input) do
    count = length(input)
    half = div(count, 2)
    row_length = length(first)
    
    IO.inspect(input)
    input
    |> Enum.zip()
    |> Enum.map(&Tuple.to_list/1)
     
    # init = {0, [], []}

    # {zero_count, starts_with_zero, starts_with_one} =
    #   Enum.reduce(input, init, fn
    #     [0 | _] = val, {zero_count, zeros, ones} ->
    #       {zero_count + 1, [val | zeros], ones}

    #     [1 | _] = val, {zero_count, zeros, ones} ->
    #       {zero_count, zeros, [val | ones]}
    #   end)


  end
end
