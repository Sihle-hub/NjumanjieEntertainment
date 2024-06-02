<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.domain.ConfirmBooking" %>
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
           margin-bottom: 30px;
           border: 1px solid #dddddd;
           padding: 15px;
           background-color: #ffffff;
       }

       .artist-name {
           font-weight: bold;
           margin-bottom: 10px;
       }

       .music-id {
           color: #999999;
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

<!-- Navbar (assuming it remains unchanged) -->

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


<div class="container mt-5">
    <h2 class="section-heading text-center mb-4">Bookings</h2>
    <table class="table">
        <tbody>
            <%
                List<ConfirmBooking> demo = (List<ConfirmBooking>) request.getAttribute("bookings");
    
					if (demo != null && !demo.isEmpty()) {
                    int count = 0;
                    for (ConfirmBooking dm : demo) {

                        if (count % 4 == 0) { %>
                            <tr>
                        <% } %>
                        <td>
                            Name: <b><%= dm.getName() %></b> <br>
                            Date: <b><%= dm.getDate() %></b> <br>
                            Start Time : <b><%= dm.getStartTime() %></b> <br>
                            End Time : <b><%= dm.getEndTime() %></b> <br>
                           
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
<!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>-->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<!-- Embedded JavaScript for controlling audio -->
<script>
    // Function to stop all audio players except the current one
    function stopAllAudioPlayers(currentPlayer) {
        var players = document.querySelectorAll('audio');
        players.forEach(function(player) {
            if (player !== currentPlayer) {
                player.pause();
                player.currentTime = 0;
            }
        });
    }

    // Add event listeners to all audio elements to stop others when one starts playing
    var audioPlayers = document.querySelectorAll('audio');
    audioPlayers.forEach(function(player) {
        player.addEventListener('play', function() {
            stopAllAudioPlayers(player);
        });
    });
</script>

</body>
</html>
