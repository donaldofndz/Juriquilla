<div class="container">
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
