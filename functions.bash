!/bin/bash

find_dep() {
  gcloud services list \
    --available --format json | \
  jq --arg service $1.googleapis.com \
    'map(select(.config.name == $service)|
      {
        name:      .config.name,
        dependsOn: .dependencyConfig.dependsOn
      }
    )'
}


