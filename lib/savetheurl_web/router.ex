defmodule SavetheurlWeb.Router do
  use SavetheurlWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SavetheurlWeb do
    pipe_through :browser

    get "/", LinkController, :index
    resources "/links", LinkController, only: [:index, :show, :new, :create, :delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", SavetheurlWeb do
  #   pipe_through :api
  # end
end
