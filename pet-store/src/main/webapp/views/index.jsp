<jsp:include page="includes/header.jsp" />  

<jsp:include page="includes/homeNav.jsp"/>
<style>
  .carousel-item {
  height: 100vh;
  min-height: 200px;
  background: no-repeat center center scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>

<!--  -->


<header style="margin-top: -40px;" >
  <div id="carouselExampleIndicators" class="carousel carousel-dark slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      <!-- <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="4"></li> -->
    </ol>
    <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item active" style="background-image: url('../assets/images/hotels/pet\ store\ main\ pic\ 3.jpg');background-size: contain;background-color: black;">
        <div class="carousel-caption d-none d-md-block">
          <h3>Store</h3>
          <p class="text-white">where to find them</p>
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('../assets/images/hotels/pets\ main\ pic.jpg');background-size: contain;background-color: black;">
        <div class="carousel-caption d-none d-md-block">
          <h3>Pets</h3>
          <p class="text-danger"> Integer molestie, orci vel ullamcorper aliquet, enim augue tempor massa, non lacinia lectus turpis nec turpis</p>
        </div>
      </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('../assets/images/hotels/food1.jpeg'); background-size: contain;background-color: black;">
        <div class="carousel-caption d-none d-md-block">
          <h3 class="fw-bolder text-white shadow-lg bg-dark">food</h3>
          <p class=" fw-bolder text-white shadow-lg bg-dark ">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pharetra neque at erat accumsan commodo. Fusce at augue in metus commodo eleifend vitae ac nibh</p>
        </div>
      </div>
       
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</header>

<section id="service-section" class="mt-5 mb-5 pr-3">
		 <div class="container marketing text-center">

        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-4 ">
            <img class="rounded-circle" src="../assets/images/catering/pets.jpeg" alt="Generic placeholder image" width="240" height="240">
            <h2>Pets</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <!-- <p><a class="btn btn-warning" href="#" role="button">View details &raquo;</a></p> -->
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src='../assets/images/catering/food.jpeg' alt="Generic placeholder image" width="240" height="240">
            <h2>food</h2>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
            <!-- <p><a class="btn btn-warning" href="#" role="button">View details &raquo;</a></p> -->
          </div>
          <div class="col-lg-4">
            <img class="rounded-circle" src='../assets/images/catering/store1.jpeg' alt="Generic placeholder image" width="240" height="240">
            <h2>stores</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <!-- <p><a class="btn btn-warning" href="#" role="button">View details &raquo;</a></p> -->
          </div>
         </div>
</section>



<hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <div class="mt-1 text-center">
              <h2 class="featurette-heading mt-2">Pets<p class="text-muted mt-2">It'll blow your mind.</p></h2>
            </div>
            <div class="mt-3">
              <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
            </div>
          </div>
          <div class="col-md-2">
            <img class="featurette-image img-fluid mx-auto"  src="../assets/images/catering/pets.jpeg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <div class="mt-1 text-center">
              <h2 class="featurette-heading mt-2 mx-auto">food <p class="text-muted mt-2">The best memories are made around the dinner table</p></h2>
            </div>
              <div class="mt-3">
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
              </div>
           </div>
          <div class="col-md-2 order-md-1 mx-auto">
            <img class="featurette-image img-fluid mx-auto" src="../assets/images/catering/food2.jpeg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <div class="mt-1 text-center">
              <h2 class="featurette-heading mt-2">stores <p class="text-muted mt-2"The All in one stores that you need for your pet.></p></h2>
            </div>
            <div class="mt-3">
              <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
            </div>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="https://image.freepik.com/free-vector/various-street-food-vendor-flat-illustration_2482-381.jpg" alt="Generic placeholder image">
          </div>
        </div>



<!-- footer-section -->
        <section class="footer-section">
            <footer class="footer">
                <p class="footer_title">Contact us</p>
                    <div class="footer_social">
                        <a href="#" class="footer_icon"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="footer_icon"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="footer_icon"><i class="fab fa-twitter"></i></a>
                    </div>
                <p>&#169; 2022 copyright all right reserved</p>
            </footer>
        </section>
<jsp:include page="includes/footer.jsp" />  