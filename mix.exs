defmodule Sentry.Mixfile do
  use Mix.Project

  def project do
    [
      app: :sentry,
      name: :sentry_elixir,
      version: "0.0.5",
      elixir: "~> 1.3",
      description: "An Elixir client for Sentry",
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:hackney, :uuid, :poison, :logger]
    ]
  end

  defp deps do
    [
      {:hackney, "~> 1.3"},
      {:uuid, "~> 1.0"},
      {:poison, "~> 1.5 or ~> 2.0"},
      {:credo, "~> 0.4", only: [:dev, :test]}
    ]
  end

  defp package do
    [
      files: ["lib", "LICENSE", "mix.exs", "README.md"],
      contributors: ["Stanislav Vishnevskiy"],
      licenses: ["MIT"],
      links: %{
        "github" => "https://github.com/getsentry/sentry_elixir"
      }
    ]
  end
end
