defmodule SavetheurlWeb.LinkController do
  use SavetheurlWeb, :controller

  alias Savetheurl.Links

  def index(conn, _params) do
    urls = Links.list_urls()
    render(conn, "index.html", urls: urls)
  end
end
