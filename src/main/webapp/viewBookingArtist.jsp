<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.domain.BookingArtist" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Njumanjie Entertainment</title>
   <!-- Bootstrap CSS -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
   <!-- Font Awesome CSS -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
   <style>
       body {
           font-family: Arial, sans-serif;
           background-color: #f8f9fa; /* Light gray background */
           color: #333; /* Dark text color */
           padding-top: 50px; /* Top padding for fixed navbar */
       }
	   .container {
	           width: 100%;
	           padding-right: 15px;
	           padding-left: 15px;
	           margin-right: auto;
	           margin-left: auto;
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
	
	       .container img {
	           max-width: 200px; /* Set the maximum width of the image */
	           height: auto; /* Maintain aspect ratio */
	           display: block; /* Ensure the image is centered */
	           margin: 0 auto; /* Center the image horizontally */
	       }

       .centered-th {
           text-align: center;
       }

	   a{
		text-decoration: none;
	   }

       #con{

          border-radius: 5px;
          margin-left: 2px;

       }
   </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
   <div class="container">
       <a class="navbar-brand" href="#">
           <img src="/images/NJUMANJIE ENTERTAINMENT (White) .png" alt="Image Here">
       </a>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
           <ul class="navbar-nav">
               <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="siteDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                       Site
                   </a>
                   <ul class="dropdown-menu" aria-labelledby="siteDropdown">
                       <li><a class="dropdown-item" href="/">Home</a></li>
                       <li><a class="dropdown-item" href="./about_page">About</a></li>
                       <li><a class="dropdown-item" href="./music_page">Music</a></li>
                       <li><a class="dropdown-item" href="./artist_page">Artists</a></li>
                       <li><a class="dropdown-item" href="#">Services</a></li>
                       <li><a class="dropdown-item" href="#">Contacts</a></li>
                   </ul>
               </li>
               <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="manageDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                       Manage Site
                   </a>
                   <ul class="dropdown-menu" aria-labelledby="manageDropdown">
                    <li><a class="dropdown-item" href="./music_manage">Music</a></li>
                    <li><a class="dropdown-item" href="./artist_manage">Artist</a></li>
                    <li><a class="dropdown-item" href="./video_manage">Videos</a></li>
                    <li><a class="dropdown-item" href="./photo_manage">Gallery</a></li>
                    <li><a class="dropdown-item" href="/viewBookings">Booking Artist</a></li>
                    <li><a class="dropdown-item" href="/uploadBooking">Update Book Artist</a></li>
                    <li><a class="dropdown-item" href="./view_demo_submission">Demo Submissions</a></li>
 
                </ul>
               </li>
          
           </ul>
       </div>
   </div>
</nav>

<!-- Main content -->
<div class="container mt-5">
    <h2 class="section-heading text-center mb-4">Bookings</h2>
    <table class="table">
        <tbody>
            <%
                List<BookingArtist> demo = (List<BookingArtist>) request.getAttribute("bookings");
    
					if (demo != null && !demo.isEmpty()) {
                    int count = 0;
                    for (BookingArtist dm : demo) {

                        Date date = new Date();
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        String dateString = sdf.format(dm.getDate());

                        String substring2 = dateString.substring(0,10);
                        String name =  dm.getName();
                        String startTime = dm.getStartTime();
                        String endTime = dm.getEndTime();

                        if (count % 4 == 0) { %>
                            <tr>
                        <% } %>
                        <td>
                            Name: <b><%= name %></b> <br>
                           
                            Venue: <b><%= dm.getVenue() %></b> <br>
                            Cell Number: <b><%= dm.getTel() %></b> <br>
                            Email: <b><a href="mailto:<%= dm.getEmail() %>"><%= dm.getEmail() %></a></b><br>
                            Date: <b><%= substring2 %></b> <br>
                            Start Time : <b><%= startTime %></b> <br>
                            End Time : <b><%= endTime %></b> <br>
                            <form action="/confirmBooking" method="post">
                                <input type="hidden" name="name" value="<%=name%>" />
                                <input type="hidden" name="date" value="<%=substring2%>" />
                                <input type="hidden" name="startTime" value="<%=startTime%>" />
                                <input type="hidden" name="endTime" value="<%=endTime%>" />
                                <input type="submit" value="Confirm" id="con"/>
                         </form>
                            
                        </td>
                        <% 
                            if (count % 4 == 3 || count == demo.size() - 1) { %>
                                </tr>
                            <% } 
                            count++;
                    }
                } else { 
            %>
            <tr>
                <td colspan="4" class="text-center">No Bookings Yet..</td>
            </tr>
            <% } %>
        </tbody>
    </table>


    

</div>

<!-- Bootstrap JS (optional for certain components) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
