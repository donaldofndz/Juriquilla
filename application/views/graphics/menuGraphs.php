<div class="container">


  <h3>Estas consultando el <b> <?php echo $base; ?> </b></h3>

  <div class="div_menu_graph">
  <ul class="menu_graf">

    <?php //for ($i=0; $i < sizeof($menu) ; $i++) {

      //echo '<li class="menu_graf"><a href="">'.$menu[$i].'</a></li>' ;

    //} ?>



    <li class="menu_graf"><a href="<?= base_url()?>user/graphics/<?=$base?>/1/2/3"> Acometida Principal </a></li>
    <li class="menu_graf"><a href="<?= base_url()?>user/graphics/<?=$base?>/4/5/8"> Lab. de Fisicoquimica </a></li>
    <li class="menu_graf"><a href="<?= base_url()?>user/graphics/<?=$base?>/"> Lab. de Microbiologia </a></li>

  </ul>
  </div>


</div>
