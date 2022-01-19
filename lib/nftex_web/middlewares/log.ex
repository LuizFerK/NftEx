defmodule NftexWeb.Middlewares.Log do
  require Logger

  @behaviour Absinthe.Middleware

  @filter_fields [:hash, :description]

  def call(resolution, _) do
    resolution
    |> filter_info()
    |> log_message()
    |> Logger.debug()

    resolution
  end

  defp filter_info(%Absinthe.Resolution{value: value}), do: Map.drop(value, @filter_fields)

  defp log_message(log), do: "Resolution value #{inspect(log)}"
end
