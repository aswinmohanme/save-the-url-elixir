defmodule Savetheurl.Repo do
  use Ecto.Repo,
    otp_app: :savetheurl,
    adapter: Ecto.Adapters.Postgres
end
