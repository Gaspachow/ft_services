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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'gaspacho' );

/** MySQL database password */
define( 'DB_PASSWORD', 'pwd' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '%Dzmue[!0|w!)~5[1Pg|~hI%[o1^)/HX-q%iV%ot&?+x@`<f-ew}4~5(#VRX+P,Y');
define('SECURE_AUTH_KEY',  'T1e:`{L_jHYvvl;|_iKS$mr*>Ok+`24^YhfsC(H#DA27$,Bv:#ylKUZTKKnYVyg;');
define('LOGGED_IN_KEY',    'y`rl,=1S@hVa4]=|~ `] IW:X}yI|.wvrkyE?u))LbB{|TH~nA+iQ3p0{tM15, +');
define('NONCE_KEY',        ';rPM]?ZZN|SP%#L%-9OXf-hYUeOeHuLa_N}-E6gJ(kPpr]XO+j((-a+^(G%j&C- ');
define('AUTH_SALT',        '}.+^*Lk0;X$WuDx]-(+ -f^Ah *r/|gZ-eYh*P#n1_<g`wb3K`JQAG-zxxiA-jIo');
define('SECURE_AUTH_SALT', '1u}*q0I/WP.T77ai0lK8_>L}3Q5S]lF4v^W/Z$z2i-hGg.-{2N5QJTq)O6R_Gc k');
define('LOGGED_IN_SALT',   'DC.(2l p) #u;mH^J/zZG>1FlTw;S qWKA$DHXIgbHHw=ms=+-;]tCCd_X0z6ZBq');
define('NONCE_SALT',       '.M+&!m5W=hvx>CJ2-qlmD<I(hHyl/+5b[GZqwXmYBzh}DAG;M%jLRw[C#xb2t|Pp');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
