defmodule Hello.Repo.Migrations.CreateLists do
  @moduledoc """
  Creates the list table
  """
  use Ecto.Migration

  def change do
    create table(:lists) do
      add :name, :string, null: false
      add :notes, :string, null: true

      timestamps()
    end
  end
end
