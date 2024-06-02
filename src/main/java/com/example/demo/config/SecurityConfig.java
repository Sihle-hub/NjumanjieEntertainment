package com.example.demo.config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.config.Customizer;


	@Configuration
	@EnableWebSecurity
	public class SecurityConfig {
	    @Bean
	    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
	        http.authorizeHttpRequests(authorize -> authorize
	                .requestMatchers("/admin_page","/confirmBooking","/remove_booking","/deleteAddedArtist","/uploadBooking",
	                		"/uploadBooking","/remove_photo","/add_photo","/add_video","/delete_music","add_music",
	                		"/delete_artist","/add_artist","/video_manage","/artist_manage","/music_manage","/artist_page",
	                		"/photo_manage","/viewBookings")
	                .authenticated()
	                .anyRequest().permitAll()
	        );
	        http.httpBasic(Customizer.withDefaults());
	        return http.build();
	    }
	}
