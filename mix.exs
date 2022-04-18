defmodule Metex.MixProject do
  use Mix.Project

  def project do
    [
      app: :metex,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: true,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [mod: {Metex.Application, []}, extra_applications: [:logger, :flume]]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 0.11.0"},
      {:json, "~> 0.3.0"},
      {:flume, github: "scripbox/flume"}
      # {:wobserver, "~> 0.1"},
      # {:plug_cowboy, "~> 1.0"}
    ]
  end
end
