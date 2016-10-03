<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="container">
	<div class="row">
		<?php if (validation_errors()) : ?>
			<div class="col-md-12">
				<div class="alert alert-danger" role="alert">
					<?= validation_errors() ?>
				</div>
			</div>
		<?php endif; ?>
		<?php if (isset($error)) : ?>
			<div class="col-md-12">
				<div class="alert alert-danger" role="alert">
					<?= $error ?>
				</div>
			</div>
		<?php endif; ?>
		<div class="col-md-offset-1 col-md-5">
			<img class="img-responsive" src="<?php echo base_url('assets/img/logo.jpg') ?>" alt="" />
		</div>
		<div class="col-md-5">
			<div class="page-header">
				<h1>Bienvenido al Sistema Juriquilla</h1>
				<br>
				<div class="square">
					 
				</div>
				<h5>Inicia sesion para visualisar datos</h5>
			</div>
			<?= form_open() ?>
				<div class="form-group">
					<label for="username">Usuario</label>
					<input type="text" class="form-control" id="username" name="username" placeholder="Ingresa tu username">
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" class="form-control" id="password" name="password" placeholder="Ingrea tu password">
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-default" value="Login">
				</div>
				<p><strong style="color:rgb(200,63,73);"> * </strong>Si no tienes cuenta solicitala a un administrador</p>
			</form>

		</div>
	</div><!-- .row -->
</div><!-- .container -->
