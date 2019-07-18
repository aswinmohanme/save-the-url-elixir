defmodule Savetheurl.Links do
  alias Savetheurl.Repo
  alias Savetheurl.Links.Url

  def list_urls() do
    Repo.all(Url)
  end
end
