<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cLogin extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('pelanggan/mLogin');
    }


    public function index()
    {
        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('Pelanggan/login');
        } else {
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $data = $this->mLogin->login($username, $password);

            if ($data) {
                $id = $data->id_pelanggan;
                $member = $data->level_member;
                $array = array(
                    'id' => $id,
                    'member' => $member
                );
                $this->session->set_userdata($array);
                redirect('Pelanggan/cKatalog');
            } else {
                $this->session->set_flashdata('error', 'Username dan Password Anda Salah!');
                redirect('Pelanggan/cLogin');
            }
        }
    }
    public function logout()
    {
        $this->cart->destroy();
        $this->session->unset_userdata('id');
        $this->session->set_flashdata('error', 'Anda Berhasil Logout!');
        redirect('Pelanggan/cLogin');
    }
    public function register()
    {
        $this->form_validation->set_rules('nama', 'Nama Pelanggan', 'required');
        $this->form_validation->set_rules('no_hp', 'No Telepon', 'required|min_length[11]|max_length[13]');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');
        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');


        if ($this->form_validation->run() == FALSE) {
            $this->load->view('Pelanggan/register');
        } else {
            $data = array(
                'nm_pel' => $this->input->post('nama'),
                'alamat' => $this->input->post('alamat'),
                'no_tlpon' => $this->input->post('no_hp'),
                'username' => $this->input->post('username'),
                'password' => $this->input->post('password'),
                'level_member' => '3',
                'point' => '0'
            );
            $this->mLogin->register($data);
            $this->session->set_flashdata('success', 'Anda Berhasil Register! Silahkan Login!');
            redirect('Pelanggan/clogin');
        }
    }
}

/* End of file cLogin.php */
