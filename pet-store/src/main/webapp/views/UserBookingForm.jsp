<%if (session.getAttribute("User_email") == null) {
	response.sendRedirect("/signin");
} else {%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/header.jsp" />  

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
				<h3 class="text-info">Book your pets and more...</h3>
			</div>
			<div>
				<p>Welcome 
				
				
			</div>
		</div>
	</nav>

<div>
	   

   
<section class="container ">
  <div class="container">
		<div class="row align-items-center my-5">
				

				<!-- Booking Form -->
				<div class="col-md-12 ">
				   <form action="/makeBookingForm" modelAttribute="makeBookingForm" method="POST">
						   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<input type="hidden" name="user_id" value="${User_id}"/>
						<input type="hidden" name="current_date" id="current_date" value=""/>
						<div class="row">
							<!-- First Name -->
							
								<div class="col-lg-5 col-md-5 col-sm-12 mb-2 ml-3">
									<div class="form-group">
										<label for="exampleInputEmail1">Email address</label>
										<input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" value="${User_email}" readonly/>
										<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
									  </div>
								</div>

								<div class="col-lg-5 col-md-5 col-sm-12 mb-2 ml-3">
									<div class="form-group">
										<label for="exampleInputPassword1">Phone Number</label>
										<input type="tel" class="form-control" id="contactno" name="contactno" placeholder="phoneNumber" value="${User_phone}" readonly>
									  </div>
								</div>
								
								

								
								<div class="col-lg-10 col-md-10 col-sm-12 mb-2 ml-2">
									<div class="form-group">
										<label for="exampleInputPassword1">Select pet</label>
										<!-- event is equal to pet selection -->
										<select id="event_book" name="event_id" class="form-control" required>
											<option value="">Choose the pet</option>
											<c:forEach var="petdata" items="${event_for_booking}" >
												<option id="${petdata.id}" value="${petdata.id}">${petdata.eventname}  </option>
											</c:forEach>
											
										</select>
									</div>
								</div> 

								<div class="col-lg-5 col-md-5 col-sm-12 mb-2 ml-3">
									<div class="form-group">
										<label for="exampleInputPassword1">Select store</label>
										<select id="hotel_book" name="hotel_id" class="form-control" required>
											<!-- hotel is equal to store -->
											<option value="">Choose the store</option>
											<c:forEach var="hotelData" items="${hotel_for_booking}" >
												<option id="${hotelData.id}" value="${hotelData.id}">${hotelData.hotelName}  </option>
											</c:forEach>
										</select>
									</div>
								</div>
								
	
								<div class="col-lg-5 col-md-5 col-sm-12 mb-2 ml-3">
									<div class="form-group">
										<label for="exampleInputPassword1">Select food</label>
										<select id="catering_book" name="catering_id" class="form-control" required>
											<!-- catering is equal food -->
											<option value="">Choose the food</option>
											<c:forEach var="caterData" items="${catering_for_booking}">
												<option id="${caterData.id}" value="${caterData.id}">${caterData.catername} - Per pet Rs.${caterData.cater_price}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								
								
								<div class="col-lg-5 col-md-5 col-sm-5 mb-2 ml-3">
									<div class="form-group">
										<label for="exampleInputPassword1">Select appointment Timing</label>
										<select id="event_maxhour" name="max_total_hour" class="form-control" required>
											<option value="">Choose the appointment Timing</option>
											<option value="10">10:00 am</option>
											<option value="11">11:00 am</option>
											<option value="12">12:00 pm</option>
											<option value="1">1:00 pm</option>
											<option value="2">2:00 pm</option>
											<option value="3">3:00 pm</option>
											<option value="4">4:00 pm</option>
											<option value="5">5:00 pm</option>
											<option value="6">6:00 pm</option>
											<option value="7">7:00 pm</option>
											<option value="8">8:00 pm</option>
											<!-- <option value="24">24hours</option> -->
										</select>
									</div>
								</div>
								
								

								<div class="col-lg-12 col-md-12 col-sm-12 mb-2 ml-5 align-items-center>
									<h1 class="text-muted">INVOICE</h1>
									<p class="text-muted">food Price - ><span id="catering_price"></span> <span id="guest"></span>   <span id="total_amt_hotel"></span></p>
									<p class="text-muted">pet Price - >   <span id="hours"></span> <span id="hotel_price"></span> <span id="total_amt_cater"></span></p>
									<p class="text-muted">appointment fees - > 100</p>
								</div>
								<div class="form-group col-lg-5 mx-auto mb-0 align-items-center">
									
										<span class="btn btn-info btn-block py-2" class="font-weight-bold" name="Calculate" onclick="calc();">Calculate Amount</span>
									
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 mb-2">
									<div class="form-group">
										<label for="exampleInputPassword1">Total Amount</label>
										<input type="text" class="form-control" id="amt" name="amount" value="0" placeholder="Amount" value="" readonly>
									  </div>
								</div>
			
							<!-- Submit Button -->
							<div class="form-group col-lg-12 mx-auto mb-0">
								<button type="submit" class="btn btn-info btn-block py-2" name="adduser" onclick="returncalc();">
									<span class="font-weight-bold">Book your appointment</span>
								</button>
							</div>
					</div>
			 </form>
			</div>
		</div>
	</div>

</section>
	   
</div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
var today = new Date();
var dd = String(today.getDate()).padStart(2, '0');
var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
var yyyy = today.getFullYear();

today = dd + '/' + mm + '/' + yyyy;
// document.write(today);
document.getElementById("current_date").value=today;

$('#hotel_book').change(testMessage);
$('#catering_book').change(testMessage2);
$('#event_book').change(textMessage3);
$('#photo_book').change(textMessage5);
$('#dj_book').change(textMessage6);
$('#makeup_book').change(textMessage7);
$('#decorator_book').change(textMessage8);

$("#no_of_guest").on('input',textMessage4);
$('#event_book').change(testMessage9);


var hotel_amt=0,catering_amt=0,vendor_amt=0,no_of_guest=1,no_of_hours=1,photo=0,makup=0,dj=0,deco=0;

function testMessage(){
	
	var id = $(this).children(":selected").attr("id");
	console.log(id);
	var hotel_name="";
	$.ajax({
			type: "GET",
			url: "${pageContext.request.contextPath}/hotelbookfind/"+id, //this is my servlet
			data: "input=" +$('#ip1').val()+"&output="+$('#op1').val(),
			success: function(hotel){      
				  //var result=$('#amt').val(hotel.price);
				// hotel_amt=hotel.price;
				hotel_name=hotel.hotelName;
				// alert(hotel_amt);
				// $('#hotel_price').text(hotel_amt);
			//console.log(url);
				
			}
	});

	var e_date=$("#event_date").val();
	$.ajax({
		type:"GET",
		url: "${pageContext.request.contextPath}/hotelbookingfind/"+id, //this is my servlet
		data: "input=" +$('#ip15').val()+"&output="+$('#op15').val(),
		success: function(book){
			console.log(e_date)
		      
			for(let i=0;i<book.length;i++){
					console.log(book[i].event_date);
					if(e_date==book[i].event_date){
						swal("Alert!", "The Hotel "+hotel_name+" is already booked at the date "+e_date+" Please choose other hotel !", "error");
						$("#hotel_book").val("");
					}
			}
		}
	});
}
function testMessage2(){
	
	var id = $(this).children(":selected").attr("id");
	console.log(id);

	var cater_name="";
	$.ajax({
			type: "GET",
			url: "${pageContext.request.contextPath}/cateringbookfind/"+id, //this is my servlet
			data: "input=" +$('#ip2').val()+"&output="+$('#op2').val(),
			success: function(cater){      
				//  $('#amt').val(cater.price);
				  catering_amt=cater.cater_price;
					// alert(catering_amt);
					cater_name=cater.catername;
				  $('#catering_price').text(catering_amt)
				  
				//   $('#amt').val(result);
			}
	});


	var e_date=$("#event_date").val();
	$.ajax({
		type:"GET",
		url: "${pageContext.request.contextPath}/cateringbookingfind/"+id, //this is my servlet
		data: "input=" +$('#ip16').val()+"&output="+$('#op16').val(),
		success: function(book){
			console.log(e_date)
		      
			for(let i=0;i<book.length;i++){
					console.log(book[i].event_date);
					if(e_date==book[i].event_date){
						swal("Alert!", "The Catering "+cater_name+" is already booked at the date "+e_date+" Please choose other Catering", "error");
						$("#catering_book").val("");
					}
			}
		}
	});

}

function textMessage3(){
	no_of_hours = $(this).children(":selected").val();
	// alert(no_of_hours);
	$("#hours").text(no_of_hours);
	
}

function textMessage4(){
	no_of_guest = $("#no_of_guest").val();
	$("#guest").text(' X '+no_of_guest);
}


function textMessage5(){
	
	var id = $(this).children(":selected").attr("id");
	console.log(id);
	var photo_name="";
	if(id=="photo_none"){
		photo=0;
		$('#photo_price').text(photo);
	}	else{	
		$.ajax({
				type: "GET",
				url: "${pageContext.request.contextPath}/vendorbookfind/"+id, //this is my servlet
				data: "input=" +$('#ip3').val()+"&output="+$('#op3').val(),
				success: function(Photographer){      
					photo=Photographer.vendor_price;
					// alert(photo);
					photo_name=Photographer.vendor_name;
					$('#photo_price').text(photo);
					//  $('#amt').val(cater.price);
					//   catering_amt=cater.cater_price;
						// alert(catering_amt);
					//   $('#catering_price').text(catering_amt)
					
					//   $('#amt').val(result);
				}
		});

		var e_date=$("#event_date").val();
		var photo_name_id=$("#"+id+"").val();
		$.ajax({
			type:"GET",
			url: "${pageContext.request.contextPath}/photobookingfind/"+photo_name_id, //this is my servlet
			data: "input=" +$('#ip17').val()+"&output="+$('#op17').val(),
			success: function(photobook){
				console.log(e_date)
				// console.log(photobook)
				for(let i=0;i<photobook.length;i++){
					console.log(photobook[i].event_date);
					if(e_date==photobook[i].event_date){
						swal("Alert!", "The Vendor  "+photo_name_id+" is already have an appointment at the date "+e_date+" Please choose other PhotoGrapher", "error");
						$("#photo_book").val("");
					}
			}
			}
		});


	}
}
function textMessage6(){
	
	var id = $(this).children(":selected").attr("id");
	console.log(id);

	if(id=="dj_none"){
		dj=0;
		$('#dj_price').text(' + '+dj);
	}else{
		$.ajax({
				type: "GET",
				url: "${pageContext.request.contextPath}/vendorbookfind/"+id, //this is my servlet
				data: "input=" +$('#ip4').val()+"&output="+$('#op4').val(),
				success: function(d_j){      
					dj=d_j.vendor_price;
					// alert(dj);
					$('#dj_price').text(' + '+dj);
				}
		});

		var e_date=$("#event_date").val();
		var dj_name_id=$("#"+id+"").val();
		$.ajax({
			type:"GET",
			url: "${pageContext.request.contextPath}/djbookingfind/"+dj_name_id, //this is my servlet
			data: "input=" +$('#ip18').val()+"&output="+$('#op18').val(),
			success: function(djbook){
				console.log(e_date)
				// console.log(photobook)
				for(let i=0;i<djbook.length;i++){
					console.log(djbook[i].event_date);
					if(e_date==djbook[i].event_date){
						swal("Alert!", "The Vendor  "+dj_name_id+" is already have an appointment at the date "+e_date+" Please choose other Disc Jockey", "error");
						$("#dj_book").val("");
					}
			}
			}
		});
	}
	
}

function textMessage7(){
	
	var id = $(this).children(":selected").attr("id");
	console.log(id);

	if(id=="makeup_none"){
		makeup=0;
		$('#makeup_price').text(' + '+makeup);
	}
	else{
		$.ajax({
			type: "GET",
			url: "${pageContext.request.contextPath}/vendorbookfind/"+id, //this is my servlet
			data: "input=" +$('#ip2').val()+"&output="+$('#op2').val(),
			success: function(makeup_art){      
				makeup=makeup_art.vendor_price;
				// alert(makeup);
				$('#makeup_price').text(' + '+makeup);
			}
	});


	var e_date=$("#event_date").val();
		var makeup_name_id=$("#"+id+"").val();
		$.ajax({
			type:"GET",
			url: "${pageContext.request.contextPath}/makeupbookingfind/"+makeup_name_id, //this is my servlet
			data: "input=" +$('#ip18').val()+"&output="+$('#op18').val(),
			success: function(makeupbook){
				console.log(e_date)
				// console.log(photobook)
				for(let i=0;i<makeupbook.length;i++){
					console.log(makeupbook[i].event_date);
					if(e_date==makeupbook[i].event_date){
						swal("Alert!", "The Vendor  "+makeup_name_id+" is already have an appointment at the date "+e_date+" Please choose other MakeupArtist", "error");
						$("#makeup_book").val("");
					}
			}
			}
		});
	}
	
}
function textMessage8(){
	
	var id = $(this).children(":selected").attr("id");
	console.log(id);
	if(id=="decorator_none"){
		deco=0;
		$('#deco_price').text(' + '+deco);
	}
	else{
		$.ajax({
			type: "GET",
			url: "${pageContext.request.contextPath}/vendorbookfind/"+id, //this is my servlet
			data: "input=" +$('#ip2').val()+"&output="+$('#op2').val(),
			success: function(decorator){      
				deco=decorator.vendor_price;
				// alert(deco);
				$('#deco_price').text(' + '+deco);
			}
	});
	

	var e_date=$("#event_date").val();
		var deco_name_id=$("#"+id+"").val();
		$.ajax({
			type:"GET",
			url: "${pageContext.request.contextPath}/decoratorbookingfind/"+deco_name_id, //this is my servlet
			data: "input=" +$('#ip19').val()+"&output="+$('#op19').val(),
			success: function(decobook){
				console.log(e_date)
				// console.log(photobook)
				for(let i=0;i<decobook.length;i++){
					console.log(decobook[i].event_date);
					if(e_date==decobook[i].event_date){
						swal("Alert!", "The Vendor  "+deco_name_id+" is already have an appointment at the date "+e_date+" Please choose other Decorator", "error");
						$("#decorator_book").val("");
					}
			}
			}
		});
	}
}

var event_amt=0;
	function testMessage9(){
	
	var id = $(this).children(":selected").attr("id");
	console.log(id);

	var event_name="";
	
	$.ajax({
			type: "GET",
			url: "${pageContext.request.contextPath}/eventbookfind/"+id, //this is my servlet
			data: "input=" +$('#ip2').val()+"&output="+$('#op2').val(),
			success: function(cater){      
				//  $('#amt').val(cater.price);
				  event_amt=cater.event_price;
					// alert(catering_amt);
					event_name=cater.eventname;
				  $('#hours').text(event_amt)
				  
				//   $('#amt').val(result);
			}

	});
	}

function calc(){
	var event_price=event_amt;
	var cater_price=catering_amt;
	
	var appointment_fees=100;
	var result=cater_price+event_price+appointment_fees;


	$('#amt').val(result);
}

function validatedate(){    
	

    today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //As January is 0.
    var yy = today.getFullYear();

    var  e = document.getElementById('event_date');
    
	var  dateformat = e.value.split('-');
    var  cin=dateformat[2];
    var  cinmonth=dateformat[1];
    var  cinyear=dateformat[0];
    if (yy==cinyear && mm==cinmonth && dd<=cin) { 
   		return true;
		   
    }
    else if(yy<cinyear){
        return true;
		
    }
    else if(mm<cinmonth && yy<=cinyear){
        return true;
		
    }
    
    else {    
		alert("Please select valid appointment date from today");
		e.value ='';
    }    
	
}


</script>
<jsp:include page="includes/footer.jsp" /> 

<%}%>