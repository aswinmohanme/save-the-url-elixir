defmodule Savetheurl.Links.Url do
  use Ecto.Schema
  import Ecto.Changeset

  schema "urls" do
    field :title, :string
    field :url, :string

    timestamps()
  end

  def changeset(url, attrs) do
    url
    |> cast(attrs, [:title, :url])
    |> validate_required([:title, :url])
    |> unique_constraint(:url)
  end
end
