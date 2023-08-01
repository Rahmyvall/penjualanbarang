<!DOCTYPE html>
<html lang="en">

<head>
      <?php $this->load->view('partials/head.php') ?>
</head>

<body id="page-top">
      <div id="wrapper">
            <!-- load sidebar -->
            <?php $this->load->view('partials/sidebar.php') ?>

            <div id="content-wrapper" class="d-flex flex-column">
                  <div id="content" data-url="<?= base_url('barang') ?>">
                        <!-- load Topbar -->
                        <?php $this->load->view('partials/topbar.php') ?>

                        <div class="container-fluid">
                              <div class="clearfix">
                                    <div class="float-left">
                                          <h1 class="h3 m-0 text-gray-800"><?= $title ?></h1>
                                    </div>
                                    <div class="float-right">
                                          <a href="<?= base_url('barang/export') ?>" target="_blank"
                                                class="btn btn-danger btn-sm"><i
                                                      class="fa fa-file-pdf"></i>&nbsp;&nbsp;Export</a>
                                          <a href="<?= base_url('barang/tambah') ?>" class="btn btn-primary btn-sm"><i
                                                      class="fa fa-plus"></i>&nbsp;&nbsp;Tambah</a>
                                    </div>
                              </div>
                              <hr>
                              <?php if ($this->session->flashdata('success')) : ?>
                              <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    <?= $this->session->flashdata('success') ?>
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                          <span aria-hidden="true">&times;</span>
                                    </button>
                              </div>
                              <?php elseif ($this->session->flashdata('error')) : ?>
                              <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <?= $this->session->flashdata('error') ?>
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                          <span aria-hidden="true">&times;</span>
                                    </button>
                              </div>
                              <?php endif ?>
                              <div class="card shadow">
                                    <div class="card-header"><strong>Daftar Barang</strong></div>
                                    <div class="card-body">
                                          <div class="table-responsive">
                                                <table class="table table-bordered" id="dataTable" width="100%"
                                                      cellspacing="0">
                                                      <thead>
                                                            <tr>
                                                                  <td>No</td>
                                                                  <td>Nama Barang</td>
                                                                  <td>Kode Barang</td>
                                                                  <td>Stok</td>
                                                                  <td>Jumlah Terjual</td>
                                                                  <td>Tanggal Transaksi</td>
                                                                  <td>Jenis Barang</td>
                                                                  <td class="text-center">Aksi</td>
                                                            </tr>
                                                      </thead>
                                                      <tbody>
                                                            <?php foreach ($all_barang as $barang) : ?>
                                                            <tr>
                                                                  <td><?= $no++ ?></td>
                                                                  <td><?= $barang->nama_barang ?></td>
                                                                  <td><?= $barang->kode_barang ?></td>
                                                                  <td><?= $barang->stok ?>
                                                                        <?= strtoupper($barang->satuan) ?></td>
                                                                  <td><?= $barang->jumlah_terjual ?>
                                                                        <?= strtoupper($barang->satuan) ?></td>
                                                                  <td><?= $barang->tgl_transaksi ?>
                                                                  </td>
                                                                  <td><?= $barang->jenis_barang ?></td>
                                                                  <td class="text-center">
                                                                        <a href="<?= base_url('barang/ubah/' . $barang->kode_barang) ?>"
                                                                              class="btn btn-success btn-sm"><i
                                                                                    class="fa fa-edit"></i></i>&nbsp;&nbsp;Edit</a>
                                                                        <a onclick="return confirm('apakah anda yakin?')"
                                                                              href="<?= base_url('barang/hapus/' . $barang->kode_barang) ?>"
                                                                              class="btn btn-danger btn-sm"><i
                                                                                    class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
                                                                  </td>
                                                            </tr>
                                                            <?php endforeach ?>
                                                      </tbody>
                                                </table>
                                          </div>
                                    </div>
                              </div>
                        </div>
                  </div>
                  <!-- load footer -->
                  <?php $this->load->view('partials/footer.php') ?>
            </div>
      </div>
      <?php $this->load->view('partials/js.php') ?>
      <script src="<?= base_url('sb-admin/js/demo/datatables-demo.js') ?>"></script>
      <script src="<?= base_url('sb-admin') ?>/vendor/datatables/jquery.dataTables.min.js"></script>
      <script src="<?= base_url('sb-admin') ?>/vendor/datatables/dataTables.bootstrap4.min.js"></script>
</body>

</html>