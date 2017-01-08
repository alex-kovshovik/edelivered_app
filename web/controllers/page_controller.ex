defmodule EdeliveredApp.PageController do
  use EdeliveredApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
