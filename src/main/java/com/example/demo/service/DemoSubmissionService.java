package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.DemoSubmission;
import com.example.demo.repository.DemoSubmissionRepository;

@Service
public class DemoSubmissionService {
	
	@Autowired
	private DemoSubmissionRepository repo;
	
	public List<DemoSubmission> listAll(){
		
		  return repo.findAll();
	}
	
	public void save(DemoSubmission msc) {
		
		  repo.save(msc);
	}
	
	public void delete(DemoSubmission msc) {
		
		repo.delete(msc);
		
	}

}
