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

## `844196/actions/clasp`

[google/clasp](https://github.com/google/clasp) helper.

```workflow
workflow "Push to GAS" {
  on = "push"
  resolves = ["clasp push"]
}

action "clasp push" {
  uses = "844196/actions/clasp@master"
  args = "push"
  # copy from `~/.clasprc.json` and set to https://github.com/<user>/<repo>/settings/secrets
  secrets = ["CLASPRC_JSON"]
}
```
