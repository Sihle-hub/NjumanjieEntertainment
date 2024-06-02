package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.domain.Videos;

public interface VideosRepository extends JpaRepository<Videos, Long>{

}
