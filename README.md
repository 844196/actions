# actions

## `844196/actions/pixela`

Reflect the number of commits since the last push in the graph.

```workflow
workflow "Update Pixela graph" {
  on = "push"
  resolves = ["Update graph"]
}

action "Update graph" {
  uses = "844196/actions/pixela@master"
  env = {
    PIXELA_USER = "s083027"
    PIXELA_GRAPH = "test"
  }
  # https://github.com/<user>/<repo>/settings/secrets
  secrets = ["PIXELA_TOKEN"]
}
```
