defmodule Nftex.Arts do
  alias Nftex.Arts.{Create, Get, GetAll}

  defdelegate create(params), to: Create, as: :call
  defdelegate get_all(), to: GetAll, as: :call
  defdelegate get(id), to: Get, as: :call
end
