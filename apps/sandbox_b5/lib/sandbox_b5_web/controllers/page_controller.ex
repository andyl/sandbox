defmodule SandboxB5Web.PageController do
  use SandboxB5Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
