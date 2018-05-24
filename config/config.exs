# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blogapp,
  ecto_repos: [Blogapp.Repo]

# Configures the endpoint
config :blogapp, Blogapp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "s794srFeu/0c5eVcDTrsXnqJN2C3vKPBnslCk1X3X/4xVrNXkYHgrNlKTVBtYP82",
  render_errors: [view: Blogapp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Blogapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
