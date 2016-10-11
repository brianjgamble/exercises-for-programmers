defmodule Exercises.ChapterTwo.QuotesTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  alias Exercises.ChapterTwo.Quotes

  test "prompt the user for a quote" do
    prompt = capture_io([input: "hello\n"], fn ->
      assert Quotes.get_quote == "hello\n"
    end) 
    assert prompt == "What is the quote? "
  end

  test "prompt the user for the author" do
    prompt = capture_io([input: "jim\n"], fn ->
      assert Quotes.get_author == "jim\n"
    end) 
    assert prompt == "Who said it? "
  end

  test "removes the newline from a string" do
    assert Quotes.cleanup("foo\n") == "foo"
    assert Quotes.cleanup("bar") == "bar"
  end

  test "displays the author's quote" do
    result = capture_io(
               [input: "The best vision is insight.\nMalcolm Forbes\n",
                capture_prompt: false],
               fn -> Quotes.run end)
    assert result == """
    Malcolm Forbes says, "The best vision is insight."
    """
  end
end
