defmodule Exercises.ChapterTwo.Quotes do
  @moduledoc """
  Exercise 3: Printing Quotes
  """

  def run do
    with qte       = get_quote |> cleanup,
         authr     = get_author |> cleanup,
         quotation = build_quotation(qte, authr)
    do
      IO.puts(quotation) 
    end
  end

  def get_quote do
    IO.gets "What is the quote? "
  end

  def get_author do
    IO.gets "Who said it? "
  end

  def cleanup(string) do
    String.trim_trailing(string, "\n")
  end

  def build_quotation(the_quote, the_author) do
    "#{the_author} says, \"#{the_quote}\""
  end
end
