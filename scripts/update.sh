#!/usr/bin/env bash
set -e

# Apply database updates if needed.
drush updb -y

# Re-import config.
drush cim -y

# Caches rebuild.
drush cr
