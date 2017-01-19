use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :edelivered_app, EdeliveredApp.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :edelivered_app, EdeliveredApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "alexk",
  password: "",
  database: "edelivered_app_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
