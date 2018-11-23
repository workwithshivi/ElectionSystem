package shivi.javaBeans;

import java.io.Serializable;

public class LoginBean implements Serializable {
	String aadhar;
	String dob;
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
}
