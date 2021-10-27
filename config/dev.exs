import Config

# ----- database -----

config :sandbox, Sandbox.Repo,
  username: "postgres",
  password: "postgres",
  database: "sandbox_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# ----- sandbox_web -----

config :sandbox_web, SandboxWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "XP321cPQEdHrG9iyZHnPgAG4CfSIhPd8f5k/EHKNfNuYwiqCu5OQAxDFIF3GzDLF",
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:sandbox_web, ~w(--sourcemap=inline --watch)]}
  ]

config :sandbox_web, SandboxWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/sandbox_web/(live|views)/.*(ex)$",
      ~r"lib/sandbox_web/templates/.*(eex)$"
    ]
  ]

# ----- sandbox_mg -----

config :sandbox_mg, SandboxMgWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4001],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "XP321cPQEdHrG9iyZHnPgAG4CfSIhPd8f5k/EHKNfNuYwiqCu5OQAxDFIF3GzDLF",
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:sandbox_mg, ~w(--sourcemap=inline --watch)]}
  ]

config :sandbox_mg, SandboxMgWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/sandbox_mg_web/(live|views)/.*(ex)$",
      ~r"lib/sandbox_mg_web/templates/.*(eex)$"
    ]
  ]

# ----- misc -----

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :plug_init_mode, :runtime

config :phoenix, :stacktrace_depth, 20
