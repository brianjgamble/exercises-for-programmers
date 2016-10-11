defmodule HelloTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  alias Exercises.Hello, as: Hello

  test "prompts the user for a name" do
    prompt = capture_io([input: "jim"], fn ->
      assert Hello.get_name == "jim"
    end) 
    assert prompt == "What is your name? "
  end

  test "removes spaces and newlines from input" do
    assert Hello.cleanup("Bob\n") == "Bob"
    assert Hello.cleanup(" Bob ") == "Bob"
  end

  test "display a message to user using the given name" do
    assert capture_io([input: "Frank\n", capture_prompt: false], fn ->
      Hello.run
    end) == "Hello, Frank, nice to meet you!\n"
  end
end
