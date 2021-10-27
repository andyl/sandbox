defmodule SandboxB5.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      SandboxB5Web.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: SandboxB5.PubSub},
      # Start the Endpoint (http/https)
      SandboxB5Web.Endpoint
      # Start a worker by calling: SandboxB5.Worker.start_link(arg)
      # {SandboxB5.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SandboxB5.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SandboxB5Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
