defmodule Exercises.CLI do
  @moduledoc """
  Handle command line parsing and dispatch to
  various modules that will run a specific
  exercise.
  """

  def run(argv) do
    argv
    |> parse_args
    |> process
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [ help: :boolean],
                                     aliases:  [ h:    :help   ])

    case parse do
      { [ help: true ], _, _ } -> :help
      { _, [ exercise ], _ }   -> exercise
      _                        -> :help
    end
  end

  def process(:help) do
    IO.puts "usage: exercises <exercise #>"
    System.halt(0)
  end

  def process(exercise_num) do
    IO.puts "Running exercise #{exercise_num}"
  end
end
