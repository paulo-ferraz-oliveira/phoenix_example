defmodule PhoenixExample.Migrations.Boostrap do
  use Ecto.Migration

  def up do
    create table("comment") do
      add :author, :string
      add :comment, :string

      timestamps()
    end
  end
end
