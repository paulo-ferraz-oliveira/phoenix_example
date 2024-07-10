defmodule PhoenixExample.Comment do
  alias PhoenixExample.Comment, as: Comment
  alias PhoenixExample.Repo, as: Repo

  use Ecto.Schema

  import Ecto.Changeset
  import Ecto.Query, only: [from: 2]

  schema "comment" do
    field :author, :string
    field :comment, :string

    timestamps(type: :utc_datetime)
  end

  def all() do
    query = from Comment, order_by: [desc: :inserted_at]

    Repo.all(query)
  end

  def insert(attrs) do
    %Comment{}
    |> Comment.changeset(attrs)
    |> Repo.insert!()
  end

  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:author, :comment])
    |> validate_required([:author, :comment])
  end
end
