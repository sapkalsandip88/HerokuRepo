package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.web.bind.annotation.RestController;

@Entity
public class Plan {

	@Id
	@GeneratedValue
	private int planid;
	private String planname;
	private String category;
	private String pattern;
	private String duration;
	private String valid;
	private double grossamt;
	private double discper;
	private double discamt;
	private double taxamt;
	private double cgstper;
	private double sgstper;
	private double igstper;
	private double cgstamt;
	private double sgstamt;
	private double igstamt;
	private double totaltaxamt;
	private double netamt;
	private double othercharges;
	private double registamt;
	private String status;
	private String description;
	public int getPlanid() {
		return planid;
	}
	public void setPlanid(int planid) {
		this.planid = planid;
	}
	public String getPlanname() {
		return planname;
	}
	public void setPlanname(String planname) {
		this.planname = planname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPattern() {
		return pattern;
	}
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getValid() {
		return valid;
	}
	public void setValid(String valid) {
		this.valid = valid;
	}
	public double getGrossamt() {
		return grossamt;
	}
	public void setGrossamt(double grossamt) {
		this.grossamt = grossamt;
	}
	public double getDiscper() {
		return discper;
	}
	public void setDiscper(double discper) {
		this.discper = discper;
	}
	public double getDiscamt() {
		return discamt;
	}
	public void setDiscamt(double discamt) {
		this.discamt = discamt;
	}
	public double getTaxamt() {
		return taxamt;
	}
	public void setTaxamt(double taxamt) {
		this.taxamt = taxamt;
	}
	public double getCgstper() {
		return cgstper;
	}
	public void setCgstper(double cgstper) {
		this.cgstper = cgstper;
	}
	public double getSgstper() {
		return sgstper;
	}
	public void setSgstper(double sgstper) {
		this.sgstper = sgstper;
	}
	public double getIgstper() {
		return igstper;
	}
	public void setIgstper(double igstper) {
		this.igstper = igstper;
	}
	public double getCgstamt() {
		return cgstamt;
	}
	public void setCgstamt(double cgstamt) {
		this.cgstamt = cgstamt;
	}
	public double getSgstamt() {
		return sgstamt;
	}
	public void setSgstamt(double sgstamt) {
		this.sgstamt = sgstamt;
	}
	public double getIgstamt() {
		return igstamt;
	}
	public void setIgstamt(double igstamt) {
		this.igstamt = igstamt;
	}
	public double getTotaltaxamt() {
		return totaltaxamt;
	}
	public void setTotaltaxamt(double totaltaxamt) {
		this.totaltaxamt = totaltaxamt;
	}
	public double getNetamt() {
		return netamt;
	}
	public void setNetamt(double netamt) {
		this.netamt = netamt;
	}
	public double getOthercharges() {
		return othercharges;
	}
	public void setOthercharges(double othercharges) {
		this.othercharges = othercharges;
	}
	public double getRegistamt() {
		return registamt;
	}
	public void setRegistamt(double registamt) {
		this.registamt = registamt;
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
	@Override
	public String toString() {
		return "Plan [planid=" + planid + ", planname=" + planname + ", category=" + category + ", pattern=" + pattern
				+ ", duration=" + duration + ", valid=" + valid + ", grossamt=" + grossamt + ", discper=" + discper
				+ ", discamt=" + discamt + ", taxamt=" + taxamt + ", cgstper=" + cgstper + ", sgstper=" + sgstper
				+ ", igstper=" + igstper + ", cgstamt=" + cgstamt + ", sgstamt=" + sgstamt + ", igstamt=" + igstamt
				+ ", totaltaxamt=" + totaltaxamt + ", netamt=" + netamt + ", othercharges=" + othercharges
				+ ", registamt=" + registamt + ", status=" + status + ", description=" + description + "]";
	}
	
	
	
	
	
}
