#!/usr/bin/env bash

composer install -q -d /app

if [[ ! -f /app/web/sites/default/settings.php ]]; then
    cp /app/web/sites/default/default.settings.php /app/web/sites/default/settings.php
fi

drush si --root=/app/web --account-pass=$DRUPAL_ADMIN_PASSWORD --existing-config -y