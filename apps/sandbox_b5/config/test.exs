import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sandbox_b5, SandboxB5Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Vh5nR/AQcJIU6Gw0cma3thYnTvT4WJFFJ+vmBEJ8ttQUUpTrg8rIBO6t4zZg+zzo",
  server: false

# In test we don't send emails.
config :sandbox_b5, SandboxB5.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
