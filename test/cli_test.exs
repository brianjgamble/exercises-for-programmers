defmodule CliTest do
  use ExUnit.Case

  import Exercises.CLI, only: [ parse_args: 1 ]

  test ":help returned with -h and --help options" do
    assert parse_args(["-h",     "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
  end

  test "returns the exercise number" do
    assert parse_args(["5"]) == "5"
  end
end
