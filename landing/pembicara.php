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
		<div class="row">
        <?php while ($row = mysqli_fetch_assoc($result_speaker)) { ?>
			<div class="col-lg-3 col-6">
				<!-- Speaker 1 -->
				<div class="speaker-item">
					<div class="image">
                        <img src="images/pembicara/<?= htmlspecialchars($row['foto'] ?? 'none.jpg'); ?>" 
						alt="<?= htmlspecialchars($row['nama_lengkap'] ?? 'Speaker'); ?>" 
						class="img-fluid">
					</div>
                    <div class="content text-center">
						<h5><a href=""><?= htmlspecialchars($row['gd'] . ' ' . $row['nama_lengkap'] . ', ' . $row['gb']); ?></a></h5>
						<p><?= htmlspecialchars($row['posisi']); ?></p>
					</div>
                </div>
            </div>
        <?php } ?>
        </div>
    </div>
</section>

<?php include 'footer.php'; ?>