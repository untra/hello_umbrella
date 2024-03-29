defmodule Hello.Repo.Migrations.CreateUsers do
  @moduledoc """
  Creates the user table
  """
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :avatar_url, :string, null: true

      timestamps()
    end
  end
end
