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
define('DB_NAME', 'harasdelavannoue');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         '<<V brX01~?ub~*a?:7e:S$st/GU1}wz L,2*}&h*XV3mc+^[i=]pI?-ag^xxau2');
define('SECURE_AUTH_KEY',  '5-.P3]4xFRYccB,uVUL4B>X%&pO~=dd(riSQZ=_UYVF+??Yh9Iq&g!HMV=)Tw$#+');
define('LOGGED_IN_KEY',    '&lgGCR(;h#x>-)gxd9Eyn7L<z<2RX$((^+ZEEex+2c2*6w0RDTUgiR`dnrV 8:.r');
define('NONCE_KEY',        'i{Zx]lk_yyAEv@]DnT5zvuk&MtNt-[Pw*Bat2atXVXPrGa=1(]_3OmrZ([4V5gmH');
define('AUTH_SALT',        '4nstE=YI=m[m$<`rrwyo[h+`F}gP(w&TBptL1-]>qpi0QQ@<h(c#9y]#wCihR@++');
define('SECURE_AUTH_SALT', 'PJf0xAgro nL0W<55#32.xSHZ11E,N>*EO29Cu)7O%51_W`C{*.C|T5`A<Wdxpcd');
define('LOGGED_IN_SALT',   'LEX@Jz2zf>D=ShNuW9u[?]Bm?hu[t~~GTutrLzPQ#@?[,RTv^u@S;oh&jKB5=tIu');
define('NONCE_SALT',       'V,N>U$|Uyp5m:d}pUy_;c9Z58qU^b;jXb&].0nMz0;A&#vaMq+xnO%cFf$,<s-p>');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'hv_';

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
