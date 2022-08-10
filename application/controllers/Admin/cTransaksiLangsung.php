<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cTransaksiLangsung extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Admin/mTransaksi');
    }

    public function index()
    {
        $data = array(
            'transaksi' => $this->mTransaksi->transaksi_langsung()
        );
        $this->load->view('Admin/Layout/head');
        $this->load->view('Admin/Layout/aside');
        $this->load->view('Admin/Layout/navbar');
        $this->load->view('Admin/Dinein/transaksiLangsung', $data);
        $this->load->view('Admin/Layout/footer');
    }
    public function selesai()
    {
        $data = array(
            'transaksi' => $this->mTransaksi->transaksi_langsung()
        );
        $this->load->view('Admin/Layout/head');
        $this->load->view('Admin/Layout/aside');
        $this->load->view('Admin/Layout/navbar');
        $this->load->view('Admin/Dinein/transaksiSelesai', $data);
        $this->load->view('Admin/Layout/footer');
    }
}

/* End of file cTransaksiLangsung.php */
