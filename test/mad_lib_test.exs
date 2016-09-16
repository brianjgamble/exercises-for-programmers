defmodule MadLibTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "prompt for a noun" do
    prompt = capture_io([input: "car"], fn ->
      assert MadLib.get_noun == "car"
    end)
    assert prompt == "Enter a noun: "
  end

  test "prompt for a verb" do
    prompt = capture_io([input: "run"], fn ->
      assert MadLib.get_verb == "run"
    end)
    assert prompt == "Enter a verb: "
  end

  test "prompt for a adjective" do
    prompt = capture_io([input: "red"], fn ->
      assert MadLib.get_adjective == "red"
    end)
    assert prompt == "Enter an adjective: "
  end

  test "prompt for a adverb" do
    prompt = capture_io([input: "slowly"], fn ->
      assert MadLib.get_adverb == "slowly"
    end)
    assert prompt == "Enter an adverb: "
  end

  test "display the mad-lib to the user" do
    mad_lib = capture_io(
                [input: "dog\nwalk\nblue\nquickly\n",
                 capture_prompt: false],
                fn -> MadLib.run end)
    assert mad_lib == """
    Do you walk your blue dog quickly?  That's hilarious!
    """
  end
end
