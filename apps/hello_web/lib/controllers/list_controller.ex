defmodule Hello.Api.ListController do
  @moduledoc """
  List Controller
  """
  alias Hello.List
  alias Hello.Repo
  use Hello.Web, :controller

  def index(conn, _params), do: render(conn, "index.json", lists: Repo.all(List))

  def show(conn, %{"id" => id}) do
    list  = Repo.get!(List, id)
    render(conn, "show.json", list: list)
  end
end