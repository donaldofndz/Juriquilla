<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * User class.
 * Se crea la clase usuario, en ella se controla todas las actividades relaciondas a esto
 * @extends CI_Controller
 */
class User extends CI_Controller {

	/**
	 * __construct function.
	 *
	 * @access public
	 * @return void
	 */
	public function __construct() {

		//se aplica el constructor para llamar a todos los metodos de la clase padre y otros
		parent::__construct();
		$this->load->library(array('session'));
		$this->load->helper(array('url'));
		$this->load->model('user_model');


	}

	//funcion por defecto cuando se ocupa el controlador
	public function index() {
	}

	/**
	 * register function.
	 * Metodo encargado del registro de usuarios, se detalla su uso dentro del metodo
	 * @access public
	 * @return void
	 */

	public function register() {


		if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {
			if ($_SESSION['user_register'] == 1){


		/*
		La clase stdClass de PHP es una clase genérica vacía,
		similar a la clase Object de Java o el object de Python.
		Se utiliza para crear objetos anónimos y para establecer propiedades dinámicas.
		*/

		// create the data object
		$data = new stdClass();

		// Carga el helper y la libreria para ocupar las funciones despues
		$this->load->helper('form');
		$this->load->library('form_validation');

		// Da la reglas de validacion
		$this->form_validation->set_rules('name','Name','required|max_length[30]');
		$this->form_validation->set_rules('lastname','LastName','required|max_length[30]');
		$this->form_validation->set_rules('lastnamesec','SecondLastName','required|max_length[30]');
		$this->form_validation->set_rules('username', 'Username', 'trim|required|alpha_numeric|min_length[4]|is_unique[users.username]', array('is_unique' => 'Este usuario ya fue registrado por favor escoge otro'));
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[users.email]',array('is_unique' => 'Este Email ya fue registrado por favor utiliza otro'));
		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[6]');
		$this->form_validation->set_rules('password_confirm', 'Confirm Password', 'trim|required|min_length[6]|matches[password]');
		$this->form_validation->set_rules('user_type','user_type','max_length[1]');
		$this->form_validation->set_rules('user_register','user_register','max_length[1]');


		if ($this->form_validation->run() === false) {

			// validation not ok, send validation errors to the view
			$this->load->view('header');
			$this->load->view('user/register/register', $data);
			$this->load->view('footer');

		} else {

			// set variables from the form
			$name     = $this->input->post('name');
			$lastname = $this->input->post('lastname');
			$lastnamesec = $this->input->post('lastnamesec');
			$username = $this->input->post('username');
			$email    = $this->input->post('email');
			$password = $this->input->post('password');
			$user_type = $this->input->post('user_type');
			$user_register = $this->input->post('user_register') || 0;

			if ($this->user_model->create_user($name,$lastname,$lastnamesec,$username,$email,$password,$user_type,$user_register)) {

				// user creation ok
				$this->load->view('header');
				$this->load->view('user/register/register_success', $data);
				$this->load->view('footer');

			} else {

				// NUNCA DEBE SUCEDER
				$data->error = 'Hubo un error creado tu usario, vuelve a intentar';

				// send error to the view
				$this->load->view('header');
				$this->load->view('user/register/register', $data);
				$this->load->view('footer');

			}

		}

			}
		}else {

			// there user was not logged in, we cannot logged him out,
			// redirect him to site root
			redirect('/');

	}
}





	/**
	 * login function.
	 *
	 * @access public
	 * @return void
	 */
	public function login() {

		if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {

			// there user was not logged in, we cannot logged him out,
			// redirect him to site root
				redirect('/user/dealer');
			}

		// create the data object
		$data = new stdClass();

		// load from helper and validation library
		$this->load->helper('form');
		$this->load->library('form_validation');

		// set validation rules
		$this->form_validation->set_rules('username', 'Username', 'required|alpha_numeric');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run() == false) {

			// validation not ok, send validation errors to the view
			$this->load->view('header');
			$this->load->view('user/login/login');
			$this->load->view('footer');

		} else {

			// set variables from the form
			$username = $this->input->post('username');
			$password = $this->input->post('password');

			if ($this->user_model->resolve_user_login($username, $password)) {

				$user_id = $this->user_model->get_user_id_from_username($username);
				$user    = $this->user_model->get_user($user_id);
				$user_register = $this->user_model->get_user_register($user_id);
				$name = $this->user_model->get_name($user_id);

				// set session user datas
				$_SESSION['user_id']      = (int)$user->id;
				$_SESSION['username']     = (string)$user->username;
				$_SESSION['user_register']= (int)$user->user_register;
				$_SESSION['user_type']	  = (int)$user->user_type;
				$_SESSION['name']					= (string)$user->name;
				$_SESSION['logged_in']    = (bool)true;
				$_SESSION['is_confirmed'] = (bool)$user->is_confirmed;
				$_SESSION['is_admin']     = (bool)$user->is_admin;

				// user login ok

				$this->dealer();

			} else {

				// login failed
				$data->error = 'Wrong username or password.';

				// send error to the view
				$this->load->view('header');
				$this->load->view('user/login/login', $data);
				$this->load->view('footer');

			}

		}

	}

	/**
	 * logout function.
	 *
	 * @access public
	 * @return void
	 */
	public function logout() {

		// create the data object
		$data = new stdClass();

		if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {

			// remove session datas
			foreach ($_SESSION as $key => $value) {
				unset($_SESSION[$key]);
			}

			// user logout ok
			$this->load->view('header');
			$this->load->view('user/logout/logout_success', $data);
			$this->load->view('footer');

		} else {

			// there user was not logged in, we cannot logged him out,
			// redirect him to site root
			redirect('/');

		}

	}



	public function dealer(){

		$this->load->model('bin_model');
		$this->load->model('Dispos_model');
		$data ['query'] = $this->bin_model->show_bases();
		$data ['queryOtra'] = $this->Dispos_model->prueba();


		if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {

			$this->load->view('header');
			$this->load->view('general/dealer');
			$this->load->view('general/bases',$data);
			$this->load->view('footer');

		}else {

			redirect('/');

		}


	}

	public function generalBinnacle(){

				$this->load->helper('form');

				if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {


					$limit = $this->input->post('limit') | 5;
					$display = $this->input->post('display');

					$this->load->model('bin_model');
					$data ['query'] = $this->bin_model->show_bin($limit,$display);
					$data ['queryOtra'] = $this->bin_model->show_bin_other($limit,$display);

					$this->load->view('header');
					$this->load->view('general/general_bin', $data);
					$this->load->view('footer');

				}else {

					// there user was not logged in, we cannot logged him out,
					// redirect him to site root
					redirect('/');

				}


	}





}
