<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/** public
 * bin_model
 * @extends CI_Model
 */
class Bin_model extends CI_Model
{

  public function __construct() {

		parent::__construct();
		$this->load->database();

	}

  public function show_bin(){
    $this->db->limit('10');
    $this->db->order_by('folio', 'DESC');
    $query = $this->db->select('*')->from('Bitacora')->get();
    //

    return $query->result();


  }



}
