<!--**********************************
            Content body start
        ***********************************-->

<div class="content-body">
	<div class="col-lg-6">
		<?php Flasher::flash(); ?>
	</div>
	<!-- row -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-12">
				<div class="row">
					<div class="col-xl-6">
						<div class="row">
							<div class="col-xl-12">
								<div class="card tryal-gradient">
									<div class="card-body tryal row">
										<div class="col-xl-7 col-sm-6">
											<h2>Mari Bayar Zakat dan Kelola Disini! </h2>
											<span>Dalam setiap limpahan rezeki yang kita dapat, ada hak orang lain yang harus dibayarkan melalui zakat. Niatkan dengan tulus dan ikhlas semata untuk membantu sesama.</span>

										</div>
										<div class="col-xl-5 col-sm-6">
											<center><img src="<?= BASEURL; ?>/template/images/mosque4.png" alt="" class="sd-shape"></center>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6">
						<div class="row">
							<div class="col-xl-12">
								<div class="row">
									<div class="col-xl-6 col-sm-6">
										<div class="card">
											<div class="card-body d-flex px-4 pb-0 justify-content-between">
												<div>
													<h4 class="fs-18 font-w600 mb-4 text-nowrap">Jumlah Muzakki</h4>
													<div class="d-flex align-items-center">
														<h2 class="fs-32 font-w700 mb-4"><?= $data['muzakki'] ?> Orang</h2>

													</div>
												</div>

											</div>
										</div>
									</div>
									<div class="col-xl-6 col-sm-6">
										<div class="card">
											<div class="card-body d-flex px-4 pb-0 justify-content-between">
												<div>
													<h4 class="fs-18 font-w600 mb-4 text-nowrap">Jumlah Mustahik</h4>
													<div class="d-flex align-items-center">
														<h2 class="fs-32 font-w700 mb-4"><?= $data['mustahik'] ?> Orang</h2>

													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--**********************************
            Content body end
        ***********************************-->