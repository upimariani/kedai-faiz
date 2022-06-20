<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mStatusOrder extends CI_Model
{
    public function pesanan()
    {
        $this->db->select('*');
        $this->db->from('transaksi');
        $this->db->join('pengiriman', 'transaksi.id_transaksi = pengiriman.id_transaksi', 'left');
        $this->db->join('pelanggan', 'transaksi.id_pelanggan = pelanggan.id_pelanggan', 'left');
        $this->db->where('transaksi.id_pelanggan', $this->session->userdata('id'));
        return $this->db->get()->result();
    }
    public function detail_pesanan($id)
    {
        $data['pesanan'] = $this->db->query("SELECT * FROM transaksi JOIN detail_transaksi ON transaksi.id_transaksi = detail_transaksi.id_transaksi JOIN diskon ON detail_transaksi.id_diskon = diskon.id_diskon JOIN produk ON diskon.id_produk = produk.id_produk WHERE transaksi.id_transaksi='" . $id . "'")->result();
        $data['transaksi'] = $this->db->query("SELECT * FROM transaksi JOIN pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan JOIN pengiriman ON transaksi.id_transaksi = pengiriman.id_transaksi JOIN kecamatan ON pengiriman.id_kecamatan = kecamatan.id_kecamatan WHERE transaksi.id_transaksi='" . $id . "'")->row();
        return $data;
    }
    public function pembayaran($id, $data)
    {
        $this->db->where('id_transaksi', $id);
        $this->db->update('transaksi', $data);
    }
    public function pelanggan($id)
    {
        $this->db->select('*');
        $this->db->from('pelanggan');
        $this->db->where('id_pelanggan', $id);
        return $this->db->get()->row();
    }
    public function update_point($id, $data)
    {
        $this->db->where('id_pelanggan', $id);
        $this->db->update('pelanggan', $data);
    }
}

/* End of file mStatusOrder.php */
