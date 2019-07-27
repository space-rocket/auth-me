use Mix.Config

# Configure your database
config :auth_me, AuthMe.Repo,
  username: "postgres",
  password: "postgres",
  database: "auth_me_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :auth_me, AuthMeWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
