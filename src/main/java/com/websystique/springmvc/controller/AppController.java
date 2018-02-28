package com.websystique.springmvc.controller;

import java.util.List;
//import java.util.Locale;
//import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
//import org.springframework.validation.BindingResult;
//import org.springframework.validation.FieldError;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.websystique.springmvc.model.Employee;
import com.websystique.springmvc.service.EmployeeService;
 

@Controller
@RequestMapping("/")
public class AppController {
 
    @Autowired
    EmployeeService service;
     
    @Autowired
    MessageSource messageSource;
 
    @RequestMapping(value = { "/", "/list" }, method = RequestMethod.GET)
    public String listEmployees(ModelMap model) {
    	List<Employee> employees = service.findAllEmployees();
        model.addAttribute("employees", employees);
        return "allemployees";
    }
 
}
