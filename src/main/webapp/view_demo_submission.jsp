<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.domain.DemoSubmission" %>
<%@ page import="java.util.List" %>
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
    <h2 class="section-heading text-center mb-4">Demo Submissions</h2>
    <table class="table">
        <tbody>
            <%
                List<DemoSubmission> demo = (List<DemoSubmission>) request.getAttribute("demo");
                
				   String link1 , link2 , link3 , sLink , aLink , yLink , auLink;
				
				
					if (demo != null && !demo.isEmpty()) {
                    int count = 0;
                    for (DemoSubmission dm : demo) {

						link1 = dm.getLink1();
						link2 = dm.getLink2();
						link3 = dm.getLink3();
						aLink = dm.getaLink();
						sLink = dm.getsLink();
						yLink = dm.getyLink();
						auLink = dm.getAuLink();
      
                        if (count % 4 == 0) { %>
                            <tr>
                        <% } %>
                        <td>
                            Name: <b><%= dm.getName() %></b> <br>
                            Surname: <b><%= dm.getSurname() %></b> <br>
                            Cell Number: <b><%= dm.getCellNumber() %></b> <br>
                            Email: <b><%= dm.getEmail() %></b> <br>
                            Social Media Links: <br>
                            <ul>
                                <li>Link1 : <a href="<%=link1%>" target="_blank"> <%=link1%></a></li>
                                <li>Link2 : <a href="<%=link2%>" target="_blank"> <%=link2%></a></li>
                            </ul> 
                            Other Links: <br>
                            <ul>
                                <li>Downloadable music / unreleased : <a href="<%=link3%>" target="_blank"> <%=link3%></a></li>
                                <li>Spotify : <a href="<%=sLink%>" target="_blank"><%=sLink%></a> </li>
                                <li>Apple Music : <a href="<%=aLink%>" target="_blank"> <%=aLink%></a></li>
                                <li>Youtube : <a href="<%=yLink%>" target="_blank"> <%=yLink%></a></li>
                                <li>Audiomack : <a href="<%=auLink%>" target="_blank"> <%=auLink%></a></li>
                            </ul> <br>
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
                <td colspan="4" class="text-center">No Demo Submission Yet..</td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS (optional for certain components) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
