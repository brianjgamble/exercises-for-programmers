defmodule Exercises.RetirementCalc do
  @moduledoc """
  Exercise 6: Retirement Calculator
  """

  def run do
    age            = get_current_age |> to_number
    retirement_age = get_retirement_age |> to_number
    generate_plan(age, retirement_age)
  end

  def get_current_age do
    IO.gets "What is your current age? "
  end

  def get_retirement_age do
    IO.gets "At what age would you like to retire? "
  end

  def generate_plan(age, retirement_age) do
    years_left = retirement_age - age
    retire_in  = this_year + years_left
    plan       = create_report(years_left, retire_in)
    IO.puts(plan)
  end

  defp create_report(years_left, retire_in) do
    "You have #{years_left} years left until you can retire.\n" <>
    "It's #{this_year}, so you can retire in #{retire_in}."
  end

  defp to_number(val) do
    val
    |> String.trim
    |> String.to_integer
  end

  defp this_year do
    DateTime.utc_now.year
  end
end
