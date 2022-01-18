defmodule Nftex.Art do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @fields [:artist_name, :description, :price, :hash]

  schema "arts" do
    field :artist_name, :string
    field :description, :string
    field :hash, :string
    field :price, :float

    timestamps()
  end

  def changeset(art, attrs) do
    art
    |> cast(attrs, @fields)
    |> validate_required(@fields)
  end
end
