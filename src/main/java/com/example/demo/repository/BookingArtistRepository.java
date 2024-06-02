package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.domain.BookingArtist;

public interface BookingArtistRepository extends JpaRepository<BookingArtist, String>{

}
