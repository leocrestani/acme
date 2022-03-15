<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Carrinho extends CI_Controller {

    public function __construct() {
        parent::__construct();
		$this->data['u'] = $this->config->base_url();
		$this->load->model('Produto_model', 'pm');
	}

	public function index()
	{
		$this->data['produtos'] = $this->pm->getAllByName();

		$this->load->view('sections/header', $this->data);
		$this->load->view('carrinho', $this->data);
		$this->load->view('sections/footer', $this->data);
	}

    public function finalizar()
	{
        
    }
}