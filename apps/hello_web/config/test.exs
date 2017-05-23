use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello_web, Hello.Web.Endpoint,
  http: [port: 4001],
  server: false
