defmodule CliTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  import Exercises.CLI, only: [ parse_args: 1 ]

  test ":help returned with -h and --help options" do
    assert parse_args(["-h",     "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
  end

  test "returns the exercise number" do
    assert parse_args(["5"]) == 5
  end

  test "prints an error message when an exercise is not found" do
    assert capture_io(:stderr, fn ->
      Exercises.CLI.process(0)
    end) == """
    Exercise 0 was not found.
    """
  end
end
