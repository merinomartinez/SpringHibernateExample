package com.websystique.springmvc.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;
 
import com.websystique.springmvc.model.Employee;
 
@Repository("employeeDao")
public class EmployeeDaoImpl extends AbstractDao<Integer, Employee> implements EmployeeDao {
 
    @SuppressWarnings("unchecked")
    public List<Employee> findAllEmployees() {
        Criteria criteria = createEntityCriteria();
        return (List<Employee>) criteria.list();
    }
}