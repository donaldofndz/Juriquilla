<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/** public
 * bin_model
 * @extends CI_Model
 */
class Graph_model extends CI_Model
{

  public function __construct() {

    parent::__construct();
    $this->load->database();
    $this->load->library('multidb'); //loading library

  }

  public function main_graphs($base){


    //Genera la consulta para determinar que variables pertenecen a cada grupo.
    $consultaVariablesGrupos = $this->multidb->$base->query('SELECT catVariables.nombre, Grupo.descripcion
                                FROM catVariables
                                INNER JOIN GrupoVariables ON catVariables.idVariable=GrupoVariables.idVariable
                                INNER JOIN Grupo ON  Grupo.idGrupo = GrupoVariables.idGrupo
                                WHERE Grupo.idGrupo = 1 AND catVariables.Habilitado = 1;')->result();


    foreach ($consultaVariablesGrupos as $row) {

      //nombre de la variable EJ. AWAT1
      $nombreVariable = $row->nombre;
      $descripcionVariable = $row->descripcion;

      //Regresa todos los valores de la variable
      //AQUI SE DEBE PONER EL LIMTE CON FECHA DE LA CONSULTA
      $valoresVariable = $this->multidb->$base->select($nombreVariable)->select('horaLocal')->from('Muestras')->limit(3)->get()->result();

        foreach ($valoresVariable as $key) {

          //castea de la consulta que devuelve un objeto a un valor
          $valoresVariable_casteo = $key->$nombreVariable;
          $valoresTiempo_casteo = $key->horaLocal;

          $arregloValoresTiempoVariable[] = array('valor' => $valoresVariable_casteo,'tiempo' => $valoresTiempo_casteo);

        }

      $arregloVariablesValor[]= $arregloValoresTiempoVariable;

      unset($arregloValoresTiempoVariable);
      $arregloValoresTiempoVariable = array();

    }

    array_unshift($arregloVariablesValor, $descripcionVariable);

    return $arregloVariablesValor;

  }





  public function graph_arr($base,$grupo){


    //Genera la consulta para determinar que variables pertenecen a cada grupo.
    $sql = "SELECT catVariables.nombre, Grupo.descripcion
                                FROM catVariables
                                INNER JOIN GrupoVariables ON catVariables.idVariable=GrupoVariables.idVariable
                                INNER JOIN Grupo ON  Grupo.idGrupo = GrupoVariables.idGrupo
                                WHERE Grupo.idGrupo = ? AND catVariables.Habilitado = 1";

    $consultaVariablesGrupos = $this->multidb->$base->query($sql,$grupo)->result();


    //return $consultaVariablesGrupos;

    foreach($consultaVariablesGrupos as $key){

      $arregloNombresVariable[] = $key->nombre;
      $descripcionVariable = $key->descripcion;

    }

    $strNombresVariable = implode(",",$arregloNombresVariable);

    $valoresVariable = $this->multidb->$base->query('SELECT horaLocal, ' . $strNombresVariable
                                . ' FROM Muestras LIMIT 10;')->result();

    for ($i=0; $i < sizeof($arregloNombresVariable); $i++) {
      //$casValoresVariable[] = $arregloNombresVariable[$i];
    }


    foreach ($valoresVariable as $row) {

      for ($i=0; $i < sizeof($arregloNombresVariable); $i++) {
        $casValoresVariable[] = $row ->$arregloNombresVariable[$i];
      }

      $phpdate = strtotime( $row->horaLocal );
      $horaCasteo = date( 'Y, m , d , H , i , s', $phpdate );

      $stringVariables = "[new Date($horaCasteo )";

      for ($i=0; $i < sizeof($casValoresVariable); $i++) {
        $stringVariables .= ", $casValoresVariable[$i]";
      }

      unset($casValoresVariable);
      unset($horaCasteo);
      $stringVariables .= "]";
      //new Date(Year, Month, Day, Hours, Minutes, Seconds, Milliseconds)

      //ARREGLO QUE GUARDE DATOS Y LOS ESE ARREGLO LO PASAMOS A STRING

      //$stringVariables = "[$row->horaLocal, $row->AWAT1 , $row->BWAT1 , $row->CWAT1]";



      $arregloVariablesFormato[] = $stringVariables;

      //unset($stringVariables);


    }


    return $arregloVariablesFormato;


  }






  public function consult_base($base){

      $query = $this->multidb->$base->select('AWAT1')->from('Muestras')->get();

      $result = $query->result();

      return $result;


  }



}
