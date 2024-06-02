package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Artist;
import com.example.demo.repository.ArtistRepository;

@Service
public class ArtistService {
	
	@Autowired
	private ArtistRepository repo;
	
	public List<Artist> listAll(){
		
		  return repo.findAll();
	}
	
	public void save(Artist msc) {
		
		  repo.save(msc);
	}
	
	public void delete(Artist msc) {
		
		repo.delete(msc);
		
	}

}
