package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.EmployeeDao;
import com.model.Employee;
import com.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	private EmployeeDao employeeDao;

	@Transactional
	public void add(Employee employee) {
		employeeDao.add(employee);

	}

	@Transactional
	public void edit(Employee employee) {
		employeeDao.edit(employee);

	}

	@Transactional
	public void delete(int employeeId) {
		employeeDao.delete(employeeId);

	}

	@Transactional
	public Employee getEmployee(int employeeId) {
		return employeeDao.getEmployee(employeeId);
	}

	@Transactional
	public List getAllEmployee() {
		return employeeDao.getAllEmployee();
	}

}
