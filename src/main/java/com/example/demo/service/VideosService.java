package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Videos;
import com.example.demo.repository.VideosRepository;

@Service
public class VideosService {
	
	@Autowired
	private VideosRepository repo;
	
	public List<Videos> listAll(){
		
		  return repo.findAll();
	}
	
	public void save(Videos msc) {
		
		  repo.save(msc);
	}
	
	public void delete(Videos msc) {
		
		repo.delete(msc);
		
	}
	

}
