<!-- Content wrapper -->
<div class="content-wrapper">
	<!-- Content -->

	<div class="container-xxl flex-grow-1 container-p-y">
		<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Transaksi Langsung /</span> Transaksi</h4>
		<?php
		if ($this->session->userdata('success')) {
		?>
			<div class="alert alert-success alert-dismissible" role="alert">
				<?= $this->session->userdata('success') ?>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
		<?php
		}
		?>
		<!-- Basic Bootstrap Table -->
		<a href="<?= base_url('Admin/cTransaksiLangsung/selesai') ?>" class="btn btn-success mb-3">Pesanan Selesai</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<h5 class="card-header">Informasi Transaksi</h5>
					<div class="table-responsive text-nowrap">
						<table id="myTable" class="table">
							<thead>
								<tr>
									<th>No </th>
									<th>Nama Produk</th>
									<th>Harga Produk</th>
									<th>Quantity</th>
									<th>Subtotal</th>
									<th class="text-center">Actions</th>
								</tr>
							</thead>
							<tbody class="table-border-bottom-0">
								<?php
								$no = 1;
								foreach ($this->cart->contents() as $key => $value) {
								?>
									<tr>
										<td><?= $no++ ?></td>
										<td><?= $value['name'] ?></td>
										<td><?= $value['price'] ?></td>
										<td><?= $value['qty'] ?></td>
										<td>Rp. <?= number_format($value['qty'] * $value['price'])  ?></td>
										<td class="text-center"><a href="<?= base_url('Admin/cTransaksiLangsung/delete/' . $value['rowid']) ?>"><i class="bx bx-trash me-1"></i> </a></td>
									</tr>
								<?php
								}
								?>
							</tbody>
						</table>
						<form action="<?= base_url('Admin/cTransaksiLangsung/pesan_langsung') ?>" method="POST">
							<?php $id_transaksi = date('Ymd') . strtoupper(random_string('alnum', 8));
							?>
							<input type="hidden" name="total" value="<?= $this->cart->total() ?>">
							<input type="hidden" name="id_transaksi" value="<?= $id_transaksi ?>">
							<?php
							$i = 1;
							foreach ($this->cart->contents() as $items) {
								echo form_hidden('qty' . $i++, $items['qty']);
							}
							?>
							<button class="btn btn-warning mb-3" type="submit">Order</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<!-- Basic -->
			<div class="col-md-12">
				<div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
					<?php
					foreach ($produk as $key => $value) {
					?>
						<form action="<?= base_url('Admin/cTransaksiLangsung/add_to_cart') ?>" method="POST">
							<input type="hidden" name="name" value="<?= $value->nama_produk ?>">
							<input type="hidden" name="id" value="<?= $value->id_diskon ?>">
							<input type="hidden" name="price" value="<?= $value->harga - ($value->harga * $value->diskon / 100) ?>">
							<input type="hidden" name="stok" value="<?= $value->stok ?>">
							<input type="hidden" name="picture" value="<?= $value->gambar ?>">
							<input type="hidden" name="qty" value="1">
							<input type="hidden" name="diskon" value="<?= $value->diskon ?>">
							<div class="col">
								<div class="card h-100">
									<img style="height: 350px;" class="card-img-top" src="<?= base_url('asset/foto-produk/' . $value->gambar) ?>" alt="Card image cap" />
									<div class="card-body">
										<h5 class="card-title"><?= $value->nama_produk ?></h5>
										<p class="card-text">
											Rp. <?= number_format($value->harga - ($value->harga * $value->diskon / 100)) ?>
											<?php
											if ($value->diskon != '0') {
											?>
												<del> Rp. <?= number_format($value->harga) ?></del>
											<?php
											}
											?>
										</p>
										<button type="submit" class="btn btn-success mt-3">Add To Cart</button>
									</div>
								</div>
							</div>
						</form>
					<?php
					}
					?>


				</div>
			</div>

		</div>



		<!--/ Basic Bootstrap Table -->
	</div>
	<!-- / Content -->
