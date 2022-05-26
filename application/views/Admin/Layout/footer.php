<div class="content-backdrop fade"></div>
</div>
<!-- Content wrapper -->
</div>
<!-- / Layout page -->
</div>

<!-- Overlay -->
<div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->


<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="<?= base_url('asset/sneat/') ?>assets/vendor/libs/jquery/jquery.js"></script>
<script src="<?= base_url('asset/sneat/') ?>assets/vendor/libs/popper/popper.js"></script>
<script src="<?= base_url('asset/sneat/') ?>assets/vendor/js/bootstrap.js"></script>
<script src="<?= base_url('asset/sneat/') ?>assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="<?= base_url('asset/sneat/') ?>assets/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->
<script src="<?= base_url('asset/sneat/') ?>assets/vendor/libs/apex-charts/apexcharts.js"></script>

<!-- Main JS -->
<script src="<?= base_url('asset/sneat/') ?>assets/js/main.js"></script>

<!-- Page JS -->
<script src="<?= base_url('asset/sneat/') ?>assets/js/dashboards-analytics.js"></script>
<script src="<?= base_url('asset/jquery-3.6.0.min.js') ?>"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.0/js/jquery.dataTables.js"></script>
<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script>
    $(document).ready(function() {
        $('#myTable').DataTable();
    })
</script>
<script>
    console.log = function() {}
    $("#produk-diskon").on('change', function() {

        $(".harga").html($(this).find(':selected').attr('data-harga'));
        $(".harga").val($(this).find(':selected').attr('data-harga'));
    });
</script>
</body>

</html>