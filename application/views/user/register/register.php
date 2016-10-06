<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="container">
	<div class="row">

		<?php if (validation_errors()) : ?>
			<div class="col-md-12">
				<div class="alert alert-danger" role="alert">
					<?= validation_errors(); ?>
				</div>
			</div>
		<?php endif; ?>

		<?php if (isset($error)) :  //vairable que esta difinica y no es NULL?>
			<div class="col-md-12">
				<div class="alert alert-danger" role="alert">
					<?= $error ?>
				</div>
			</div>
		<?php endif; ?>

		<div class="col-md-12">
			<div class="page-header">
				<h1>Registro</h1>
			</div>
			<?= form_open() ?>
				<div class="form-group">
					<label for="name">Nombres</label>
					<input type="text" class="form-control" id="name" name="name" placeholder="Ingresa el nombre">
				</div>
				<div class="form-group">
					<label for="lastname">Apellido Paterno</label>
					<input type="text" class="form-control" id="lastname" name="lastname" placeholder="Ingresa el apellido paterno">
				</div>
				<div class="form-group">
					<label for="lastnamesec">Apellido Materno</label>
					<input type="text" class="form-control" id="lastnamesec" name="lastnamesec" placeholder="Ingresa el apellido materno">
				</div>
				<!--default-->
				<div class="form-group">
					<label for="username">Nombre de Usuario</label>
					<input type="text" class="form-control" id="username" name="username" placeholder="Ingresa Usuario">
					<p class="help-block">Minimo 4 caracteres, solo letras y numeros</p>
				</div>
				<div class="form-group">
					<label for="email">Email</label>
					<input type="email" class="form-control" id="email" name="email" placeholder="Ingresa E-mail">
					<p class="help-block">Ingresa un email valido </p>
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" class="form-control" id="password" name="password" placeholder="Ingresa un password">
					<p class="help-block">Minimo de 6 caracteres</p>
				</div>
				<div class="form-group">
					<label for="password_confirm">Confirma password</label>
					<input type="password" class="form-control" id="password_confirm" name="password_confirm" placeholder="Confirma tu password">
					<p class="help-block">Este debe coincidir con el original</p>
				</div>
				<!--default-->
				<div class="form-group">
					<label for="user_type">Tipo de permisos</label>
					<br>
					<label class="checkbox">
						<input type="radio" id="user_type" name="user_type" value="1"> Bitacora Dispositivo 1
					</label>
					<label class="checkbox">
						<input type="radio" id="user_type" name="user_type" value="2"> Bitacora Dispositivo 2
					</label>
					<label class="checkbox">
						<input type="radio" id="user_type" name="user_type" value="3"> Bitacora de Todos los dispositivos
					</label>
					<label class="checkbox">
						<input type="radio" id="user_type" name="user_type" value="4"> Todas las bitacoras
					</label>
				</div>

				<div class="form-group">
					<br>
					<label for="user_type">Registro De Usuarios</label>
					<br>
					<label class="checkbox-inline">
						<input type="checkbox" id="user_register" name="user_register" value="1"> Activado
					</label>
					<br>
					<br>
				</div>

				<div class="form-group">
					<input type="submit" class="btn btn-default" value="Register">
				</div>
			</form>

		</div>
	</div><!-- .row -->
</div><!-- .container -->
