<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cTransaksi extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Admin/mTransaksi');
    }


    public function pesanan_masuk()
    {
        $data = array(
            'transaksi' => $this->mTransaksi->transaksi()
        );
        $this->load->view('Admin/Layout/head');
        $this->load->view('Admin/Layout/aside');
        $this->load->view('Admin/Layout/navbar');
        $this->load->view('Admin/Transaksi/pesanan_masuk', $data);
        $this->load->view('Admin/Layout/footer');
    }
    public function konfirmasi_pembayaran()
    {
        $data = array(
            'transaksi' => $this->mTransaksi->transaksi()
        );
        $this->load->view('Admin/Layout/head');
        $this->load->view('Admin/Layout/aside');
        $this->load->view('Admin/Layout/navbar');
        $this->load->view('Admin/Transaksi/konfirmasi_pembayaran', $data);
        $this->load->view('Admin/Layout/footer');
    }
    public function pesanan_diproses()
    {
        $data = array(
            'transaksi' => $this->mTransaksi->transaksi()
        );
        $this->load->view('Admin/Layout/head');
        $this->load->view('Admin/Layout/aside');
        $this->load->view('Admin/Layout/navbar');
        $this->load->view('Admin/Transaksi/pesanan_diproses', $data);
        $this->load->view('Admin/Layout/footer');
    }
    public function pesanan_dikirim()
    {
        $data = array(
            'transaksi' => $this->mTransaksi->transaksi()
        );
        $this->load->view('Admin/Layout/head');
        $this->load->view('Admin/Layout/aside');
        $this->load->view('Admin/Layout/navbar');
        $this->load->view('Admin/Transaksi/pesanan_dikirim', $data);
        $this->load->view('Admin/Layout/footer');
    }
    public function pesanan_selesai()
    {
        $data = array(
            'transaksi' => $this->mTransaksi->transaksi()
        );
        $this->load->view('Admin/Layout/head');
        $this->load->view('Admin/Layout/aside');
        $this->load->view('Admin/Layout/navbar');
        $this->load->view('Admin/Transaksi/pesanan_selesai', $data);
        $this->load->view('Admin/Layout/footer');
    }

    public function detail_pesanan($id)
    {
        $data = array(
            'detail' => $this->mTransaksi->detail_pesanan($id)
        );
        $this->load->view('Admin/Layout/head');
        $this->load->view('Admin/Layout/aside');
        $this->load->view('Admin/Layout/navbar');
        $this->load->view('Admin/Transaksi/detail_pesanan', $data);
        $this->load->view('Admin/Layout/footer');
    }
    public function konfirmasi($id)
    {
        $data = array(
            'status_order' => '2'
        );
        $this->db->where('id_transaksi', $id);
        $this->db->update('transaksi', $data);
        $this->session->set_flashdata('success', 'Pesanan Segera Diproses!');
        redirect('Admin/cTransaksi/pesanan_diproses');
    }
    public function dikirim($id)
    {
        $data = array(
            'status_order' => '3'
        );
        $this->db->where('id_transaksi', $id);
        $this->db->update('transaksi', $data);
        $this->session->set_flashdata('success', 'Pesanan Segera Dikrrim!');
        redirect('Admin/cTransaksi/pesanan_dikirim');
    }
}

/* End of file cTransaksi.php */
