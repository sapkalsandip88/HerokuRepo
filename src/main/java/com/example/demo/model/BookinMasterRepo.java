package com.example.demo.model;

import org.springframework.data.repository.CrudRepository;


public interface BookinMasterRepo extends CrudRepository<BookingMaster, Integer> { 
	
	BookingMaster findByBookingno(String Bookingno);

}
