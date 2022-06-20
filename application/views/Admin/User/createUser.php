<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Forms /</span> Create New User</h4>
        <a href="<?= base_url('Admin/cUser') ?>" class="btn btn-danger mb-3"><i class='bx bx-arrow-back'></i> Kembali</a>
        <div class="row">
            <!-- Basic -->
            <?php echo form_open_multipart('Admin/cUser/createUser'); ?>

            <div class="col-md-6">
                <div class="card mb-4">
                    <h5 class="card-header">Data User</h5>
                    <div class="card-body demo-vertical-spacing demo-only-element">
                        <div class="form-password-toggle">
                            <label class="form-label" for="basic-default-password12">Nama User</label>
                            <div class="input-group">
                                <input type="text" name="nama" value="<?= set_value('nama') ?>" class="form-control" />
                            </div>
                            <?= form_error('nama', '<div id="defaultFormControlHelp" class="form-text">', '</div>') ?>
                        </div>
                        <div class="form-password-toggle">
                            <label class="form-label" for="basic-default-password12">Alamat</label>
                            <div class="input-group">
                                <input type="text" name="alamat" value="<?= set_value('alamat') ?>" class="form-control" />
                            </div>
                            <?= form_error('alamat', '<div id="defaultFormControlHelp" class="form-text">', '</div>') ?>
                        </div>
                        <div class="form-password-toggle">
                            <label class="form-label" for="basic-default-password12">No Telepon</label>
                            <div class="input-group">
                                <input type="number" name="no_hp" value="<?= set_value('no_hp') ?>" class="form-control" />
                            </div>
                            <?= form_error('no_hp', '<div id="defaultFormControlHelp" class="form-text">', '</div>') ?>
                        </div>
                        <div class="form-password-toggle">
                            <label class="form-label" for="basic-default-password12">Username</label>
                            <div class="input-group">
                                <input type="text" name="username" value="<?= set_value('username') ?>" class="form-control" />
                            </div>
                            <?= form_error('username', '<div id="defaultFormControlHelp" class="form-text">', '</div>') ?>
                        </div>
                        <div class="form-password-toggle">
                            <label class="form-label" for="basic-default-password12">Password</label>
                            <div class="input-group">
                                <input type="text" name="password" value="<?= set_value('password') ?>" class="form-control" />
                            </div>
                            <?= form_error('password', '<div id="defaultFormControlHelp" class="form-text">', '</div>') ?>
                        </div>


                        <button type="submit" class="btn btn-success mb-3"><i class='bx bx-save'></i>Save</button>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>