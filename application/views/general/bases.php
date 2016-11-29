  <?php

  $aux = 0;
  foreach($query as $row){ ?>

    <div class="bs-callout2 bs-callout-info">
        <h4> <?php echo $row->Base;?> </h4>
          <div class="row">
            <div class="col-md-8">
              <?= $queryDescripcion[$aux] ?>
            </div>
            <div class="col-md-offset-2 col-md-2">

                  <a class="botonlink" href="<?= base_url()?>user/graphics/<?= $queryDispositivos[$aux] ?>">Ver Dispositivo</a>

          </div>
        </div>
      </div>

    <?php $aux++; } ?>
