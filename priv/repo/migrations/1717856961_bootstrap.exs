defmodule PhoenixExample.Repo.Migrations.Boostrap do
  use Ecto.Migration

  def change do
    create table(:comment) do
      add :author, :string
      add :comment, :string

      timestamps(type: :utc_datetime)
    end
  end
end
