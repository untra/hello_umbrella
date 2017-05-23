defmodule Hello.List do
  @moduledoc "List Objects"
  use Hello.Schema

  schema "lists" do
    field :name, :string
    field :notes, :string
    timestamps()
  end

  @allowed_fields ~W(name, notes)
  @required_fields ~W(name)a

  def changeset(list, params \\ %{}) do
    list
    |> cast(params, @allowed_fields)
    |> validate_required(@required_fields)
    |> validate_length(:name, min: 1, max: 256)
  end
end