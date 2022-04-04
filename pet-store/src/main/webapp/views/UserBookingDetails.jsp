
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
                    	<h3 class="text-info">USER BOOKING HISTORY</h3>
                    </div>
                   
                </div>
            </nav>

        

            <section class="booking-details" >
                <div class="container" id="contentArea1"><br><br>
                    <div class="row">
                        <c:forEach var="booking" items="${User_bookings}" varStatus="loop">
                       
                            <div id="${booking.id}" class="col-lg-4 col-md-6">
                                <div class="card card-margin">
                                    <div class="card-header no-border justify-content-between">
                                        <c:if test = "${booking.accept_status==0  && booking.payment_status==0}">
                                            <h5 class="card-title">Pending</h5>
                                        </c:if>
                                        <c:if test = "${booking.accept_status==1 && booking.payment_status==0}">
                                            <h5 class="card-title">Booking Accepted</h5>
                                        </c:if>
                                        <c:if test = "${booking.accept_status==1 && booking.payment_status==1}">
                                            <h5 class="card-title">Paid</h5>
                                        </c:if>
                                        <c:if test = "${booking.accept_status==2 && booking.payment_status==0}">
                                            <h5 class="card-title">Cancelled by admin</h5>
                                        </c:if>
                                        <c:if test = "${booking.accept_status==3 && booking.payment_status==0}">
                                            <h5 class="card-title">Cancelled by you</h5>
                                        </c:if>
                                        
                                        <c:if test="${(booking.accept_status==3 || booking.accept_status==2)||(booking.accept_status==1 && booking.payment_status==1)}">
                                            <button type="button" class="btn" name="${booking.id}" onClick="removeBookingCard(this);" aria-label="Close">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
                                                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
                                              </svg>
                                            </button>
                                        </c:if>
                                    </div>
                                    <div class="card-body pt-0">
                                        <div class="widget-49">
                                            <div class="widget-49-title-wrapper">  
                                                  
                                                        <c:if test = "${booking.accept_status==0  && booking.payment_status==0}">
                                        
                                                        <div class="widget-49-date-warning"> 
                                                            <span class="widget-49-date-day">${loop.index + 1}</span> 
                                                        </div>
                                                        </c:if>
                                                        <c:if test = "${booking.accept_status==1 && booking.payment_status==0}">
                                                       
                                                        <div class="widget-49-date-primary"> 
                                                            <span class="widget-49-date-day">${loop.index + 1}</span> 
                                                        </div>
                                                        </c:if>
                                                        <c:if test = "${booking.accept_status==1 && booking.payment_status==1}">
                                                            <div class="widget-49-date-success"> 
                                                                <span class="widget-49-date-day">${loop.index + 1}</span> 
                                                            </div>
                                                     
                                                        </c:if>
                                                        <c:if test = "${booking.accept_status==2 && booking.payment_status==0}">
                                                            <div class="widget-49-date-secondary"> 
                                                                <span class="widget-49-date-day">${loop.index + 1}</span> 
                                                            </div>
                                                       
                                                        </c:if>
                                                        <c:if test = "${booking.accept_status==3 && booking.payment_status==0}">
                                                            <div class="widget-49-date-secondary"> 
                                                                <span class="widget-49-date-day">${loop.index + 1}</span> 
                                                            </div>
                                                       
                                                        </c:if>
                                                        
                                                    
                                                <div class="widget-49-meeting-info">
                                                    <span class="font-weight-bold text-uppercase">${booking.hotel.hotelName}</span> 
                                                    <span class="widget-49-meeting-time text-uppercase">${booking.event.eventname}</span>
                                                    <span class="widget-49-meeting-time" id="b_date">Booked Date : ${booking.current_date}</span>
                                                </div>
                                            </div>
                                            <ul class="widget-49-meeting-points">
                                                <li class="widget-49-meeting-item"><span class="font-weight-bold ">food name : ${booking.catering.catername}</span></li>
                                                <!-- <li class="widget-49-meeting-item"><span class="font-weight-bold ">Event Date : ${booking.event_date}</span></li>-->
                                                <!-- <li class="widget-49-meeting-item"><span class="font-weight-bold ">Event Time : ${booking.start_at}</span></li>  -->
                                                <li class="widget-49-meeting-item"><span class="font-weight-bold ">appointment Timing : ${booking.max_total_hour} </span></li>
                                                <!-- <li class="widget-49-meeting-item"><span class="font-weight-bold ">No of Guest : ${booking.no_of_guest}</span></li> -->
                                                
                                            </ul>
                                            
                                                <div class="time">
                                                   
                                                    <c:if test = "${booking.accept_status==0  && booking.payment_status==0}">
                                                        <form action="/bookcancelbyuser" method="POST">
                                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                            <input type="hidden" value="${booking.id}" name="booking_id">
                                                            <button type="submit" class="btn btn-danger btn-sm ml-3" onclick='returncancelBooking()'>Cancel</button>
                                                        </form>
                                                       
                                                    </c:if>
                                                    <c:if test = "${booking.accept_status==1 && booking.payment_status==0}">
                                                        <div class="d-flex">
                                                             <form action="/paytmuser"  method="POST">
                                                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                                <input type="hidden" value="${User_id}" name="booking_userid">
                                                                  <input type="hidden" value="${booking.amount}" name="total_amt">
             														  <input type="hidden" value="${booking.id}" name="booking_id">
             													
                                                                <button type="submit" value="Continue to checkout" class="btn btn-primary btn-sm">Pay</button>
                                                            </form>
                                                            <form action="/bookcancelbyuser" method="POST" class="ml-3">
                                                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                                <input type="hidden" value="${booking.id}" name="booking_id">
                                                                <button type="submit" class="btn btn-danger btn-sm">Cancel</button>
                                                            </form>
                                                        </div>
                                                    </c:if>
                                                    <c:if test = "${booking.accept_status==1 && booking.payment_status==1}">
                                                         <form action="userbookingdetails/export" method="GET">
                                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                            <input type="hidden" value="${booking.id}" name="booking_id">
                                                            <button type="submit" class="btn btn-info btn-sm">Bill</button>
                                                        </form>
                                                    </c:if>
                                                    <c:if test = "${booking.accept_status==2 && booking.payment_status==0}">
                                                        <h5 class="card-title"></h5>
                                                    </c:if>
                                                    <c:if test = "${booking.accept_status==3 && booking.payment_status==0}">
                                                        <h5 class="card-title"></h5>
                                                    </c:if>
                                                </div>
                                            </form> 	  
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
        
        
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>   
 <script>
     function removeBookingCard(ele){
	
	var id = ele.name;
	console.log(id);

	var cater_name="";
	$.ajax({
			type: "GET",
			url: "/userbookingcancel/"+id, 
           
			success: function(){      
				alert("booking removed");
			}
	});

    var element = document.getElementById(id);
    console.log(id+" "+element);
element.parentNode.removeChild(element);

	

}

 </script>  
<jsp:include page="includes/footer.jsp" />  

<%}%>
