package com.dao;

import java.util.List;

import com.model.Employee;

public interface EmployeeDao {
	public void add(Employee employee);
	public void edit(Employee employee);
	public void delete(int employeeId);
	public Employee getEmployee(int employeeId);
	public List getAllEmployee();
	
}
