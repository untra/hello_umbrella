defmodule Hello.Factory do
  @moduledoc """
  factories for generating data
  """
  alias Faker.Avatar
  alias Faker.Name.En
  alias Hello.User
  alias Hello.List
  alias Hello.Item
  use ExMachina.Ecto, repo: Hello.Repo

  def user_factory do
    %User{
      name: En.name(),
      avatar_url: Enum.random([nil, Avatar.image_url()])
    }
  end

  def list_factory do
    %List{
      name: Faker.Lorem.word()
      notes: Faker.Lorem.sentence()
    }
  end

  def item_factory do
    %Item{
      name: Faker.Lorem.word(),
      image_url: Enum.random([nil, Avatar.image_url()])
    }
  end
end