package com.service;

import java.util.List;

import com.model.Employee;

public interface EmployeeService {
	public void add(Employee employee);
	public void edit(Employee employee);
	public void delete(int employeeId);
	public Employee getEmployee(int employeeId);
	public List getAllEmployee();

}
