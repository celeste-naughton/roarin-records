<header class="header">
    <h1 class="page_margins"> Roarin Records </h1>
    <nav class="page_margins">
        <ul>
            <li> | </li>
            <li><a href="/">Roaring Records Home</a></li>
            <li> | </li>
            <?php if(is_user_logged_in()) { ?>
            <div class="page_margins logout">
            <li><a href="<?php echo logout_url(); ?>">Log Out</a></li>
          </div>
        <?php }; ?>
        </ul>
    </nav>
</header>
