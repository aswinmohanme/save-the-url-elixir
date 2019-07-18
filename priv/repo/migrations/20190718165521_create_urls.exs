defmodule Savetheurl.Repo.Migrations.CreateUrls do
  use Ecto.Migration

  def change do
    create table(:urls) do
      add :title, :string
      add :url, :string, null: false

      timestamps()
    end

    create unique_index(:urls, [:url])
  end
end
