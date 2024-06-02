package com.example.demo.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.example.demo.domain.Artist;
import com.example.demo.domain.Booking;
import com.example.demo.domain.BookingArtist;
import com.example.demo.domain.ConfirmBooking;
import com.example.demo.domain.DemoSubmission;
import com.example.demo.domain.Music;
import com.example.demo.domain.Photo;
import com.example.demo.domain.Videos;
import com.example.demo.service.ArtistService;
import com.example.demo.service.BookingArtistService;
import com.example.demo.service.BookingService;
import com.example.demo.service.ConfirmBookingService;
import com.example.demo.service.DemoSubmissionService;
import com.example.demo.service.MusicService;
import com.example.demo.service.PhotoService;
import com.example.demo.service.VideosService;

@Controller
public class PageController {
	
	 @Autowired
	 private ArtistService artistService;
	 @Autowired
	 private MusicService musicService;
	 @Autowired
	 private VideosService videoService;
	 @Autowired
	 private DemoSubmissionService demoService;
	 @Autowired
	 private PhotoService photoservice;
	 @Autowired
	 private BookingService bookingService;
	 @Autowired
	 private BookingArtistService bookingArtistService;
	 @Autowired
	 private ConfirmBookingService confirmBookingService;
	 
	@Value("${spring.application.name}")
    String appName;

	 @GetMapping("/")
	 public ModelAndView homePage() {

			List<Booking> artists = bookingService.listAll();
			ModelAndView data = new ModelAndView("Home.jsp");// load the artist page 
			data.addObject("images" , artists);
			
			return data;
	   }
	 
	 @GetMapping("/about_page")
	 public String aboutPage() {
		 
	       return "AboutPage.html";//load the about page
	       
	   }

	 
	@GetMapping("/admin_page")
	 public String adminPage() {
		 
	       return "admin.jsp";//only admin have access
	       
	   }
	 
	 @GetMapping("/photo_manage")
		 public String photoManager() {
			 
		       return "gallery_manager.html";//load the gallery management page
		       
		   }
		 
	 @GetMapping("/book_artist")
	 public String bookArtist() {
		 
	       return "booking_artist_form.html";//load the booking form
	       
	   }
	   
	 @GetMapping("/artist_page")
	 public String artistPage() {
		 	 
	       return "ArtistPage.jsp";//load the artist page 
	       
	   }
	 
	 @GetMapping("/music_manage")
	 public String musicManage() {
		 	 
	       return "music_manager.html";//only admin have access
	       
	   }
	 
	 @GetMapping("/artist_manage")
	 public String artistManage() {
		 	 
	       return "artist_manage.html";//only admin have access
	       
	   }
	 
	 @GetMapping("/demo-submission")
	 public String demoPage() {
	 	 
	       return "demoSubmission.html";//load the demo form
	       
	   }
	 
	 @GetMapping("/view_demo_submission")
	 public ModelAndView view_demo_submission() {
		 
		 List<DemoSubmission> sponser = demoService.listAll();
			ModelAndView data = new ModelAndView("view_demo_submission.jsp");
			data.addObject("demo" , sponser);
			
			return data;  //only admin have access 
   
	   }
	 
	 @GetMapping("/video_manage")
	 public String add_vidio() {
		 	 
	       return "video_manage.html";//only admin have access
	       
	   }
	 
	 @PostMapping("/add_artist")//only admin have access
		public String addArtist(@RequestParam("name_artist") String name_artist,
								@RequestParam("id_artist") Long id_artist,
								@RequestParam("image_artist") MultipartFile image_artist) throws IOException
								{
		
		    byte[] imageData = image_artist.getBytes();

		    Artist artist = new Artist(id_artist , name_artist , imageData);
		    
		    artistService.save(artist);
			
			return "redirect:/admin.jsp"; // Redirect to artist page
			
		}
	 
		@GetMapping("/getting_artist")
		public ModelAndView gettingArtist() {
			
			List<Artist> artists = artistService.listAll();
			ModelAndView data = new ModelAndView("ArtistPage.jsp");// load the artist page 
			data.addObject("images" , artists);
			
			return data;
			
		}
	 
	  @PostMapping("/delete_artist")//only admin have access
	   public String deleteArtist(@RequestParam("id_artist") Long id_artist) {
		  
		     Artist artist = new Artist();
		     artist.setId(id_artist);
		     artistService.delete(artist);
		     
		     return "redirect:/admin.jsp";// Redirect to admin page
		  
	  }
	 
		 @PostMapping("add_music")//only admin have access
			public String addMusic(@RequestParam("name_artist") String name_artist,
					                @RequestParam("music_title") String music_title,
									@RequestParam("music_id") Long music_id,
									@RequestParam("music_artist") MultipartFile music_artist) throws IOException
									{
			
			    byte[] imageData = music_artist.getBytes();

			    Music music = new Music(music_id,name_artist,music_title,imageData);
			    
			    musicService.save(music);
				
				return "redirect:/admin.jsp"; // Redirect to music page
				
			}
		 
			@GetMapping("/getting_music")
			public ModelAndView gettingMusicPlaylist() {
				
				List<Music> playlist = musicService.listAll();
				ModelAndView data = new ModelAndView("MusicPage.jsp");//load the music page
				data.addObject("playlist" , playlist);
				
				return data;
				
			}
		 
		  @PostMapping("/delete_music")//only admin have access
		   public String deleteMusic(@RequestParam("music_id") Long music_id) {
			  
			  
			     Music music = new Music();
			     music.setId(music_id);
			     musicService.delete(music);
			     
			     return "redirect:/admin.jsp";// Redirect to admin page
			  
		  }
		 
	  
		 @PostMapping("/add_video")//only admin have access
		 public String addVideo(@RequestParam("vID") Long videoID,
										@RequestParam("vFile") MultipartFile videoFile) throws IOException
				{
				
				    byte[] videoByte = videoFile.getBytes();
				
				    Videos video = new Videos(videoID,videoByte);
				    
				    videoService.save(video);
					
					return "redirect:/admin.jsp"; // Redirect to admin page
					
			}
		 
			@GetMapping("/getting_videos")
			public ModelAndView gettingVideos() {
				
				List<Videos> playlist = videoService.listAll();
				ModelAndView data = new ModelAndView("VideoPage.jsp");//load the video page
				data.addObject("playlist" , playlist);
				
				return data;
				
			}
			
			 @PostMapping("/submitFormData")// demo submission
			    public String receiveFormData(@RequestBody Map<String, Object> formDataMap) {
			        // Extract data from the formDataMap
			        Map<String, Object> form1Data = (Map<String, Object>) formDataMap.get("form1Data");
			        Map<String, Object> form2Data = (Map<String, Object>) formDataMap.get("form2Data");

			        // Extract individual fields from form1Data and form2Data as needed
			        String name = (String) form1Data.get("name");
			        String surname = (String) form1Data.get("surname");
			        String sName = (String) form1Data.get("sName");
			        String phone = (String) form1Data.get("phone");
			        String email = (String) form1Data.get("email");
			        
			        
				        
				       if(sName.equals("")) {
				    	   
				    	    sName="Invalid";
				       }
				       
				       if(surname.equals("")) {
				    	   
				    	    surname="Invalid";
				       }
				       
				       
				        String link1 = (String) form2Data.get("link1");
				        String link2 = (String) form2Data.get("link2");
				        String link3 = (String) form2Data.get("link3");
				        String sLink = (String) form2Data.get("sLink");
				        String aLink = (String) form2Data.get("aLink");
				        String yLink = (String) form2Data.get("yLink");
				        String auLink = (String) form2Data.get("auLink");
			       
				        if(link1.equals("")) {
					    	   
				    	    link1="Invalid";
				       }
				        if(link2.equals("")) {
					    	   
				    	    link2="Invalid";
				       }
				        if(link3.equals("")) {
					    	   
				    	    link3="Invalid";
				       }
				        if(sLink.equals("")) {
					    	   
				    	    sLink="Invalid";
				       }
				        if(aLink.equals("")) {
					    	   
				    	    aLink="Invalid";
				       }
			        
				        if(yLink.equals("")) {
					    	   
				    	    yLink="Invalid";
				       }
				        
				        if(auLink.equals("")) {
					    	   
				    	    auLink="Invalid";
				       }
				        
				        
				        DemoSubmission demo = new DemoSubmission(sName,name,surname,phone,email,link1,link2,link3,sLink,aLink,yLink,auLink);

				        demoService.save(demo);
				
				        return "redirect:/Home.jsp";
			    }
			 
			 
			 //
			 @PostMapping("/add_photo")//only admin have access
				public String addPhoto(@RequestParam("photo_id") Long photo_id,
										@RequestParam("photo") MultipartFile photo) throws IOException
										{
				
				    byte[] imageData = photo.getBytes();

				    Photo p = new Photo(photo_id , imageData);
				    
				    photoservice.save(p);
					
					return "redirect:/admin.jsp"; // Redirect to artist page
					
				}
			 
			 @PostMapping("/remove_photo")//only admin have access
			   public String deletePhoto(@RequestParam("photo_id") Long photo_id) {
				  
				  
				     Photo photo = new Photo();
				     photo.setId(photo_id);
				     photoservice.delete(photo);
				     
				     return "redirect:/admin.jsp";// Redirect to admin page
				  
			  }
			 
			 
			 @GetMapping("/gallery")
				public ModelAndView gallery() {
					
					List<Photo> playlist = photoservice.listAll();
					ModelAndView data = new ModelAndView("gallery_view.jsp");//load the video page
					data.addObject("gallery" , playlist);
					
					return data;
					
				}
				
			 @PostMapping("/bookings")//only admin have access
				public String bookingArtist(@RequestParam("artistName") String artistName,
										@RequestParam("bookingDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date date,
										@RequestParam("bookingFromTime") String fromTime,
										@RequestParam("bookingToTime") String toTime,
										@RequestParam("venueName") String venue,
										@RequestParam("emailAddress") String email,
										@RequestParam("bookerPhoneNumber") String tel)
										{

	
			        
				    BookingArtist bookings = new BookingArtist(artistName,date,fromTime,toTime,venue,email,tel);
			  
					bookingArtistService.save(bookings);
				 
					return "redirect:/Home.jsp";
				    
					
				}
			 
			 @GetMapping("/uploadBookinggg")
			 public String uploadBooking() {
				 
			       return "upload_booking.html";//load the about page
			       
			   }
			 
			
			 @PostMapping("/uploadBooking")//only admin have access
				public String addBooking(@RequestParam("artist_name") String name,
										@RequestParam("photo") MultipartFile photo) throws IOException
										{
				
				    byte[] imageData = photo.getBytes();

				    Booking p = new Booking(imageData , name);
				    
				    bookingService.save(p);
					
					return "redirect:/admin.jsp"; // Redirect to artist page
					
				}
			 
			 @PostMapping("/deleteAddedArtist")//only admin have access
			   public String deleteAddedArtist(@RequestParam("artist_name") String name) {
				  
				 
				 List<Booking> playlist = bookingService.listAll();
				 
				   int size = playlist.size();
				   
				     if(size > 3) {
				    	 
				    	 Booking booking = new Booking();
					     booking.setName(name);
					     bookingService.delete(booking);
				    	  
				     }
				    

				     return "redirect:/admin.jsp";// Redirect to admin page
				  
			  }
			 
			 @GetMapping("/viewBookings")
				public ModelAndView viewBookings() {
					
					List<BookingArtist> bookings = bookingArtistService.listAll();
					ModelAndView data = new ModelAndView("viewBookingArtist.jsp");//load the video page
					data.addObject("bookings" , bookings);
					
					return data;
					
				}
			 
			 @PostMapping("/confirmBooking")
			 public String confirmBooking(@RequestParam("name") String name,
					 @RequestParam("date") String date,
					 @RequestParam("startTime") String startTime,
					 @RequestParam("endTime") String endTime
					 ) {
				 
				 ConfirmBooking booking = new ConfirmBooking(name,date,startTime,endTime);
				 confirmBookingService.save(booking);
			
				 return "redirect:/admin.jsp";// Redirect to admin page
			 }
			 
			 @PostMapping("/remove_booking")//only admin have access
			   public String deletePhoto(@RequestParam("name") String name) {
		
				 ConfirmBooking booking = new ConfirmBooking();
				     booking.setName(name);
				     confirmBookingService.delete(booking);
				     
				     return "redirect:/admin.jsp";// Redirect to admin page
				  
			  }
			 
			 @GetMapping("/confirmedBookings")
				public ModelAndView confirmedBookings() {
					
					List<ConfirmBooking> bookings = confirmBookingService.listAll();
					ModelAndView data = new ModelAndView("viewConfirmBookings.jsp");//load the video page
					data.addObject("bookings" , bookings);
					
					return data;
					
				}
			 
		 
			 
		
}