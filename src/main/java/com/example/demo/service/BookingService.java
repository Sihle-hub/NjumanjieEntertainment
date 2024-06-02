package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Booking;
import com.example.demo.repository.BookingRepository;



@Service
public class BookingService {
	
	
	@Autowired
	private BookingRepository repo;
	
	public List<Booking> listAll(){
		
		  return repo.findAll();
	}
	
	public void save(Booking msc) {
		
		  repo.save(msc);
	}
	
	public void delete(Booking msc) {
		
		repo.delete(msc);
		
	}


}
