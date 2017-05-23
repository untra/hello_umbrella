defmodule Hello.Factory do
  @moduledoc """
  factories for generating data
  """
  alias Faker.Avatar
  alias Faker.Name.En
  alias Hello.User
  use ExMachina.Ecto, repo: Hello.Repo

  def user_factory do
    %Hello.User{
      name: En.name(),
      avatar_url: Enum.random([nil, Avatar.image_url()])
    }
  end
end