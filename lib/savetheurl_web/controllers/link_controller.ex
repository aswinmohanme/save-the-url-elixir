defmodule SavetheurlWeb.LinkController do
  use SavetheurlWeb, :controller

  alias Savetheurl.Links
  alias Savetheurl.Links.Url

  def index(conn, _params) do
    urls = Links.list_urls()
    render(conn, "index.html", urls: urls)
  end

  def new(conn, _params) do
    changeset = Links.change_url(%Url{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"url" => url}) do
    case Links.create_url(url) do
      {:ok, url} ->
        conn
        |> redirect(to: Routes.link_path(conn, :index))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => url_id}) do
     Links.delete_url(url_id)
     conn |> redirect(to: Routes.link_path(conn, :index))
  end
end
