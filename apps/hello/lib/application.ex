defmodule Hello.Application do
  @moduledoc """
  The Hello Application Service.

  The hello system business domain lives in this application.

  Exposes API to clients such as the `Hello.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      worker(Hello.Repo, []),
    ], strategy: :one_for_one, name: Hello.Supervisor)
  end
end
