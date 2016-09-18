defmodule Exercises.CLI do
  @moduledoc """
  Handle command line parsing and dispatch to
  various modules that will run a specific
  exercise.
  """
  
  @completed_exercises Application.get_env(:exercises, :completed)

  def main(argv) do
    argv
    |> parse_args
    |> process
  end

  @doc """
  `argv` can be -h, --help, or the number of an exercise to run.

  Returns the exercise number or `:help` if help was given.
  """
  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [ help: :boolean],
                                     aliases:  [ h:    :help   ])

    case parse do
      { [ help: true ], _, _ }   -> :help
      { _, [ exercise_num ], _ } -> as_string(exercise_num)
      _                          -> :help
    end
  end

  defp as_string(str) when is_binary(str), do: str
  defp as_string(str), do: to_string(str)

  def process(:help) do
    IO.puts """
    usage: exercises <n>
      n: number of the exercise 

    (Exercises 1 - #{Enum.count(@completed_exercises)} have been implemented.)
    """
    System.halt(0)
  end

  def process(exercise_num) do
    if completed_exercise?(exercise_num) do
      run_exercise(exercise_num)
    else
      display_error_for_missing_exercise(exercise_num)
    end
  end

  defp completed_exercise?(num) do
    Map.has_key?(@completed_exercises, num)
  end

  defp run_exercise(num) do
    @completed_exercises
    |> Map.get(num)
    |> apply(:run, [])
  end

  defp display_error_for_missing_exercise(num) do
    IO.puts(:stderr, "Exercise #{num} was not implemented.")
  end
end
