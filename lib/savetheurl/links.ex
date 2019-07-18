defmodule Savetheurl.Links do
  alias Savetheurl.Repo
  alias Savetheurl.Links.Url

  def list_urls() do
    Repo.all(Url)
  end

  def change_url(%Url{} = user) do
    Url.changeset(user, %{})
  end

  def create_url(attrs \\ %{}) do
    %Url{}
    |> Url.changeset(attrs)
    |> Repo.insert()
  end
end
