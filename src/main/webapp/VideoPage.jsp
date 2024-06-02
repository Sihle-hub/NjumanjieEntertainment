<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.domain.Videos" %>
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

       .artist-container {
            position: relative;
            padding-bottom: 100%; /* 4:3 aspect ratio */
            height: 0;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
       }

       .artist-container:hover {
            transform: scale(1.05); /* Enlarge on hover */
       }

       .video-player {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border-radius: 10px;
       }

       .video-player video {
            border-radius: 10px;
       }

       .section-heading {
            color: #333;
            font-weight: bold;
            text-align: left;
       }

       .no-videos {
            font-size: 1.2rem;
            color: #777;
            text-align: center;
            margin-top: 50px;
       }

       /* Add margin between rows */
       .row {
           margin-bottom: 20px;
       }

       .container img{
		
        max-width: 200px; /* Set the maximum width of the image */
        height: auto; /* Maintain aspect ratio */
        display: block; /* Ensure the image is centered */
        margin: 0 auto; /* Center the image horizontally */
   
}


   </style>
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
<!-- Video Playlist -->
<div class="container mt-5">
    <h2 class="section-heading mb-4">Video Playlist</h2>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        <% 
            List<Videos> musicList = (List<Videos>) request.getAttribute("playlist");
            if (musicList != null && !musicList.isEmpty()) {
                for (Videos trackList : musicList) {
                    byte[] musicBytes = trackList.getVideo();
                    String video = Base64.getEncoder().encodeToString(musicBytes);
        %>
        <div class="col">
            <div class="artist-container">
                <div class="video-player">
                    <video controls class="img-fluid">
                      <source src="data:video/mp4;base64,<%= video %>" type="video/mp4">
                      Your browser does not support the video element.
                    </video>
                </div>
            </div>
        </div>
        <% 
                }
            } else { 
        %>
        <div class="col">
            <p class="no-videos">No videos yet..</p>
        </div>
        <% } %>
    </div>
</div>

<!-- Bootstrap JS -->
<!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>-->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<!-- Script to pause other videos when a new one starts playing -->
<script>
    document.querySelectorAll('video').forEach(video => {
        video.addEventListener('play', () => {
            document.querySelectorAll('video').forEach(otherVideo => {
                if (otherVideo !== video) {
                    otherVideo.pause();
                }
            });
        });
    });
</script>

</body>
</html>
