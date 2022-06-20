<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cChatting extends CI_Controller
{

    public function index()
    {
        $this->protect->protect();
        $this->load->view('Pelanggan/Layout/head');
        $this->load->view('Pelanggan/Layout/header');
        $this->load->view('Pelanggan/chatting');
        $this->load->view('Pelanggan/Layout/footer');
    }
}

/* End of file cChatting.php */
