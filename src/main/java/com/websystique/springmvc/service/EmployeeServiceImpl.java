package com.websystique.springmvc.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.websystique.springmvc.dao.EmployeeDao;
import com.websystique.springmvc.model.Employee;
 
@Service("employeeService")
@Transactional
public class EmployeeServiceImpl implements EmployeeService {
 
    @Autowired
    private EmployeeDao dao;
     
    
    public  List<Employee> findAllEmployees() {
        return dao.findAllEmployees();
    }
     
}