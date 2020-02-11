
$databases['default']['default'] = [
  'database' => getenv('DB_NAME'),
  'username' => getenv('DB_USER'),
  'password' => getenv('DB_PASS'),
  'host' => getenv('DB_HOST'),
  'port' => getenv('DB_PORT'),
  'driver' => 'mysql',
  'prefix' => 'wco_',
  'collation' => 'utf8mb4_general_ci',
];