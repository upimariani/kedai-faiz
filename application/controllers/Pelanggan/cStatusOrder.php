<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cStatusOrder extends CI_Controller
{

    public function index()
    {
        $this->load->view('Pelanggan/Layout/head');
        $this->load->view('Pelanggan/Layout/header');
        $this->load->view('Pelanggan/status_order');
        $this->load->view('Pelanggan/Layout/footer');
    }
}

/* End of file cStatusOrder.php */
