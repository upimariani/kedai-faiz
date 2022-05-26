<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cProfil extends CI_Controller
{

    public function index()
    {
        $this->load->view('Pelanggan/Layout/head');
        $this->load->view('Pelanggan/Layout/header');
        $this->load->view('Pelanggan/profil');
        $this->load->view('Pelanggan/Layout/footer');
    }
}

/* End of file cProfil.php */
