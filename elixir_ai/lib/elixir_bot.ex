defmodule ElixirBot do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def init(:ok) do
    {:ok, %{help_text: "Available commands: !help"}}
  end

  def handle_call({:command, "!help"}, _from, state) do
    {:reply, state.help_text, state}
  end

  def handle_call({:command, _}, _from, state) do
    {:reply, "Unknown command. Type !help for available commands.", state}
  end
end

