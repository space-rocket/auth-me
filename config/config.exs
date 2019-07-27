# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :auth_me,
  ecto_repos: [AuthMe.Repo]

# Configures the endpoint
config :auth_me, AuthMeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xgL84eV56MwToO2rjj2ZhmHfuBePH6IbWorjPobOQdQe/XMRDrZ19xzrQYFhAoPk",
  render_errors: [view: AuthMeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AuthMe.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian token 
config :auth_me, AuthMe.UserManager.Guardian,
  issuer: "auth_me",
  secret_key: "" # put the result of the mix command above here

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
