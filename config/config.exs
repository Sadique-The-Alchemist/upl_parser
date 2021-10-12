# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :upl_parser, UplParserWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "a+4JuG2YoT9gZvmeXLFDJIyLQXKXnqeU5WI7q5/qx6LZRrD+BgdjI2A4qRhbGhu9",
  render_errors: [view: UplParserWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: UplParser.PubSub,
  live_view: [signing_salt: "NDEOCYVS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
config :floki, :html_parser, Floki.HTMLParser.FastHtml
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
