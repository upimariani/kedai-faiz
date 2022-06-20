<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mKatalog extends CI_Model
{
    public function katalog()
    {
        if ($this->session->userdata('member') == '') {
            $data['menu'] = $this->db->query("SELECT * FROM `produk` JOIN diskon ON produk.id_produk = diskon.id_produk WHERE diskon.member='3'")->result();
        } else {
            $data['menu'] = $this->db->query("SELECT * FROM `produk` JOIN diskon ON produk.id_produk = diskon.id_produk WHERE diskon.member='" . $this->session->userdata('member') . "'")->result();
        }

        return $data;
    }
}

/* End of file mKatalog.php */
