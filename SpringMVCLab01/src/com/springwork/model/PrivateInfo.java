package com.springwork.model;

import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Size;

public class PrivateInfo {
	@Max(9)
	private long ssn;
	@Size(min=8, max=11)
	private long ccn;
	private Date dob;
	public long getSsn() {
		return ssn;
	}
	public void setSsn(long ssn) {
		this.ssn = ssn;
	}
	public long getCcn() {
		return ccn;
	}
	public void setCcn(long ccn) {
		this.ccn = ccn;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	
}
