defmodule Hello.Api.ItemController do
  @moduledoc """
  Item Controller
  """
  alias Hello.Item
  alias Hello.Repo
  use Hello.Web, :controller

  def index(conn, _params), do: render(conn, "index.json", items: Repo.all(Item))

  def show(conn, %{"id" => id}) do
    item  = Repo.get!(Item, id)
    render(conn, "show.json", item: item)
  end
end