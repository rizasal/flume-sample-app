defmodule Metex do

  @tick_interval_ms 100
  use GenServer

  def start_link(_opts) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end


  def init([]) do
    timer = Process.send_after(self(), :tick, @tick_interval_ms)
    {:ok, %{timer: timer}}
  end

  def handle_info(:tick, _state) do
    Flume.enqueue(:default, Metex.Worker, :temperature_of, ["Delhi"])
    timer = Process.send_after(self(), :tick, @tick_interval_ms)
    {:noreply, %{timer: timer}}
  end

end
