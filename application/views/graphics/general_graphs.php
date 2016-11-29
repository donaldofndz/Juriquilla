
<?php echo $base; ?>

<!-- Muestra de graficas -->
<div class="container">

  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type='text/javascript'>
    google.charts.load('current', {'packages':['annotationchart'], 'language': 'es'});
    google.charts.setOnLoadCallback(drawChart);
    google.charts.setOnLoadCallback(drawOtherChart);
    google.charts.setOnLoadCallback(drawSecondChart);

    function drawChart() {
      var data = new google.visualization.DataTable();
      data.addColumn('date', 'Date');
      data.addColumn('number', 'AWAT1');
      data.addColumn('number', 'BWAT1');
      data.addColumn('number', 'CWAT1');

      data.addRows([
        <?php foreach ($result as $key) {
          echo $key . " , ";
        } ?>
      ]);

      var chart = new google.visualization.AnnotationChart(document.getElementById('chart_div'));

      var options = {

      };

      chart.draw(data, options);
      }

      // Callback that draws the pie chart for Anthony's pizza.
     function drawOtherChart() {

       var data = new google.visualization.DataTable();
       data.addColumn('date', 'Date');
       data.addColumn('number', 'AWAT1');
       data.addColumn('number', 'BWAT1');
       data.addColumn('number', 'CWAT1');

       data.addRows([
         <?php foreach ($result2 as $key) {
           echo $key . " , ";
         } ?>
       ]);

       // Set options for Anthony's pie chart.
       var options = {};

       // Instantiate and draw the chart for Anthony's pizza.
       var chart = new google.visualization.AnnotationChart(document.getElementById('Anthony_chart_div'));
       chart.draw(data, options);
     }
     function drawSecondChart() {

       var data = new google.visualization.DataTable();
       data.addColumn('date', 'Date');
       data.addColumn('number', 'AWAT1');
       data.addColumn('number', 'BWAT1');
       data.addColumn('number', 'CWAT1');

       data.addRows([
         <?php foreach ($result3 as $key) {
           echo $key . " , ";
         } ?>
       ]);

       // Set options for Anthony's pie chart.
       var options = {};

       // Instantiate and draw the chart for Anthony's pizza.
       var chart = new google.visualization.AnnotationChart(document.getElementById('tercer_div'));
       chart.draw(data, options);
     }


  </script>

  <div class="bs-callout2 bs-callout-primary">

      <h3>Energía Real Site de computo</h5>
        <br>
        <br>

      <div id="chart_div"></div>

  </div>

  <div class="bs-callout2 bs-callout-primary">

      <h3>Voltaje Site de computo</h5>
        <br>
        <br>

      <div id="Anthony_chart_div"></div>

  </div>

  <div class="bs-callout2 bs-callout-primary">

      <h3>Corriente Site de computo</h5>
        <br>
        <br>

      <div id="tercer_div"></div>

  </div>



</div>
