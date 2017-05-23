defmodule Hello.User do
  @moduledoc "User Objects"
  use Hello.Schema

  schema "users" do
    field :name, :string
    field :avatar_url, :string
    timestamps()
  end

  @allowed_fields ~W(name, avatar_url)
  @required_fields ~W(name)a

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, @allowed_fields)
    |> validate_required(@required_fields)
    |> validate_length(:name, min: 1, max: 256)
  end
end