#!/usr/bin/env bash
set -e

# Install new dependencies.
composer install -q -d /app

# Apply database updates if needed.
drush updb -y

# Re-import config.
drush cim -y

# Caches rebuild.
drush cr
