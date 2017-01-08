# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :edelivered_app,
  ecto_repos: [EdeliveredApp.Repo]

# Configures the endpoint
config :edelivered_app, EdeliveredApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5O7ZfmCJd3E4ZHJsPZ2vwc7jn6Na+XoxJQC5WJW8/EU9okEJPlwFoobehGu+X4n+",
  render_errors: [view: EdeliveredApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EdeliveredApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
