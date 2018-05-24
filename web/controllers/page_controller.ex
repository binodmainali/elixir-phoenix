defmodule Blogapp.PageController do
  use Blogapp.Web, :controller

  plug :put_layout, "base.html"

  def index(conn, _params) do
    render conn, "index.html"
  end
end
