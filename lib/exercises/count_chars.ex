defmodule CountChars do
  @moduledoc """
  Exercise 2: Counting the Number of Characters
  """

  def run do
    with string = get_input |> cleanup,
         count  = count(string)
    do
      IO.puts "#{string} has #{count} characters."
    end
  end

  def get_input do
    IO.gets "What is the input string? "
  end

  def cleanup(str) do
    String.trim_trailing(str, "\n")
  end

  def count(str) do
    String.length(str)
  end
end
