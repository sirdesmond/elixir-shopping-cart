# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :shoppingcart,
  ecto_repos: [Shoppingcart.Repo]

# Configures the endpoint
config :shoppingcart, Shoppingcart.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qy/1JPKc0eevvgjx9e3CstQFvpxW7ZINShTA+/Zv74Mxv6Sg7InNFiQelYgg0kmN",
  render_errors: [view: Shoppingcart.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Shoppingcart.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
