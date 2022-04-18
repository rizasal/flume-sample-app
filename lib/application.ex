defmodule Metex.Application do
  use Application

  import Supervisor.Spec

  def start(_type, _args) do
    children = [
      # Start Flume supervisor
      supervisor(Flume, []),
      Metex
    ]

    opts = [strategy: :one_for_one, name: Metex.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
