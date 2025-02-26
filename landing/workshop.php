<?php include 'header.php'; ?>

<section class="page-title bg-title overlay-dark">
	<div class="container">
		<div class="row">
			<div class="col-12 text-center">
				<div class="title">
					<h3>Workshop</h3>
				</div>
				<ol class="breadcrumb p-0 m-0">
				  <li class="breadcrumb-item"><a href="index.php">Beranda</a></li>
				  <li class="breadcrumb-item active">Workshop</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<section class="news section">
	<div class="container">
		<div class="row mt-30">
			<div class="col-lg-8 col-md-10 mx-auto">
				<div class="block">
					<!-- Article -->
					<article class="blog-post single">
						<div class="post-content">
							<div class="date">
								<h4><?= htmlspecialchars($workshops['hari'] == 1 ? 27 : 28); ?><span>Juni</span></h4>
							</div>
							<div class="post-title">
								<h3><?= htmlspecialchars($workshops['nama']); ?></h3>
							</div>
							<div class="post-details">
                            <?php while ($row = mysqli_fetch_assoc($result_detail)) { ?>
								<p><?= htmlspecialchars(substr($row['jam_mulai'], 0, 5) . ' - ' . substr($row['jam_selesai'], 0, 5)); ?></p>
                                <h6><?= htmlspecialchars($row['nama']); ?></h6>
                                <p><?= htmlspecialchars($row['pembicara']); ?></p>
                            <?php } ?>
							</div>
						</div>
					</article>
				</div>
			</div>
			<div class="col-lg-4 col-md-10 mx-auto">
				<div class="sidebar">
					<!-- Latest post -->
					<div class="widget latest-post">
						<h5 class="widget-header">Workshop</h5>
						<!-- Post -->
                        <?php 
                        $query_list = "SELECT id, nama, hari FROM jadwal WHERE ket=1";
                        $result_list = mysqli_query($koneksi, $query_list);
                        while ($row = mysqli_fetch_assoc($result_list)) { ?>
                            <div class="media">
                                <img src="images/workshop.png" class="img-fluid" alt="foto_workshop">
                                <div class="media-body">
                                    <h6><a href="?id=<?= $row['id']; ?>"><?= htmlspecialchars($row['nama']); ?></a></h6>
                                    <p><span class="fa fa-calendar"></span> <?= ($row['hari'] == 1) ? "27" : "28"; ?> Juni, 2025</p>
                                </div>
                            </div>
                        <?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<?php include 'footer.php'; ?>