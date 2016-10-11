use Mix.Config

config :exercises, completed: %{
  "1" => Exercises.ChapterTwo.Hello, "2" => Exercises.ChapterTwo.CountChars,
  "3" => Exercises.ChapterTwo.Quotes, "4" => Exercises.ChapterTwo.MadLib,
  "5" => Exercises.ChapterTwo.SimpleMath, "6" => Exercises.ChapterTwo.RetirementCalc
}
