defmodule Sandbox.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Sandbox.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Sandbox.PubSub}
      # Start a worker by calling: Sandbox.Worker.start_link(arg)
      # {Sandbox.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Sandbox.Supervisor)
  end
end
