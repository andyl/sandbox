defmodule SandboxMgWeb.PageController do
  use SandboxMgWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
