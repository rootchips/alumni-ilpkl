# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :alumni,
  ecto_repos: [Alumni.Repo]

# Configures the endpoint
config :alumni, AlumniWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Gv0LIJ+1FXw5X6Nc0ofOqdiH6RdU9ckLQVsry5npam80wb9MFjix5+kas7y730/j",
  render_errors: [view: AlumniWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Alumni.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
