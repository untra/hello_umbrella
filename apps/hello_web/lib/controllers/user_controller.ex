defmodule Hello.Api.UserController do
  @moduledoc """
  User Controller
  """
  alias Hello.User
  alias Hello.Repo
  use Hello.Web, :controller

  def index(conn, _params), do: render(conn, "index.json", users: Repo.all(User))

  def show(conn, %{"id" => id}) do
    user  = Repo.get!(User, id)
    render(conn, "show.json", user: user)
  end
end