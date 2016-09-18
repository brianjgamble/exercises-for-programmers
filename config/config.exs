use Mix.Config
config :exercises, completed: %{
  "1" => Exercises.Hello, "2" => Exercises.CountChars,
  "3" => Exercises.Quotes, "4" => Exercises.MadLib,
  "5" => Exercises.SimpleMath
}
