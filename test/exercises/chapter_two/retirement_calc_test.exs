defmodule RetirementCalcTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  alias Exercises.RetirementCalc, as: RetirementCalc

  test "prompt the user for their current age" do
    prompt = capture_io([input: "20"], fn ->
      assert RetirementCalc.get_current_age == "20"
    end)
    assert prompt == "What is your current age? "
  end

  test "prompt the user for their retirement age" do
    prompt = capture_io([input: "80"], fn ->
      assert RetirementCalc.get_retirement_age == "80"
    end)
    assert prompt == "At what age would you like to retire? "
  end

  test "displays the retirement plan" do
    plan = capture_io(
             [input: "25\n65\n", capture_prompt: false],
             fn -> RetirementCalc.run end)
    assert plan == """
    You have 40 years left until you can retire.
    It's #{this_year}, so you can retire in #{this_year + 40}.
    """
  end

  defp this_year do
    DateTime.utc_now.year
  end
end
