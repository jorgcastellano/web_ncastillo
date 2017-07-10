<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'nils_castillo');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '65445625');
//define('DB_PASSWORD', 'jorgejac');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '@yvp|l&8Nu< k`@O@B;I`n;HC}FQ#Y ]YW|f>(PDCFT y*_&M^gb,8:+QVNVA&F5');
define('SECURE_AUTH_KEY',  ':KKJZhUx9<x+kJmM,KqrUzX6&:CYy`f6cbm|h/C.*]9SrgT#a>bN0/BZ,hd~r=RR');
define('LOGGED_IN_KEY',    '4gYrWsg<)D<V^lu-IS^@%ouEg^qs4+S]o/BKx1S-mMbTujd,1mz|l[~gx1%7=e)u');
define('NONCE_KEY',        'i)|+L)tMBBx9u^rL#/W3XRe.4ekEKc<QZUg-h9.1, :R}H.f^jL$QLsA+6H2103:');
define('AUTH_SALT',        'm*ybyc|*uMih&GazSWB~P,IJ>O m0]a/e2uH*H$^YXh]P-<`76VPJ.?a(zR#Cgu1');
define('SECURE_AUTH_SALT', 'XBVVu.Z[kMC_ :pd$f[6Xx1B){!+.t*0nr72YHp%z#bJ2V!pj.p8szhW 5*sr9*3');
define('LOGGED_IN_SALT',   'rYj6BdWSal@9gCCUE{6d aBDuzOULDLZWhC:*mxYc7*oyz1ZqQLDlDHLtfvy1z-U');
define('NONCE_SALT',       'DC9thX]|$$qem./>6ubaso0q-d_L0 E^KNZ;O8hlM5d0nz,]O]3H[&MgCy8@ZE}$');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'nc_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
