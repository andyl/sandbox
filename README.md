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

## Setting Up

Creating the App

    mix phx.new sandbox --umbrella

Generating a resource

    cd apps/sandbox_web
    mix phx.gen.live Timeline Post posts username body likes_count:integer reposts_count:integer
    mix ecto.create
    mix ecto.migrate
    cd ../.. 
    mix phx.server 

Creating a Milligram Webapp (sandbox_mg)

    cd apps
    mix phx.new sandbox_mg --no-ecto

Updating Config for SandboxMg

    cd ../config

