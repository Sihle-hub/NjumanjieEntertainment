<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.domain.Booking" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Njumanjie Enternmaint</title>
    <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	
    <style>

		body {
		    font-family: Arial, sans-serif;
		    color: #333; /* Dark text color */
		    padding-top: 50px; /* Top padding for fixed navbar */
		    /* Background image */
		    background-image: url('/images/NE  2.PNG');
		    /* Specify background image behavior */
		    background-size: cover; /* Cover the entire element */
		    background-repeat: no-repeat; /* Do not repeat the image */
		    background-position: center; /* Center the image */
		}
		
		.container {
    width: 90%; /* Instead of fixed width, use a percentage */
    max-width: 1200px; /* Limit the maximum width for larger screens */
    margin: 0 auto; /* Center the container horizontally */
}
		/* Adjust font sizes based on screen size */
@media screen and (max-width: 768px) {
    body {
        font-size: 16px; /* Adjust as needed for smaller screens */
    }
    .section-heading {
        font-size: 20px; /* Decrease font size for smaller screens */
    }
}

/* Adjust image sizes for different screen sizes */
.image-container img {
    max-width: 100%; /* Make images responsive */
    height: auto;
}

/* Adjust padding and margins for smaller screens */
@media screen and (max-width: 576px) {
    .container {
        padding: 0 10px; /* Decrease padding for smaller screens */
    }
    .btn-book {
        text-align: center; /* Center the button on smaller screens */
        margin-right: 0; /* Remove right margin */
    }
}

        .section-heading {
            font-size: 24px;
            font-weight: bold;
            color: #007bff; /* Blue color for section heading */
            margin-bottom: 20px;
        }

        .about-text {
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .highlight-text {
            color: #28a745; /* Green color for highlighted text */
            font-weight: bold;
        }
		.container img{
			     max-width: 200px; /* Set the maximum width of the image */
			     height: auto; /* Maintain aspect ratio */
			     display: block; /* Ensure the image is centered */
			     margin: 0 auto; /* Center the image horizontally */
		}
		.image-container {
			height: 350px; 
			display: flex;
			justify-content: space-between;
			margin-bottom: 10px;
		}

        .image-container img{
			
			max-width: 1000%; /* Set the maximum width of the image */
		    height: 350px; /* Maintain aspect ratio */
		    display: block; /* Ensure the image is centered */
		    margin: 0 auto; /* Center the image horizontally */
				
			
		}
		
		.flip-card-front img {
		    width: 60%;
		    height: 50%;
		    object-fit: contain; /* Ensure the image fits inside the container */
		}
		
		P{
			
			font-size: 20px;
			}
		
			
			.icons-icons {
			    display: flex; /* Set display to flex */
			   /* justify-content: flex-start; /* Align items from left to right */
				justify-content: center;
			}
			
			.artist-link {
					display: flex; /* Use flexbox for alignment */
					flex-direction: column; /* Arrange items in a column */
					align-items: center; /* Center horizontally */
					text-decoration: none; /* Remove underline */
					background-color: #f0f0f0; /* Gray background color */
					padding: 10px; /* Padding around the icon and text */
					border-radius: 9px; /* Rounded corners */
					margin-right: 10px; /* Add margin between items */
					width: 100%; /* Set width to 100% */
					max-width: 150px; /* Set maximum width for better responsiveness */
					height: 20%;
					
				}

				.artist-link a{
					text-decoration: none;
				}

			.carousel-item img {
			    width: 100%;
			    height: 100%;
			    object-fit: cover; /* Maintain aspect ratio and cover entire container */
			}
			.links{
				justify-content: center;
				color: #007bff;
				
			}
			
		
			.blue-icon {
			    color: #333; /* Default color */
			    transition: color 0.3s; /* Smooth transition */
			}
			
			/* Change color on hover */
			.artist-link:hover .blue-icon {
			    color: #007bff; /* Blue color */
			}

			.contact-section {
					background-color: #333;
					display: flex;
					justify-content: center;
					align-items: center;
					width: 100%; /* Set width to 100% */
					height: 10vh; /* Set desired height */
					color: white;
					margin: 0; /* Reset margins */
				}


			.contact-header {
			    color: #007bff; /* Blue header color */
				margin-top: 3px;
				font-size: 20px;
			}
			
			.contact-section .text-center {
			    text-align: center;
			}
			
			.icon-links {
			    display: flex;
			    justify-content: space-between; /* Align items from left to right */
			    align-items: center;
			}
			
			.icon-links a {
			    margin-right: 20px; /* Add right margin to create space between icons */
			}
			
			.carousel-item img {
			    max-width: 80%; /* Set maximum width to 100% */
				max-height: 450px; /* Set maximum height */
			    height: auto; /* Maintain aspect ratio */
			    object-fit: cover; /* Cover the entire container */
			}

			.btn-book {
			  
			    color: white; /* White text color */
			    text-align: center; /* Align to the right */
			    padding: 10px 20px; /* Add padding */
			    border-radius: 15px; /* Add border radius for rounded corners */
			    margin-right: 20px; /* Align right with 20 pixels margin */
			}
			
			.btn-book button {
				background-color: #007bff; /* Blue background color */
			    border: none; /* Remove button border */
			    cursor: pointer; /* Add pointer cursor on hover */
				border-radius: 15px; /* Add border radius for rounded corners */
				width: 130px; /* Set the width of the button */
				color: white;
			}
			
    </style>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
		<img src="/images/NJUMANJIE ENTERTAINMENT (White) .png" alt="Image Here">
      <!--  <a class="navbar-brand" href="#">Arifarane</a> -->
	  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="./">Home</a>
                </li>
				<li class="nav-item">
				   <a class="nav-link" href="./about_page">About</a>
				</li>
                <li class="nav-item">
                    <a class="nav-link" href="./getting_music">Music</a>
                </li>
				<li class="nav-item">
				  <a class="nav-link" href="./getting_artist">Artist</a>
				</li>
				<li class="nav-item">
				   <a class="nav-link" href="/demo-submission">Demo Submission</a>
				</li>
				<li class="nav-item">
				   <a class="nav-link" href="#">Services</a>
				</li>

				<li class="nav-item">
				   <a class="nav-link" href="#">Contacts</a>
				</li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main content -->
<div class="container">
    <div class="mt-5">

	<div>
	    
		<div id="carouselExampleIndicators" class="carousel carousel-dark slide" data-bs-ride="carousel" data-interval="2000"> <!-- Added data-interval for automatic sliding every 2 seconds -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/images/NE 1.png" class="d-block w-100" alt="Pictures Here">
					<div class="carousel-caption d-none d-md-block">
						<!-- Caption content here -->
					</div>
				</div>
				<div class="carousel-item">
					<img src="/images/NE 1.png" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<!-- Caption content here -->
					</div>
				</div>
				<div class="carousel-item">
					<img src="/images/NE 1.png" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<!-- Caption content here -->
					</div>
				</div>
			</div>
		</div>
	       <p>
			Shaping the culture, one hit at a time!
			At Njumanjie Entertainment we understand that is not only about making music, 
			but also about shaping the culture and contributing to the industry. 
			The label is dedicated to producing hit songs that will have a lasting impact,
			 because we are not content with just releasing music, but we want to make a difference.
			  That is why we are more focused on "Shaping the culture one hit at a time
		   </p>
		   <br>
		      <h3 align="center" class="links">LINKS</h3>
			  <br>
		   <div class="icons-icons">
			
			
			<div class="artist-link">
				    <a href="./getting_artist"> <i class="fas fa-users fa-3x blue-icon"></i> <!-- Font Awesome user icon -->
				      <span class="artist-text"><br>ARTIST</span>
					  </a>  
				   </div>
				   <div class="artist-link">
				    <a href="/getting_videos"><i class="fab fa-youtube fa-3x blue-icon"></i> <!-- Font Awesome user icon -->
				      <span class="artist-text"><br>VIDEOS</span>
					 </a> 
				   </div> 
				   <div class="artist-link">
				   	 <a href="/gallery"><i class="fas fa-images fa-3x blue-icon"></i> <!-- Font Awesome user icon -->
				   	      <span class="artist-text"><br>GALLERY</span>
						  </a>
				   	   </div> 
				   	   
				   	 <div class="artist-link">
				   	   <a href="/confirmedBookings">&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-calendar-alt fa-3x blue-icon"></i> 
				   	      <span class="artist-text"><br>BOOKINGS</span>
						  </a> 
				   	   </div>  
		   </div>
		   
		   <br>

		   
           <div id="carouselExampleIndicators" class="carousel carousel-dark slide" data-bs-ride="carousel" data-bs-interval="2000"> <!-- Changed data-bs-ride to "carousel" and added data-bs-interval for automatic sliding every 2 seconds -->
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<% 
				   List<Booking> artistImages = (List<Booking>) request.getAttribute("images");
				   if (artistImages != null && !artistImages.isEmpty()) {
						 
						   String image1 = java.util.Base64.getEncoder().encodeToString(artistImages.get(0).getPhoto());
						   String name1 = artistImages.get(0).getName();
						  
		
						   String image2 = java.util.Base64.getEncoder().encodeToString(artistImages.get(1).getPhoto());
						   String name2 = artistImages.get(1).getName();
						   
		
						   String image3 = java.util.Base64.getEncoder().encodeToString(artistImages.get(2).getPhoto());
						   String name3 =  artistImages.get(2).getName();
						  
		
		
				  %>
		
				<div class="carousel-item active">
					<img src="data:image:png;base64, <%=image1%>" height="450" width="100" class="d-block w-100" alt="Pictures Here">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="text-red"><%=name1%></h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="data:image:png;base64, <%=image2%>" height="450" width="100" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="text-red"><%=name2%></h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="data:image:png;base64, <%=image3%>" height="450" width="100" class="d-block w-100 " alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="text-red"><%=name3%></h5>
					</div>
				</div>
				<% 
			   } else { 
		   %>   <div class="col">
			   <p>No artist yet..</p>
		   </div>
		   <% } %>
			</div>
		</div>
		

		   
		   <div class="btn-book">
			
			  <a href="/book_artist"><button>BOOK ARTIST</button></a>
			  
		   </div>
		   
		   
		   <br>	   
		   <div class="container contact-section">
		       <div class="mt-3 text-center">
		           <h3 align="center" class="contact-header">Contact us</h3>
		           <div class="icon-links">
		               <a href="mailto:sihlesithole810@gmail.com"><i class="fas fa-envelope"></i></a>
		               <a href="tel:+27797565214"><i class="fas fa-phone"></i></a>
		               <a href="#" target="_blank"><i class="fab fa-facebook"></i></a>
		               <a href="#" target="_blank"><i class="fab fa-whatsapp"></i></a>
		               <a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
		           </div>
		       </div>
		   </div>


	</div>
</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>	

<!-- JavaScript for flipping images -->
<script>

document.addEventListener('DOMContentLoaded', function() {
        var myCarousel = document.querySelector('#carouselExampleIndicators');
        var carousel = new bootstrap.Carousel(myCarousel, {
            interval: 2000, // Slide every 2 seconds
            controls: false, // Hide the control buttons
            pause: 'hover' // Pause on mouse hover
        });
    });


    var currentImage = 1;

    function toggleFlip(imageNumber) {
        // Hide the currently visible image
        document.getElementById("image" + currentImage).style.display = "none";
        
        // Show the clicked image
        document.getElementById("image" + imageNumber).style.display = "block";

        currentImage = imageNumber;
    }

    setInterval(function() {
        var nextImage = (currentImage % 3) + 1;
        toggleFlip(nextImage);
    }, 3000); // Change image every 3 seconds


</script>
</body>
</html>
