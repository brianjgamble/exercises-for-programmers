defmodule Exercises.CLI do
  @moduledoc """
  Handle command line parsing and dispatch to
  various modules that will run a specific
  exercise.
  """
  
  @challenges Application.get_env(:exercises, :challenges)

  def main(argv) do
    argv
    |> parse_args
    |> process
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [ help: :boolean],
                                     aliases:  [ h:    :help   ])

    case parse do
      { [ help: true ], _, _ } -> :help
      { _, [ exercise ], _ }   -> String.to_integer(exercise)
      _                        -> :help
    end
  end

  def process(:help) do
    IO.puts """
    usage: exercises <n>
      n: number associated with the challenge [Valid range is 1 - #{Enum.count(@challenges)}.]
    """
    System.halt(0)
  end

  def process(exercise) do
   if Map.has_key?(@challenges, exercise) do
      @challenges
      |> Map.get(exercise)
      |> apply(:run, [])
    else
      IO.puts(:stderr, "Exercise #{exercise} was not found.")
    end
  end
end
