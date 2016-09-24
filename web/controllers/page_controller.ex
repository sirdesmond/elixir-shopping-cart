defmodule Shoppingcart.PageController do
  use Shoppingcart.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
