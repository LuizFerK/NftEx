defmodule NftexWeb.Resolvers.Art do
  alias Nftex.Arts

  def get(%{id: art_id}, _context), do: Arts.get(art_id)
  def get_all(_params, _context), do: Arts.get_all()
  def create(%{input: params}, _context), do: Arts.create(params)
end
