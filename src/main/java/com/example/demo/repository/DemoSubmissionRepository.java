package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.domain.DemoSubmission;

public interface DemoSubmissionRepository extends JpaRepository<DemoSubmission, String>{
	

}
