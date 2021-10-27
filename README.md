# Sandbox

## About

Site for Phoenix Experiments

| Webapp      | CSS Framework | Purpose | Dev  | Prod |
|-------------|---------------|---------|------|------|
| sandbox_web | Milligram     | Index   | 4000 | 80   |
| sandbox_mg  | Milligram     | Demos   | 4001 | 8081 |
| sandbox_b5  | Bootstrap5    | Demos   | 4002 | 8082 |
| sandbox_bu  | Bulma         | Demos   | 4003 | 8083 |
| sandbox_tw  | Tailwind      | Demos   | 4004 | 8084 |

## Guidelines

- all webapps should have the same phoenix dependencies

## Setting Up

### Create the App

    mix phx.new sandbox --umbrella

### Learn

Esbuild, NPM, Bootstrap, Watchers, etc.

There is a bookmarked folder ASSETS with tutorials and guides.

### Set up Esbuild

Edit config/config.exs

   change `default` to `sandbox_web`

Edit config/dev.exs

   change `default` to `sandbox_web`

### Generate a resource

    cd apps/sandbox_web
    mix phx.gen.live Timeline Post posts username body likes_count:integer reposts_count:integer
    mix ecto.create
    mix ecto.migrate
    cd ../.. 
    mix phx.server 

### Create a Milligram Webapp (sandbox_mg)

Create sandbox_mg 

    cd apps
    mix phx.new sandbox_mg --no-ecto
    { edit sandbox_mg/mix.exs to update dependencies }
    cd ..
    mix deps.get
    
Edit configs

    cd config

    edit config.exs - copy block "sandbox_web" to "sandbox_mg"
    :s/SandboxWeb/SandboxMgWeb/g
    :s/sandbox_web/sandbox_mg/g

    edit config.exs - esbuild section - copy block "sandbox_web" to "sandbox_mg"
    :s/sandbox_web/sandbox_mg/g

    edit dev.exs - copy block "sandbox_web" to "sandbox_mg"
    :s/4000/4001/g
    :s/SandboxWeb/SandboxMgWeb/g
    :s/sandbox_web/sandbox_mg/g

Run the server

    cd ..
    mix phx.server

### 
