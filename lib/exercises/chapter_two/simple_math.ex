defmodule Exercises.ChapterTwo.SimpleMath do
  @moduledoc """
  Exercise 5: Simple Math
  """

  @operations ["+", "-", "*", "/"]

  def run do
    with x = get_first_number |> to_number,
         y = get_second_number |> to_number
    do
      display_calculations(x, y)
    end
   end

  def get_first_number do
    IO.gets "What is the first number? "
  end

  def get_second_number do
    IO.gets "What is the second number? "
  end

  def display_calculations(x, y) do
    Enum.map(@operations, fn(operation) ->
      with answer = calculate(operation, x, y),
           output = "#{x} #{operation} #{y} = #{answer}"
      do
           IO.puts(output)
      end
    end)
  end

  defp calculate("+", x, y), do: add(x, y)
  defp calculate("-", x, y), do: subtract(x, y)
  defp calculate("*", x, y), do: multiply(x, y)
  defp calculate("/", x, y), do: divide(x, y)

  def add(x, y) do
    x + y
  end

  def subtract(x, y) do
    x - y
  end

  def multiply(x, y) do
    x * y
  end

  def divide(x, y) do
    x / y
  end

  defp to_number(val) do
    val
    |> String.trim
    |> String.to_integer
  end
end
