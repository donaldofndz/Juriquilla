<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/** public
 * bin_model
 * @extends CI_Model
 */
class Dispos_model extends CI_Model
{

  public function __construct() {

    parent::__construct();
    $this->load->database();
    $this->load->library('multidb'); //loading library

  }

  public function show_dispos(){

    $aux = $this->db->select('Dispositivo')->from('Bases')->get();
    //return $aux->result();

    $aux2 = $aux->result();

    //return $aux2;


    foreach ($aux2 as $row) {
      $variableBase = $row->Dispositivo;

      $query = $this->multidb->$variableBase->select('Descripcion')->from('Dispositivo')->get();

      $result = $query->result();

      foreach ($result as $row2) {
        $variableDescripcion = $row2->Descripcion;
        $descripcion[] = $variableDescripcion;
      }


    }

    //$result = $query->result();

    return $descripcion;

    //return $variableDescripcion;

    //return $query->result();



    //------------------------------------------------------------


    //$query = $this->multidb->DISP1->select('Descripcion')->from('Dispositivo')->get();
    //$query2 = $this->multidb->db2->select('nombre')->from('catAlarma')->get();
    //return $query->result();

  }

/*
  public function prueba(){

    $query = $this->db->select('Base')->from('Bases')->get();
    return $query->result();


    $CI = &get_instance();
    $this->DB2 = $CI->load->database('Juriquilla_D1',TRUE);
    $query = $this->DB2->select('nombre')->from('catAlarma')->get();

    return $query->result();
  }

*/



}
