defmodule Savetheurl.Links.Url do
  use Ecto.Schema

  schema "urls" do
    field :title, :string
    field :url, :string

    timestamps()
  end
end
