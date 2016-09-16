defmodule CountCharsTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "prompt the user for an input string" do
    prompt = capture_io([input: "hello"], fn ->
      assert CountChars.get_input == "hello"
    end) 
    assert prompt == "What is the input string? "
  end

  test "removes newline from a string" do
    assert CountChars.cleanup("foo\n") == "foo"
    assert CountChars.cleanup(" bar ") == " bar "
  end

  test "counts the number of characters in a string" do
    assert CountChars.count("foo") == 3
    assert CountChars.count("hello world") == 11
  end

  test "displays the given string with a count of characters" do
    assert capture_io([input: "Homer", capture_prompt: false], fn ->
      CountChars.run
    end) == "Homer has 5 characters.\n"
  end
end
