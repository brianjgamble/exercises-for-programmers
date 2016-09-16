defmodule CountChars do
  @moduledoc """
  Exercise 2: Counting the Number of Characters
  """

  def run do
    get_string
    |> display_count
  end

  def get_string do
    IO.gets "What is the input string? "
  end

  def display_count(str) do
    with string = str |> remove_newline,
         count  = count(string)
    do
      summarize(string, count)
      |> IO.puts
    end
  end

  def count(str) do
    String.length(str)
  end

  defp remove_newline(str) do
    String.trim_trailing(str, "\n")
  end

  defp summarize(str, count) do
    "#{str} has #{count} characters."
  end
end
