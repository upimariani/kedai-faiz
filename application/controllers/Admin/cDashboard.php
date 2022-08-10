<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cDashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Admin/mDashboard');
    }

    public function index()
    {
        $data = array(
            'stok' => $this->mDashboard->stok_produk(),
            'chatting' => $this->mDashboard->chatting()
        );
        $this->load->view('Admin/Layout/head');
        $this->load->view('Admin/Layout/aside');
        $this->load->view('Admin/Layout/navbar');
        $this->load->view('Admin/dashboard', $data);
        $this->load->view('Admin/Layout/footer');
    }
    public function view_chatting($id)
    {
        $data = array(
            'id' => $id,
            'chatting' => $this->mDashboard->view_chatting($id)
        );
        $this->load->view('Admin/Layout/head');
        $this->load->view('Admin/Layout/aside');
        $this->load->view('Admin/Layout/navbar');
        $this->load->view('Admin/viewChatting', $data);
        $this->load->view('Admin/Layout/footer');
    }
    public function balas($id)
    {
        $data = array(
            'id_pelanggan' => $id,
            'id_user' => '1',
            'admin_send' => $this->input->post('pesan')
        );
        $this->db->insert('chatting', $data);
        redirect('Admin/cDashboard/view_chatting/' . $id);
    }
}

/* End of file cDashboard.php */
