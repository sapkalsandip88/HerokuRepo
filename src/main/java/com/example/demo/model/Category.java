package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Category {
	@Id
	@GeneratedValue
	private int cid;
	private String catname;
	private String status;
	private String description;
	private String brcode;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCatname() {
		return catname;
	}
	public void setCatname(String catname) {
		this.catname = catname;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getBrcode() {
		return brcode;
	}
	public void setBrcode(String brcode) {
		this.brcode = brcode;
	}
	@Override
	public String toString() {
		return "Category [cid=" + cid + ", catname=" + catname + ", status=" + status + ", description=" + description
				+ ", brcode=" + brcode + "]";
	}
	

}
