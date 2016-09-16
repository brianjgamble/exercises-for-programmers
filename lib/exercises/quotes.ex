defmodule Quotes do
  @moduledoc """
  Exercise 3: Printing Quotes
  """

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
    with qte  = the_quote |> cleanup,
         auth = the_author |> cleanup
    do
      "#{auth} says, \"#{qte}\""
    end
  end

  def run do
    with qte  = get_quote,
         auth = get_author,
         quotation = build_quotation(qte, auth)
    do
      IO.puts(quotation) 
    end
  end
end
