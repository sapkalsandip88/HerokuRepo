package com.example.demo.model;

import java.sql.Time;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class BookingMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bid;
	private String bookingno;
	private String fname;
	private String age;
	private String gender;
	private String mobileno;
	private String landmark;
	private String housestreet;
	private String towncity;
	private String pincode;
	private String addtype;
	private String paymentstatus;
	private String bookedby;
	private String bookedat;
	private String type;
	private String paytype;
	private Double totalamount;

	
	@OneToMany(mappedBy = "bookingmaster", fetch = FetchType.LAZY,
            cascade = CascadeType.ALL)
    private Set<TestDetails> testdetails;
	
	public BookingMaster()
	{
		
	}

	
	public BookingMaster(int bid, String bookingno, String fname, String age, String gender, String mobileno,
			String landmark, String housestreet, String towncity, String pincode, String addtype, String paymentstatus,
			String bookedby, String bookedat, String type, String paytype,Double totalamount, Set<TestDetails> testdetails) {
		super();
		this.bid = bid;
		this.bookingno = bookingno;
		this.fname = fname;
		this.age = age;
		this.gender = gender;
		this.mobileno = mobileno;
		this.landmark = landmark;
		this.housestreet = housestreet;
		this.towncity = towncity;
		this.pincode = pincode;
		this.addtype = addtype;
		this.paymentstatus = paymentstatus;
		this.bookedby = bookedby;
		this.bookedat = bookedat;
		this.type = type;
		this.paytype = paytype;
		this.totalamount=totalamount;
		this.testdetails = testdetails;
		
	}


	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	
	public String getBookingno() {
		return bookingno;
	}

	public void setBookingno(String bookingno) {
		this.bookingno = bookingno;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public String getHousestreet() {
		return housestreet;
	}

	public void setHousestreet(String housestreet) {
		this.housestreet = housestreet;
	}

	public String getTowncity() {
		return towncity;
	}

	public void setTowncity(String towncity) {
		this.towncity = towncity;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getAddtype() {
		return addtype;
	}

	public void setAddtype(String addtype) {
		this.addtype = addtype;
	}

	public String getPaymentstatus() {
		return paymentstatus;
	}

	public void setPaymentstatus(String paymentstatus) {
		this.paymentstatus = paymentstatus;
	}

	public String getBookedby() {
		return bookedby;
	}

	public void setBookedby(String bookedby) {
		this.bookedby = bookedby;
	}

	public void setBookedat(String bookedat) {
		this.bookedat = bookedat;
	}

	public String getBookedat() {
		return bookedat;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Set<TestDetails> getTestdetails() {
		return testdetails;
	}

	public String getPaytype() {
		return paytype;
	}

	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}

	public Double getTotalamount() {
		return totalamount;
	}


	public void setTotalamount(Double totalamount) {
		this.totalamount = totalamount;
	}


	public void setTestdetails(Set<TestDetails> testdetails) {
		this.testdetails = testdetails;
	}

}
