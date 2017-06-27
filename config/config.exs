# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :api_gate,
  ecto_repos: [ApiGate.Repo]

# Configures the endpoint
config :api_gate, ApiGate.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dQ8S9/5qCgGGaEi1cRZiIeajeVelnIGFSIda4abGlNvXVRIWZHbeW6vVn2dJXNlG",
  render_errors: [view: ApiGate.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ApiGate.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
