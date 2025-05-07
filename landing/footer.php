<!--================================
=            Google Map            =
=================================-->

<section class="map">
    <iframe 
        title="Peta Acara"
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3963.5690636420168!2d106.79668437499343!3d-6.5759418934175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c5e4c7e94375%3A0x500b6c3db97f562e!2sBogor%20City%20Departement%20of%20Health!5e0!3m2!1sen!2sid!4v1746518911889!5m2!1sen!2sid"
        width="100%" height="600" 
        style="border:0;" allowfullscreen="" 
        loading="lazy">
    </iframe>
    
    <div class="address-block">
		<h7>Contact Us!</h7>
        <h4>Solusi Medikal Event</h4>
        <ul class="address-list p-0 m-0">
            <li><a href="https://maps.app.goo.gl/5zW1AeivCmVs4y48A"><i class="fa fa-home"></i><span>Jl. KH. Sholeh Iskandar No. 9, RT.01 / RW.004</span></a></li>
            <li><a href="https://wa.me/+628156175000"><i class="fa fa-phone"></i><span>+62 815 6175 000</span></a></li>
			<li><a href="https://www.facebook.com/solusimedikal/"><i class="fa fa-facebook"></i><span> Solusi Medikal Event</span></a></li>
			<li><a href="https://www.instagram.com/solusimedikal_event/?hl=en"><i class="fa fa-instagram"></i><span>solusimedika_event</span></a></li>
        </ul>
    </div>
</section>

<!--====  End of Google Map  ====-->


<!-- Subfooter -->
<footer class="subfooter">
  <div class="container">
    <div class="row">
      <div class="col-md-6 align-self-center">
        <div class="copyright-text">
          <p><a href="#">Wocare</a> &#169; 2025 All Right Reserved</p>
        </div>
      </div>
      <div class="col-md-6">
          <a href="#" class="to-top" aria-label="Scroll ke Atas"><i class="fa fa-angle-up"></i></a>
      </div>
    </div>
  </div>
</footer>



  <!-- JAVASCRIPTS -->
  <!-- jQuey -->
  <script src="plugins/jquery/jquery.js"></script>
  <!-- Popper js -->
  <script src="plugins/popper/popper.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
  <!-- Smooth Scroll -->
  <script src="plugins/smoothscroll/SmoothScroll.min.js"></script>  
  <!-- Isotope -->
  <script src="plugins/isotope/mixitup.min.js"></script>  
  <!-- Magnific Popup -->
  <script src="plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
  <!-- Slick Carousel -->
  <script src="plugins/slick/slick.min.js"></script>  
  <!-- SyoTimer -->
  <script src="plugins/syotimer/jquery.syotimer.min.js"></script>
  <!-- Google Mapl -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
  <script type="text/javascript" src="plugins/google-map/gmap.js"></script>
  <!-- Custom Script -->
  <script src="js/custom.js"></script>

  <script>
		document.getElementById("unmuteBtn").addEventListener("click", function(event) {
		event.stopPropagation(); // Mencegah klik ini bikin carousel geser

		let video = document.getElementById("bgVideo");
		let carousel = document.getElementById("ticketCarousel"); // ID carousel

		video.muted = !video.muted; // Toggle mute/unmute

		if (video.muted) {
			this.textContent = "🔊 Unmute";
		} else {
			this.textContent = "🔇 Mute";
		}

		// Hentikan carousel sementara
		//$('.carousel').carousel('pause');

		// (Opsional) Restart lagi setelah 5 detik
		//setTimeout(function() {
		//	$('.carousel').carousel('cycle');
		//}, 5000);
	});
  </script>
	
</body>

</html>