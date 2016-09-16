defmodule SimpleMathTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "prompt the user for the first number" do
    prompt = capture_io([input: "10"], fn ->
      assert SimpleMath.get_first_number == "10"
    end) 
    assert prompt == "What is the first number? "
  end
  
  test "prompt the user for the second number" do
    prompt = capture_io([input: "7"], fn ->
      assert SimpleMath.get_second_number == "7"
    end)
    assert prompt == "What is the second number? "
  end

  test "adds two numbers" do
    assert SimpleMath.add(5, 6) == 11
  end
  
  test "subtract two numbers" do
    assert SimpleMath.subtract(20, 5) == 15
  end

  test "multiply two numbers" do
    assert SimpleMath.multiply(3, 4) == 12
  end

  test "divide two numbers" do
    assert SimpleMath.divide(50, 2) == 25
  end

  test "displays 4 arithmetic operations on the two given numbers" do
    prompt = capture_io(
               [input: "10\n5\n", capture_prompt: false],
               fn -> SimpleMath.run end)
    assert prompt == """
    10 + 5 = 15
    10 - 5 = 5
    10 * 5 = 50
    10 / 5 = 2.0
    """
  end
end
