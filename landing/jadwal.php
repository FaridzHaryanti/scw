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
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusm tempor incididunt ut labore</p>
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
					  	<!-- Headings -->
					  	<ul class="m-0 p-0">
					  		<li class="headings text-center">
					  			<div class="time">Jam</div>
					  			<div class="speaker">Kegiatan</div>
								<div class="subject">Pembicara</div>
					  			<div class="venue">Venue</div>
					  		</li>
					  		<!-- Schedule Details -->
							<?php while ($row = mysqli_fetch_assoc($result_jadwal1)) { ?>
					  		<li class="schedule-details text-center">
					  			<div class="block">
					  				<!-- time -->
							  		<div class="time">
									  <span class="time"><?= htmlspecialchars(substr($row['jam_mulai'], 0, 5) . ' - ' . substr($row['jam_selesai'], 0, 5)); ?></span>
							  		</div>
							  		<!-- Speaker -->
							  		<div class="speaker">
										<span class="name"><?= htmlspecialchars($row['nama']); ?></span>
							  		</div>
							  		<!-- Subject -->
							  		<div class="subject"><?= htmlspecialchars($row['speaker']); ?></div>
							  		<!-- Venue -->
							  		<div class="venue"><?= htmlspecialchars($row['lokasi']); ?></div>
					  			</div>
					  		</li>
							<?php } ?>
					  	</ul>
					  </div>
					  <div class="tab-pane fade schedule-item" id="nov21">
					  	<!-- Headings -->
					  	<ul class="m-0 p-0">
					  		<li class="headings text-center">
					  			<div class="time">Jam</div>
					  			<div class="speaker">Kegiatan</div>
					  			<div class="subject">Pembicara</div>
					  			<div class="venue">Venue</div>
					  		</li>
					  		<!-- Schedule Details -->
							<?php while ($row = mysqli_fetch_assoc($result_jadwal2)) { ?>
					  		<li class="schedule-details text-center">
					  			<div class="block">
					  				<!-- time -->
							  		<div class="time">
									  <span class="time"><?= htmlspecialchars(substr($row['jam_mulai'], 0, 5) . ' - ' . substr($row['jam_selesai'], 0, 5)); ?></span></div>
							  		<!-- Speaker -->
							  		<div class="speaker">
										<span class="name"><?= htmlspecialchars($row['nama']); ?></span>
							  		</div>
							  		<!-- Subject -->
							  		<div class="subject"><?= htmlspecialchars($row['speaker']); ?></div>
							  		<!-- Venue -->
							  		<div class="venue"><?= htmlspecialchars($row['lokasi']); ?></div>
					  			</div>
					  		</li>
							<?php } ?>
					  	</ul>
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