defmodule PhoenixExampleWeb.PageController do
  alias PhoenixExample.Comment, as: Comment

  use PhoenixExampleWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def post(conn, params) do
    Comment.insert(params["comment"], params["author"])
    render(conn, :home, layout: false)
  end
end
