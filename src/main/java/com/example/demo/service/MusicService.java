package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Music;
import com.example.demo.repository.MusicRepository;


@Service
public class MusicService {

	@Autowired
	private MusicRepository repo;
	
	public List<Music> listAll(){
		
		  return repo.findAll();
	}
	
	public void save(Music msc) {
		
		  repo.save(msc);
	}
	
	public void delete(Music msc) {
		
		repo.delete(msc);
		
	}
}
