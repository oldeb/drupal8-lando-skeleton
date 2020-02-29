#!/usr/bin/env bash
set -e

# Reset permissions on sites/default so composer do not crash when scaffolding.
# https://www.drupal.org/project/drupal/issues/3091285
if [[ -d web/sites/default ]]; then
    chmod u+w web/sites/default
fi
