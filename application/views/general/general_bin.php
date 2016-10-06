<div class="container">

  <?= form_open() ?>
    <div class="form-group">
      <label for="name">Numero de Registros a mostrar</label>
      <!--<input type="text" class="form-control" id="limit" name="limit" placeholder="Da un numero">-->
      <br>
      <select id="limit" name="limit">
        <option value="5">5</option>
        <option value="10">10</option>
        <option value="20">20</option>
        <option value="30">30</option>
        <option value="40">40</option>
        <option value="50">Todos</option>
      </select>
    </div>
    <div class="form-group">
      <label for="name">Fecha</label>
        <br>
        <select id="display" name="display">
          <option value="ASC">Ascendente </option>
          <option value="DESC">Descendente</option>
        </select>

    </div>
    <div class="form-group">
      <input type="submit" class="btn btn-warning btn-block" value="Mostrar">
    </div>
  </form>

  <table class="table table-condensed">
    <tr>
      <td> <strong> Folio</strong></td>
      <td> <strong> Tiempo</strong></td>
      <td> <strong> ID del evento</strong></td>
      <td> <strong> Detalle</strong></td>
      <td> <strong> Dispositivo</strong></td>
    </tr>
    <?php foreach($query as $row): ?>
    <tr>
    <td><?php echo $row->folio; ?></td>
    <td><?php echo $row->tiempo; ?></td>
    <td><?php echo $row->idEvento; ?></td>
    <td><?php echo $row->detalle; ?></td>
    <td><?php echo $row->idDisp; ?></td>
    </tr>
    <?php endforeach; ?>
  </table>
</div>
