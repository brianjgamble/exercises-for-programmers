defmodule Exercises.Mixfile do
  use Mix.Project

  def project do
    [app:               :exercises,
     escript:           escript_config,
     version:           "0.1.0",
     elixir:            "~> 1.3",
     elixirc_paths:     elixirc_paths(Mix.env),
     build_embedded:    Mix.env == :prod,
     start_permanent:   Mix.env == :prod,
     test_coverage:     [tool: ExCoveralls],
     preferred_cli_env: [
       "coveralls": :test,
       "coveralls.detail": :test,
       "coveralls.post": :test,
       "coveralls.html": :test
     ],
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps do
    [
      {:excoveralls, "~> 0.5", only: :test}
    ]
  end

  defp escript_config do
    [ main_module: Exercises.CLI ]
  end
end
