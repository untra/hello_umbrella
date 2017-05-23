defmodule Hello.Repo.Migrations.CreateItems do
  @moduledoc """
  Creates the list table
  """
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string, null: false
      add :image_url, :string, null: true

      timestamps()
    end
  end
end
