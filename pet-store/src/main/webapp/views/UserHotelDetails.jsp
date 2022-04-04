
	<%if (session.getAttribute("User_email") == null) {
       response.sendRedirect("/signin");
        } else {%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/header.jsp" />  
	<style>
	.card:hover {
    transform: scale(1.05);
    box-shadow: 0 10px 20px rgba(0, 0, 0, .12), 0 4px 8px rgba(0, 0, 0, .06);
    transition: 0.3s ease-in-out;
    cursor:pointer;
} 
#searchbar{
     margin-left: 5%;
     padding:15px;
     border-radius: 10px;
   }
.rating{
     margin-left: 2%;
     padding:15px;
     border-radius: 10px;
   }
 
   input[type=text] {
      width: 30%;
      -webkit-transition: width 0.15s ease-in-out;
      transition: width 0.15s ease-in-out;
   }
 
   /* When the input field gets focus,
        change its width to 100% */
   input[type=text]:focus {
     width: 70%;
   }
 
  
.rating {
   width: 180px;
}

.rating__star,.starrating {
   cursor: pointer;
   color: #ff0000b2;
}
	</style>
	<jsp:include page="includes/userNav.jsp" />  
	
	
	    <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Sidebar</span>
                    </button>
                    <div>
                    	<h3 class="text-info">store details</h3>
                    </div>
                   <div>
                    	<p>Welcome 
                    	
                    </div>
                </div>
            </nav>
          
            <input id="searchbar" onkeyup="search()" type="text"
            name="search" placeholder="Search stores">
            <div class="rating d-inline" >
              <i class="rating__star far fa-star" ></i>
              <i class="rating__star far fa-star"></i>
              <i class="rating__star far fa-star"></i>
              <i class="rating__star far fa-star"></i>
              <i class="rating__star far fa-star"></i>
        </div>
          
<div class="album py-5 bg-light">
        <div class="container">

          <div class="row">
              <c:forEach var="allhotel" items="${hotellist}">
                  <div class="col-md-12 col-lg-4 col-sm-12 hotels">
                      <div class="card mb-4 box-shadow">
                          <img class="card-img-top" img src="data:image/jpeg;base64,${allhotel.hotelImg1}";bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;"  data-holder-rendered="true">
                            <div class="card-body">
                              <p class="card-text font-weight-bold text-info text-center text-uppercase sname">${allhotel.hotelName}</p>
                              <p class="text-center">
                                <span class="price mb-2">
                                  
                              </p>
                              
                              <p class="pricing-text mb-3 ml-3 text-center">
                                <span>Location : ${allhotel.location}</span>                     
                              </p>
                              <span class="text-muted"> ${allhotel.hotelDesc}</span> 
                              <div class="rating">
                                <span class="hotel_rating d-none">${allhotel.getRating()}</span>
                                <c:forEach var ="rate" begin="1" end="${allhotel.getRating()}">
                                <i class=" starrating fas fa-star"></i>
                              </c:forEach>
                                
                          </div>
                            
                              <hr>
                              <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                  <div class="text-center my-4"> <a href="/usernewbooking" class="btn btn-info">Book</a> </div>
                                </div>
                              </div>
                          </div>
                      </div>
                  </div>  
                </c:forEach>
          </div>
        </div>
      </div>

<script>
  function search() {
    let input = document.getElementById('searchbar').value
    input=input.toLowerCase();
    let x = document.getElementsByClassName('hotels');

      
    for (i = 0; i < x.length; i++) { 
      if(!x[i].className.includes("nr"))
      {
      let y = x[i].getElementsByClassName('sname')[0]; 
      console.log(y);
        if (!y.innerHTML.toLowerCase().includes(input)) {
            x[i].style.display="none";
        }
        else {
          x[i].style.display="initial";                 
        }
    }
  }
}
const ratingStars = [...document.getElementsByClassName("rating__star")];

function executeRating(stars) {
  const starClassActive = "rating__star fas fa-star";
  const starClassInactive = "rating__star far fa-star";
  const starsLength = stars.length;
  var i,current_rating;
  console.log(current_rating);
  stars.map((star) => {
    star.onclick = () => {
      i = stars.indexOf(star);
     current_rating=i+1;
    
      if (star.className===starClassInactive) {
        for (i; i >= 0; --i) stars[i].className = starClassActive;
      } else {
        for (i; i < starsLength; ++i) stars[i].className = starClassInactive;
      }
      let x = document.getElementsByClassName('hotels');
  for (i = 0; i < x.length; i++) { 
      let y = x[i].getElementsByClassName('hotel_rating')[0]; 
    
        if (y.textContent!=current_rating) {
            x[i].style.display="none";
            x[i].className="col-md-12 col-lg-4 col-sm-12 hotels nr"            
        }
        else {
            x[i].style.display="initial";   
            x[i].className="col-md-12 col-lg-4 col-sm-12 hotels"; 
        }
    }
    };
  });
  
}


  executeRating(ratingStars);

</script>	

	
<jsp:include page="includes/footer.jsp" />  
<%}%>