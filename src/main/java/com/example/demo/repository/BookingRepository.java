package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.domain.Booking;

public interface BookingRepository extends JpaRepository<Booking, String>{

}
