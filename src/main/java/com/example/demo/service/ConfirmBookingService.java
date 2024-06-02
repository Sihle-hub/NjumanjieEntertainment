package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.ConfirmBooking;
import com.example.demo.repository.ConfirmBookingRepository;


@Service
public class ConfirmBookingService {

	@Autowired
	private ConfirmBookingRepository repo;
	
	public List<ConfirmBooking> listAll(){
		
		  return repo.findAll();
	}
	
	public void save(ConfirmBooking msc) {
		
		  repo.save(msc);
	}
	
	public void delete(ConfirmBooking msc) {
		
		repo.delete(msc);
		
	}


}
