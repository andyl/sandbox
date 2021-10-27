import Config

# ----- sandbox -----

config :sandbox,
  ecto_repos: [Sandbox.Repo]

config :sandbox, Sandbox.Mailer, adapter: Swoosh.Adapters.Local

config :swoosh, :api_client, false

# ----- sandbox_web ------

config :sandbox_web,
  ecto_repos: [Sandbox.Repo],
  generators: [context_app: :sandbox]

config :sandbox_web, SandboxWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: SandboxWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Sandbox.PubSub,
  live_view: [signing_salt: "5rqLMTM6"]

# ----- sandbox_mg ------

config :sandbox_mg,
  ecto_repos: [Sandbox.Repo],
  generators: [context_app: :sandbox]

config :sandbox_mg, SandboxMgWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: SandboxMgWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Sandbox.PubSub,
  live_view: [signing_salt: "5rqLMTM6"]

# ----- sandbox_b5 ------

config :sandbox_b5,
  ecto_repos: [Sandbox.Repo],
  generators: [context_app: :sandbox]

config :sandbox_b5, SandboxB5Web.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: SandboxB5Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Sandbox.PubSub,
  live_view: [signing_salt: "5rqLMTM6"]

# ----- esbuild -----

config :esbuild,
  version: "0.12.18",
  sandbox_web: [
    args:
      ~w(js/app.js --bundle --target=es2016 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/sandbox_web/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ],
  sandbox_mg: [
    args:
      ~w(js/app.js --bundle --target=es2016 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/sandbox_mg/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ],
  sandbox_b5: [
    args:
      ~w(js/app.js --bundle --target=es2016 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/sandbox_b5/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# ----- dart_sass ----- 

config :dart_sass,
  version: "1.42.1",
  sandbox_b5: [
    args: ~w(css/app.scss ../priv/static/assets/app.css),
    cd: Path.expand("../apps/sandbox_b5/assets", __DIR__)
  ]

# ----- misc -----

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
