#!/usr/bin/env bash

podman exec devops-postgres \
  psql "postgresql://devuser:devpass@localhost:5432/devdb" \
  -c "SELECT * FROM notes;"

