<?php include 'header.php'; ?>

<section class="page-title bg-title overlay-dark">
	<div class="container">
		<div class="row">
			<div class="col-12 text-center">
				<div class="title">
					<h3>Jadwal</h3>
				</div>
				<ol class="breadcrumb p-0 m-0">
				  <li class="breadcrumb-item"><a href="index.php">Beranda</a></li>
				  <li class="breadcrumb-item active">Jadwal</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<section class="section schedule two">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-title">
					<h3>Jadwal Kegiatan</h3>
					<p>Kegiatan berlangsung 27 Juni 2025 s.d 28 Juni 2025</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-2">
				<div class="schedule-tab">
					<ul class="nav nav-pills text-center">
					  <li class="nav-item">
					    <a class="nav-link active" href="#nov20" data-toggle="pill">
					    	Day-01
					    	<span>27 Juni</span>
					    </a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#nov21" data-toggle="pill">
							Day-02
					    	<span>28 Juni</span>
					    </a>
					  </li>
					</ul>
				</div>
			</div>
			<div class="col-lg-10">
				<div class="schedule-contents">
					<div class="tab-content" id="pills-tabContent">
					  <div class="tab-pane fade show active schedule-item" id="nov20">
					  	<table class="table table-bordered table-hover table-striped">
							<thead class="bg-info text-white">
								<tr>
									<th class="text-center" style="width: 15%;">Jam</th>
									<th class="text-center" style="width: 35%;">Kegiatan</th>
									<th class="text-center" style="width: 35%;">Pembicara</th>
									<th class="text-center" style="width: 15%;">Lokasi</th>
								</tr>
							</thead>
							<tbody>
								<?php while ($row = mysqli_fetch_assoc($result_jadwal1)) { ?>
								<tr>
									<td><?= htmlspecialchars(substr($row['jam_mulai'], 0, 5) . ' - ' . substr($row['jam_selesai'], 0, 5)); ?></td>
									<td><?= htmlspecialchars($row['nama']); ?></td>
									<td><?= htmlspecialchars($row['speaker']); ?></td>
									<td><?= htmlspecialchars($row['lokasi']); ?></td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					  </div>
					  <div class="tab-pane fade schedule-item" id="nov21">
					  	<table class="table table-bordered table-hover table-striped">
							<thead class="bg-info text-white">
								<tr>
									<th class="text-center" style="width: 15%;">Jam</th>
									<th class="text-center" style="width: 35%;">Kegiatan</th>
									<th class="text-center" style="width: 35%;">Pembicara</th>
									<th class="text-center" style="width: 15%;">Lokasi</th>
								</tr>
							</thead>
							<tbody>
								<?php while ($row = mysqli_fetch_assoc($result_jadwal2)) { ?>
								<tr>
									<td><?= htmlspecialchars(substr($row['jam_mulai'], 0, 5) . ' - ' . substr($row['jam_selesai'], 0, 5)); ?></td>
									<td><?= htmlspecialchars($row['nama']); ?></td>
									<td><?= htmlspecialchars($row['speaker']); ?></td>
									<td><?= htmlspecialchars($row['lokasi']); ?></td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					  </div>
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>
</section>
<!--====  End of Schedule  ====-->

<?php include 'footer.php'; ?>