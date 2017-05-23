defmodule Hello.Api.ListView do
  @moduledoc "Json render function for users"
  use Hello.Web, :view
  alias Hello.Api.ListView

  def render("index.json", %{lists: lists}) do
    %{data: render_many(lists, ListView, "user.json")}
  end

  def render("show.json", %{list: list}) do
    %{data: render_one(list, ListView, "list.json")}
  end

  def render("list.json", %{list: list}) do
    %{
      id: list.id,
      name: list.name
    }
  end
end
