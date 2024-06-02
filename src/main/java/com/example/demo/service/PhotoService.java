package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Photo;

import com.example.demo.repository.PhotoRepository;

@Service
public class PhotoService {
	
	@Autowired
	private PhotoRepository repo;
	
	public List<Photo> listAll(){
		
		  return repo.findAll();
	}
	
	public void save(Photo msc) {
		
		  repo.save(msc);
	}
	
	public void delete(Photo msc) {
		
		repo.delete(msc);
		
	}

}
