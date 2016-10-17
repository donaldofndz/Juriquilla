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



}
