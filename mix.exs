defmodule ExIpfsIpns.MixProject do
  @moduledoc """
  Elixir IPNS Mix Project
  """
  use Mix.Project

  def project do
    [
      app: :ex_ipfs_ipns,
      version: "0.0.5",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: description(),
      deps: deps(),
      source_url: "https://github.com/bahner/ex-ipfs-ipns.git",
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_ipfs, "~> 0.1.2"},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.2", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.29", only: :dev, runtime: false},
      {:excoveralls, "~> 0.15", only: :test, runtime: false}
    ]
  end

  defp description() do
    "Interplanetary Name System for Elixir"
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*", "AUTHORS*"],
      maintainers: ["Lars Bahner"],
      licenses: ["GPLv3"],
      links: %{"GitHub" => "https://github.com/bahner/ex_ipfs_ipns.git"}
    ]
  end
end
