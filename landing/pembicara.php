<?php include 'header.php'; ?>

<section class="page-title bg-title overlay-dark">
	<div class="container">
		<div class="row">
			<div class="col-12 text-center">
				<div class="title">
					<h3>Pembicara</h3>
				</div>
				<ol class="breadcrumb p-0 m-0">
				  <li class="breadcrumb-item"><a href="index.php">Beranda</a></li>
				  <li class="breadcrumb-item active">Pembicara</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<section class="section speakers white">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12">
				<div class="section-title">
					<h3>Pembicara Internasional</h3>
					<p>International Speaker Stoma Care Week 2025</p>
				</div>
			</div>
        <?php while ($row = mysqli_fetch_assoc($result_speaker_internasional)) { ?>
			<div class="col-lg-3 col-6 mb-3">
				<!-- Speaker 1 -->
				<div class="speaker-item">
					<div class="image">
                        <img src="images/speaker/<?= htmlspecialchars($row['foto'] ?? 'tidak_tersedia.png'); ?>" 
						alt="<?= htmlspecialchars($row['nama_lengkap'] ?? 'Speaker'); ?>" 
						class="img-fluid">
					</div>
                    <div class="content text-center">
						<p style="color:black"><b><?= htmlspecialchars($row['gd'] . ' ' . $row['nama_lengkap'] . ', ' . $row['gb']); ?></b></p>
						<p><?= htmlspecialchars($row['posisi']); ?></p>
					</div>
                </div>
            </div>
        <?php } ?>
			<div class="col-12">
				<div class="section-title">
					<h3>Pembicara Nasional</h3>
					<p>National Speaker Stoma Care Week 2025</p>
				</div>
			</div>
        <?php while ($row = mysqli_fetch_assoc($result_speaker_nasional)) { ?>
			<div class="col-lg-3 col-6 mb-3">
				<!-- Speaker 1 -->
				<div class="speaker-item">
					<div class="image">
                        <img src="images/speaker/<?= htmlspecialchars($row['foto'] ?? 'tidak_tersedia.png'); ?>" 
						alt="<?= htmlspecialchars($row['nama_lengkap'] ?? 'Speaker'); ?>" 
						class="img-fluid">
					</div>
                    <div class="content text-center">
						<p style="color:black"><b><?= htmlspecialchars($row['gd'] . ' ' . $row['nama_lengkap'] . ', ' . $row['gb']); ?></b></p>
						<p><?= htmlspecialchars($row['posisi']); ?></p>
					</div>
                </div>
            </div>
        <?php } ?>
			<div class="col-12">
				<div class="section-title">
					<h3>Ostomate</h3>
					<p>Indonesia - Singapore - Malaysia</p>
				</div>
			</div>
        <?php while ($row = mysqli_fetch_assoc($result_ostomate)) { ?>
			<div class="col-lg-3 col-md-4 mb-3">
				<!-- Speaker 1 -->
				<div class="speaker-item">
					<div class="image">
                        <img src="images/speaker/<?= htmlspecialchars($row['foto'] ?? 'tidak_tersedia.png'); ?>" 
						alt="<?= htmlspecialchars($row['nama_lengkap'] ?? 'Speaker'); ?>" 
						class="img-fluid">
					</div>
                    <div class="content text-center">
						<p style="color:black"><b><?= htmlspecialchars($row['gd'] . ' ' . $row['nama_lengkap'] . ', ' . $row['gb']); ?></b></p>
						<p><?= htmlspecialchars($row['posisi']); ?></p>
					</div>
                </div>
            </div>
        <?php } ?>
        </div>
    </div>
</section>

<?php include 'footer.php'; ?>