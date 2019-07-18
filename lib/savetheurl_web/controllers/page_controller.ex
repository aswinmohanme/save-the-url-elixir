defmodule SavetheurlWeb.PageController do
  use SavetheurlWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
