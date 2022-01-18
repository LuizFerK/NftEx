defmodule Nftex.Arts.Create do
  alias Nftex.{Art, Repo}

  def call(params) do
    %Art{}
    |> Art.changeset(params)
    |> Repo.insert()
  end
end
