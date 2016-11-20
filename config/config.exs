# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :frolfr_api,
  ecto_repos: [FrolfrApi.Repo]

# Configures the endpoint
config :frolfr_api, FrolfrApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9oQc69URSuryLi9XQIjotWPr71kzWmUMAGicpPpL8coRNdCWSvDPn8zMTkXRwAon",
  render_errors: [view: FrolfrApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: FrolfrApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :plug, :mimes, %{
  "application/vnd.api+json" => ["json-api"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
