defmodule PhoenixExample.Comment do
  alias PhoenixExample.Repo, as: Repo
  use Ecto.Schema

  import Ecto.Query, only: [from: 2]

  schema "comment" do
    field :author, :string
    field :comment, :string
    timestamps()
  end

  def all() do
    query =
      from comment in "comment",
        select: [:inserted_at, :author, :comment],
        order_by: [desc: :inserted_at]

    Repo.all(query)
  end

  def insert(comment, author) do
    Repo.insert!(%PhoenixExample.Comment{
      comment: comment,
      author: author
    })
  end
end
