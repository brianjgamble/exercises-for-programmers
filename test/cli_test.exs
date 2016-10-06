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

  test "usage message includes completed exercises" do
    assert Exercises.CLI.usage =~ "The following exercises have been implemented: 1, 2"
  end

  test "prints an error message when an exercise is not found" do
    assert capture_io(:stderr, fn ->
      Exercises.CLI.process(0)
    end) == """
    Exercise 0 was not implemented.
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
