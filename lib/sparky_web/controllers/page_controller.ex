defmodule SparkyWeb.PageController do
  use SparkyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
