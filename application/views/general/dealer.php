<div class="row">

  <div class="container">





  <?php if ($_SESSION['user_type'] == 3 || ($_SESSION['user_type'] == 4)): ?>
    <div class="bs-callout bs-callout-default">
      <h4>Bitacora del sistema</h4>
        <div class="row">
            <div class="col-md-8">

                <h5>Bitacora de errores del sistema</h5>


            </div>
            <div class="col-md-offset-2 col-md-2">
              <div class="btn-group">
                <button type="button" class="btn btn-default">
                  <a class="botonlink" href="<?= base_url()?>/generalBinnacle">Ver Bitacora</a>
                </button>
            </div>
        </div>
      </div>
    </div>
  <?php endif; ?>


</div>
