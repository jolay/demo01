<?php
/** 
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define('DB_NAME', 'demo01');

/** Tu nombre de usuario de MySQL */
define('DB_USER', 'admin');

/** Tu contraseña de MySQL */
define('DB_PASSWORD', 'demo');

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define('DB_HOST', 'localhost');

/** Codificación de caracteres para la base de datos. */
define('DB_CHARSET', 'utf8mb4');

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');

/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', '6K:+b3#J;;>^7?(UpS4j;|2[`A}u:R$amScbvl(A/)LsT<eZ:dv^^[eJbH]M1EWJ');
define('SECURE_AUTH_KEY', 'VU7BWzM RVk<9y<!yGCZ3v-)kN(5X38Xp6~1g(qX0sCM{9Hk0c9R0KO<lKjc>1z?');
define('LOGGED_IN_KEY', '}jqOnDX0x1hAp?3I(Ap+T4]/dW#R@fK*N#RXuN<A&RbK]N 9Yq,ea^k[vGPu4{iY');
define('NONCE_KEY', 'c}&lVKM47SX#b=@63c|j(8??0+S&Z`C1EO Kv|r8M/r4J.Ll@LDOPz%J/b3_nRW/');
define('AUTH_SALT', 'w-d|7i&w^IOt C0&^WYJPC6!bj=t?39h=JN>i36trf+qd#:>,,RwIYctX>a?ob32');
define('SECURE_AUTH_SALT', '(zKHf*D&MY<#Fd#XjtaQo2KnIK@fBZ<)Ul%r<ChKyF>d_bD4NfCSU5F0BpAj~@E!');
define('LOGGED_IN_SALT', '{5PPN3?C`MDhEdpNltsUlU3;/|/ksAXx%<{q9WjJ(tN!lJcX.%E6{PyK%%qBxE]T');
define('NONCE_SALT', 'JTAq_ eQS 1PuSkp.9R79AyhhV81sI%b7>yUV6plQsimei>JmSgKcNSB9777Y0;W');

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix  = 'd1_';


/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', false);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

