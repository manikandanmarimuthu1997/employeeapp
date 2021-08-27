package com.employee.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.employee.model.Employee;
import com.employee.repo.EmployeeRepo;

@Controller
public class EmployeeController {
	
	Logger logger = LoggerFactory.getLogger(EmployeeController.class);
	
	@Autowired
	private EmployeeRepo repo; 
	
	@RequestMapping("/addEmployeeForm")
	public ModelAndView addEmployeeForm()
	{
		logger.info("addEmployeeForm method loading now...");
		
		return new ModelAndView("addEmployeeForm","employee", new Employee());
	}
	
	@RequestMapping("/addEmployee")
	public String saveEmployee(@ModelAttribute("employee") Employee employee , Model model)
	{
		logger.info("saveEmployee method loading now...");
		
		repo.save(employee);
		
		model.addAttribute("msg","Employee inserted successfully...");
		
		return "addEmployeeForm";
	}
	
	@RequestMapping("/showEmployee")
	public String showEmployee(Model model)
	{
		logger.info("showEmployee method loading now...");
		
		List<Employee> empList = repo.findAll();
		
		model.addAttribute("empList", empList);
		
		return "showEmployee";
	}
	
	@RequestMapping("/getEmployee/{empid}")
	public String getEmployee(Model model, @PathVariable("empid") Optional<Integer> empid)
	{
		logger.info("getEmployee method loading now...");
		
		List<Employee> empList = new ArrayList<Employee>();
		
		if(empid.isPresent())
		{
			Employee employee = repo.findById(empid.get()).orElse(null);
			
			if(employee!=null)
				empList.add(employee);
		}
		
		model.addAttribute("empList", empList);
		
		return "/showEmployee";
	}
	
}
