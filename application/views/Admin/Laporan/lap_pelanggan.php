<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Laporan /</span> Laporan Pelanggan</h4>

        <div class="col-lg-12 col-md-12 order-1">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-6 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title d-flex align-items-start justify-content-between">
                                <div class="avatar flex-shrink-0">
                                    <img src="<?= base_url('asset/sneat/') ?>assets/img/icons/unicons/chart-success.png" alt="chart success" class="rounded" />
                                </div>
                                <div class="dropdown">

                                </div>
                            </div>
                            <span class="fw-semibold d-block mb-1">Member Gold</span>
                            <h3 class="card-title mb-2"><?= $lap['gold']->jml ?></h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-6 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title d-flex align-items-start justify-content-between">
                                <div class="avatar flex-shrink-0">
                                    <img src="<?= base_url('asset/sneat/') ?>assets/img/icons/unicons/wallet-info.png" alt="Credit Card" class="rounded" />
                                </div>
                                <div class="dropdown">

                                </div>
                            </div>
                            <span>Member Silver</span>
                            <h3 class="card-title text-nowrap mb-1"><?= $lap['silver']->jml ?></h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-6 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title d-flex align-items-start justify-content-between">
                                <div class="avatar flex-shrink-0">
                                    <img src="<?= base_url('asset/sneat/') ?>assets/img/icons/unicons/cc-primary.png" alt="Credit Card" class="rounded" />
                                </div>
                            </div>
                            <span>Member Classic</span>
                            <h3 class="card-title text-nowrap mb-1"><?= $lap['classic']->jml ?></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <h5 class="card-header">Informasi Pelanggan</h5>
                    <div class="table-responsive text-nowrap">
                        <table id="myTable" class="table ">
                            <thead>
                                <tr>
                                    <th>Nama Pelanggan </th>
                                    <th>No Telepon</th>
                                    <th>Jumlah Point</th>
                                    <th>Level Member</th>
                                </tr>
                            </thead>
                            <tbody class="table-border-bottom-0">
                                <?php
                                foreach ($lap['all'] as $key => $value) {
                                ?>
                                    <tr>
                                        <td><?= $value->nm_pel ?></td>
                                        <td><?= $value->no_tlpon ?></td>
                                        <td><?= $value->point ?></td>
                                        <td><?php
                                            if ($value->level_member == '1') {
                                                echo ' <span class="badge bg-success">Gold</span>';
                                            } else if ($value->level_member == '2') {
                                                echo '<span class="badge bg-warning">Silver</span>';
                                            } else {
                                                echo '<span class="badge bg-info">Clasic</span>';
                                            }
                                            ?></td>
                                    </tr>
                                <?php
                                }
                                ?>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>