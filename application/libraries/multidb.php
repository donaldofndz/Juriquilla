<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

  //Esta es una libreria


  class Multidb {

    var $db = NULL;

    function __construct(){

      $CI = &get_instance();
      $this->DISP1 = $CI->load->database('Juriquilla_D1', TRUE);
      $this->DISP2 = $CI->load->database('Juriquilla_D2', TRUE);

    }



}
