defmodule Hello.Item do
  @moduledoc "Item Objects"
  use Hello.Schema

  schema "items" do
    field :name, :string
    field :image_url, :string
    timestamps()
  end

  @allowed_fields ~W(name, image_url)
  @required_fields ~W(name)a

  def changeset(item, params \\ %{}) do
    item
    |> cast(params, @allowed_fields)
    |> validate_required(@required_fields)
    |> validate_length(:name, min: 1, max: 256)
  end
end