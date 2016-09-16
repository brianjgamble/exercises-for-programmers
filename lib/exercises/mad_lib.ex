defmodule MadLib do
  @moduledoc """
  Exercise 4: Mad Lib
  """

  def run do
    with noun      = get_noun |> cleanup,
         verb      = get_verb |> cleanup,
         adjective = get_adjective |> cleanup,
         adverb    = get_adverb |> cleanup
    do
      create_mad_lib(noun, verb, adjective, adverb)
      |> IO.puts
    end
  end

  def get_noun do
    IO.gets "Enter a noun: "
  end

  def get_verb do
    IO.gets "Enter a verb: "
  end

  def get_adjective do
    IO.gets "Enter an adjective: "
  end

  def get_adverb do
    IO.gets "Enter an adverb: "
  end

  defp cleanup(string), do: String.trim(string)

  defp create_mad_lib(noun, verb, adjective, adverb) do
      "Do you #{verb} your #{adjective} #{noun} #{adverb}?  That's hilarious!"
  end
end
