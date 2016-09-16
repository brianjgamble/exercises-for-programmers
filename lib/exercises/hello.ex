defmodule Hello do
  @moduledoc """
  Exercise 1: SayingHello
  """

  def run do
    get_name
    |> cleanup
    |> display_greeting
  end

  def get_name do
    IO.gets "What is your name? "
  end

  def cleanup(str) do
    String.trim(str)
  end

  def display_greeting(name) do
    IO.puts "Hello, #{name}, nice to meet you!"
  end
end
