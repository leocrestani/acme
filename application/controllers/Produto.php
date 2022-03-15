<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Produto extends CI_Controller {

    public function __construct() {
        parent::__construct();
		$this->data['u'] = $this->config->base_url();
		$this->load->model('Produto_model', 'pm');
	}

	public function index($id = 0){
		$this->data['produto'] = $this->pm->getById($id);
		
		$this->load->view('sections/header', $this->data);
		$this->load->view('produto', $this->data);
		$this->load->view('sections/footer', $this->data);
	}
}