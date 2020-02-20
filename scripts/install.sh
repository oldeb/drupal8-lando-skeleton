#!/usr/bin/env bash
set -e

# Install dependencies.
composer install -q -d /app

# There are issues with the site-install drush command if this file is not copied before.
if [[ ! -f /app/web/sites/default/settings.php ]]; then
    cp /app/web/sites/default/default.settings.php /app/web/sites/default/settings.php
fi

# Install website.
drush si --existing-config -y

# Reset permissions so composer do not crash when scaffolding.
# https://www.drupal.org/project/drupal/issues/3091285
chmod u+w /app/web/sites/default
