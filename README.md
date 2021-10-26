# Sandbox

## About

Site for Phoenix Experiments

| Webapp      | CSS Framework | Purpose         | Dev  | Prod |
|-------------|---------------|-----------------|------|------|
| sandbox_web | Milligram     | Index Site      | 4000 | 80   |
| sandbox_mg  | Milligram     | Milligram Demos | 4001 | 8081 |
| sandbox_bs  | Bootstrap5    | Bootstrap Demos | 4002 | 8082 |
| sandbox_tw  | Tailwind      | Tailwind Demos  | 4003 | 8083 |

## Setting Up

Creating the App

    mix phx.new sandbox --umbrella

Creating a Milligram Webapp (sandbox_mg)

    cd apps
    mix phx.new sandbox_mg --no-ecto

Updating Config for SandboxMg

    cd ../config
    { substitute "SandboxWeb" for "SandboxMg" }

