package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.domain.BookingArtist;
import com.example.demo.repository.BookingArtistRepository;

@Service
public class BookingArtistService {

	@Autowired
	private BookingArtistRepository repo;
	
	public List<BookingArtist> listAll(){
		
		  return repo.findAll();
	}
	
	public void save(BookingArtist msc) {
		
		  repo.save(msc);
	}
	
	public void delete(BookingArtist msc) {
		
		repo.delete(msc);
		
	}
}
