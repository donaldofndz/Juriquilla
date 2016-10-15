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

  /**
  * @show_bin no se usa en produccion
  * @limit, display
  *
  */

  public function show_bin($limit,$display){
    $this->db->limit($limit);
    $this->db->order_by('folio',$display);
    //DESC, ASC
    $query = $this->db->select('*')->from('Bitacora')->get();
    //

    return $query->result();

  }

  public function show_bin_other($limit,$display){
    $this->db->limit($limit);
    $this->db->order_by('folio',$display);
    $this->db->select('*')->from('Bitacora');
    $this->db->join('catEvento', 'Bitacora.idEvento = catEvento.idEvento');
    $query = $this->db->get();

    return $query->result();

  }

  public function show_bases(){

    $query = $this->db->select('Base')->from('Bases')->get();
    return $query->result();

  }

  public function show_description(){

  }



}
