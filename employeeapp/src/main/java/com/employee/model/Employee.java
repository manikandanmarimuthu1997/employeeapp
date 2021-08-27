package com.employee.model;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee")
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer empid;
	private String empname;
	private String empemail;
	private String empphone;
	private BigDecimal empsalary;
	
	public Integer getEmpid() {
		return empid;
	}
	public void setEmpid(Integer empid) {
		this.empid = empid;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getEmpemail() {
		return empemail;
	}
	public void setEmpemail(String empemail) {
		this.empemail = empemail;
	}
	public String getEmpphone() {
		return empphone;
	}
	public void setEmpphone(String empphone) {
		this.empphone = empphone;
	}
	public BigDecimal getEmpsalary() {
		return empsalary;
	}
	public void setEmpsalary(BigDecimal empsalary) {
		this.empsalary = empsalary;
	}
}
