use Mix.Config

config :lager, handlers: [
  lager_console_backend: :warn
]

# config :grpc, start_server: true
