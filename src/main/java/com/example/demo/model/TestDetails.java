package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class TestDetails {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int tid;
	private String bookingno;
	private String testanme;
	private Double price;
	private String bookedby;
	private String bookedat;
	
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false ,targetEntity = BookingMaster.class)
    @JoinColumn(name = "bid")
    private BookingMaster  bookingmaster;
	
	
	
	public TestDetails(String bookingno, String testanme, Double price, String bookedby,
			String bookedat, BookingMaster bookingmaster) {
		super();
		this.bookingno = bookingno;
		this.testanme = testanme;
		this.price = price;
		this.bookedby = bookedby;
		this.bookedat = bookedat;
		this.bookingmaster = bookingmaster;
	}
	public TestDetails() {
		// TODO Auto-generated constructor stub
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getBookingno() {
		return bookingno;
	}
	public void setBookingno(String bookingno) {
		this.bookingno = bookingno;
	}
	public String getTestanme() {
		return testanme;
	}
	public void setTestanme(String testanme) {
		this.testanme = testanme;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
	public String getBookedby() {
		return bookedby;
	}
	public void setBookedby(String bookedby) {
		this.bookedby = bookedby;
	}
	public String getBookedat() {
		return bookedat;
	}
	public void setBookedat(String bookedat) {
		this.bookedat = bookedat;
	}
	public BookingMaster getBookingmaster() {
		return bookingmaster;
	}
	public void setBookingmaster(BookingMaster bookingmaster) {
		this.bookingmaster = bookingmaster;
	}
}
