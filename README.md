# Drupal 9 Lando skeleton

A project skeleton for Drupal 9 using [Lando](https://docs.lando.dev/basics/installation.html)

## Known issues

- Currently using the `drupal8` lando recipe while the [Drupal 9 recipe is still in beta](https://docs.lando.dev/config/drupal9.html)
- Drupal Console is not available yet for Drupal 9 (composer incompatibilities)

## Installation

- Start the containers using the command `lando start`
- Install Drupal using the command `lando install`

If you need to customize the installation, edit the `/scripts/install.sh` file.

## Drupal credentials

- **username**: `admin`
- **password**: `admin`

## Update

To update the project with the latest changes after a `git pull` (composer, config, ...), use the command `lando update`.

This command will perform the following actions :

1. `composer install`
2. `drush updatedb`
3. `drush config:import`
4. `drush cache:rebuild`

Edit the `/scripts/update.sh` file to change that behavior.

## Tooling

### Composer
  example: `lando composer require drupal/paragraphs`

### Drush
  example: `lando drush cr`
