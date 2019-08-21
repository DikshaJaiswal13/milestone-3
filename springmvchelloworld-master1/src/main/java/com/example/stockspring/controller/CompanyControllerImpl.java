package com.example.stockspring.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.example.stockspring.model.Company;
import com.example.stockspring.model.Sector;
import com.example.stockspring.service.CompanyService;
import com.example.stockspring.service.CompanyServiceImpl;

@Controller
public class CompanyControllerImpl implements CompanyController{

	
	@Autowired
	private CompanyService companyService;
	
	
	
	@RequestMapping(value = "/addCompany", method = RequestMethod.GET)
	public String getAddCompany(ModelMap model) throws SQLException {
		System.out.println("add company");
		Company company=new Company();
		//e.setEmail("sdfsf");
	//	e.setSalary(4564.56f);
		 
		model.addAttribute("c1", company);
		model.addAttribute("sectorList", companyService.getSectorList());
		return "addCompany";
		
	}
	
	/*@RequestMapping(value = "/adminLandingPage", method = RequestMethod.GET)
	public String getAdminLandingPage(ModelMap model) throws SQLException {
		//System.out.println("add company");
		Company company=new Company();
		//e.setEmail("sdfsf");
	//	e.setSalary(4564.56f);
	
		model.addAttribute("c1", company);
		//model.addAttribute("sectorList", companyService.getSectorList());
		return "adminLandingPage";
		
	}
	*/
	@RequestMapping(value = "/importData", method = RequestMethod.GET)
	public String getimportData(ModelMap model) throws SQLException {
		//System.out.println("add company");
		Company company=new Company();
		//e.setEmail("sdfsf");
	//	e.setSalary(4564.56f);
	
		model.addAttribute("c1", company);
		//model.addAttribute("sectorList", companyService.getSectorList());
		return "importData";
		
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String getLogout(ModelMap model) throws SQLException {
		//session.invalidate();
		return "logout";
		
	}
	
	
	
	
	
	/*
	@RequestMapping(value = "/ipoRegistration", method = RequestMethod.GET)
	public String getIpoRegistration(ModelMap model) throws SQLException {
		//System.out.println("add company");
		Company company=new Company();
		//e.setEmail("sdfsf");
	//	e.setSalary(4564.56f);
	
		model.addAttribute("c1", company);
		//model.addAttribute("sectorList", companyService.getSectorList());
		return "IPOregistration";
		
	}
	*/
	/*
	 * public Company insertCompany(Company company) throws SQLException {
	 * companyService.insertCompany(company); return company; }
	 */

	
	@RequestMapping(value = "/updateCompany", method = RequestMethod.GET)
	public String getupdateCompanyPage(ModelMap model) throws SQLException {
		//System.out.println("add company");
		Company company=new Company();
		//e.setEmail("sdfsf");
	//	e.setSalary(4564.56f);
		
		model.addAttribute("c1", company);
		//model.addAttribute("sectorList", companyService.getSectorList());
		return "updateCompanyPage";
		
	}
	
	@RequestMapping(value = "/addCompany", method = RequestMethod.POST)
	public String formHandler(@Valid Company company, 
			BindingResult result, Model model) throws SQLException {
		System.out.println("inside post addEmployee");
		Random r=new Random();
		  int no=r.nextInt(9000)+1000;
		  company.setCompanyId(no);
		System.out.println(company);
		if(result.hasErrors()){
			System.out.println("errors");
			System.out.println(result.getAllErrors());
			model.addAttribute("c1", company);
			return "redirect:/addCompany";
		}
		companyService.insertCompany(company);
		//model.addAttribute("name", employee.getName());
		 return "redirect:/companyList";
	}
	
	
	
	
	
	@Override
	public Company updateCompany(Company company) {
		// TODO Auto-generated method stub
		return null;
	}

	@RequestMapping(path="/companyList")
	public ModelAndView getCompanyList() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("companyList");
		mv.addObject("companyList",companyService.getCompanyList());
		return mv;
	}
	
	
	// try
	/*
	 * public static void main(String [] args) { CompanyController controller=new
	 * CompanyControllerImpl(); try {
	 * System.out.println(controller.getCompanyList()); } catch (Exception e) { //
	 * TODO Auto-generated catch block e.printStackTrace(); }
	 * 
	 * }
	 */
	
	
}
