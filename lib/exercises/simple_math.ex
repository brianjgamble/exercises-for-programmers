defmodule SimpleMath do
  @moduledoc """
  Exercise 5: Simple Math
  """

  def run do
    with n1 = get_first_number |> to_number,
         n2 = get_second_number |> to_number
    do
      display_calculations(n1, n2)
    end
   end

  def get_first_number do
    IO.gets "What is the first number? "
  end

  def get_second_number do
    IO.gets "What is the second number? "
  end

  def display_calculations(n1, n2) do
    ["+", "-", "*", "/"]
    |> Enum.map(fn(op) -> IO.puts calculate(n1, n2, op) end)
  end

  def calculate(n1, n2, op) do
    result = case(op) do
      "+" -> add(n1, n2)
      "-" -> subtract(n1, n2)
      "*" -> multiply(n1, n2)
      "/" -> divide(n1, n2)
    end
    "#{n1} #{op} #{n2} = #{result}"
  end

  def add(n1, n2) do
    n1 + n2
  end

  def subtract(n1, n2) do
    n1 - n2
  end

  def multiply(n1, n2) do
    n1 * n2
  end

  def divide(n1, n2) do
    n1 / n2
  end

  defp to_number(val) do
    val
    |> String.trim
    |> String.to_integer
  end
end
