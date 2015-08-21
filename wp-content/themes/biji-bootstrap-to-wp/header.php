<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <link rel="icon" href="<?php bloginfo('template_directory');?>/images/favicon.ico">

    <title><?php wp_title('|', true, 'right'); ?><?php bloginfo('name');?></title>

    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <?php wp_head();?>
  </head>

  <body <?php body_class(); ?>>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          
		  <?php
		  	$args = array(
				'menu' => 'header-menu',
				'menu_class' => 'nav navbar-nav',
				'conatiner' => 'false',
				'walker' => new WPT_Walker_Nav_Menu
			);
		  
		  wp_nav_menu( $args );
		  
		  ?>
          
        </div><!--/.navbar-collapse -->
      </div>
    </nav>