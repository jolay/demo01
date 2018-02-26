<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package edsBootstrap
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php
    $edsbootstrap_options = get_theme_mod( 'edsbootstrap_theme_options' );
?>

<!-- Preloader -->
<!--<div id="preloader">
    <div class="loader"></div>
</div>-->
<!-- /Preloader -->
<!-- Header -->
<header id="home" class="header">

    <!-- Navigation -->
    <nav id="navigation" class="navbar affix">
        <!-- Company Information -->
        <div class="information" id="topmenu">
            <div class="container">
                <div class="row">
                    <!-- Feedback -->
                    <div class="col-md-6">
                        <!-- Brand -->
                            <a class="brand" href="<?php echo esc_url( home_url( '/' ) ); ?>"> 
                                <?php
                                    if (has_custom_logo()) {
                                    the_custom_logo();
                                    }
                                ?>
                            </a>
                        <!-- /Brand -->
                    </div>
                    <!-- /Feedback -->
                    
                    <!-- Social -->
                    <div class="col-md-6 pull-right">
                        <?php wp_nav_menu( array( 'theme_location' => 'top-menu' ) ); ?>
                    </div>
                    <!-- /Social -->
                </div>
            </div>
        </div>
        <!-- /Company Information -->
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <!-- Navigation -->
                    <?php
                        wp_nav_menu( array(
                            'theme_location'    => 'primary',
                            'depth'             => 3,
                            'container'         => 'div',
                            'container_class'   => 'navbar-collapse collapse',
                            'container_id'      => 'main-menu',
                            'menu_class'        => 'nav navbar-nav navbar-left',
                            'fallback_cb'       => 'edsbootstrap_bootstrap_navwalker::fallback',
                            'walker'            => new edsbootstrap_bootstrap_navwalker())
                        );
                    ?>
                    <!-- /Navigation -->    
                </div>
            </div>

        </div>
    </nav>
    <!-- /Navigation -->

</header>
<!-- /Header -->


