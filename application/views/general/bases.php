  <?php

  $aux = 0;
  foreach($query as $row){ ?>

    <div class="bs-callout2 bs-callout-info">
        <h4> <?php echo $row->Base;?> </h4>
          <div class="row">
            <div class="col-md-8">
              <?php echo $queryOtra[$aux];
               $aux++;
               ?>
            </div>
            <div class="col-md-offset-2 col-md-2">
              <div class="btn-group">
                <button type="button" class="btn btn-default">
                  <a class="botonlink" href="<?= base_url()?>/generalBinnacle">Ver Dispositivo</a>
                </button>
            </div>
          </div>
        </div>
      </div>

    <?php } ?>
