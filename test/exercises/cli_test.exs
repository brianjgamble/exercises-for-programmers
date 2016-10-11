defmodule CliTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  import Exercises.CLI, only: [ parse_args: 1 ]

  test ":help returned with -h and --help options" do
    assert parse_args(["-h",     "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
  end

  test "returns the exercise number" do
    assert parse_args(["5"]) == "5"
    assert parse_args([7]) == "7"
  end

  test "processing :help prints the usage message" do
    assert capture_io(:stdio, fn ->
      Exercises.CLI.process(:help)
    end) == """
    usage: exercises <n>
    n: number of the exercise 

    The following exercises have been implemented: 1, 2\n
    """
  end

  test "prints an error message when an exercise is not found" do
    assert capture_io(:stderr, fn ->
      Exercises.CLI.process("3")
    end) == """
    Exercise 3 is not implemented.
    """
  end

  test "runs a completed exercise" do
    assert capture_io(:stdio, fn ->
      Exercises.CLI.main(["2"])
    end) == """
    Running bar
    """
  end
end
