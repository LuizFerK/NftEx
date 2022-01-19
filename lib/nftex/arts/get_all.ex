defmodule Nftex.Arts.GetAll do
  alias Nftex.{Art, Repo}

  def call, do: {:ok, Repo.all(Art)}
end
