package com.luv2code.springdemo.mvc;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	
	@InitBinder
	public void  initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor trimmer=new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class,trimmer);
	}
	
	@Value("#{countryOptions}")
	private Map<String,String> countryOptions;
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		
		Student theStudent=new Student();
		model.addAttribute("student", theStudent);
		model.addAttribute("theCountryOptions", countryOptions);
		return "student-form";
	}
	
	@RequestMapping("processForm")
	public String processForm(@Valid @ModelAttribute("student") Student theStudent,BindingResult theBindingResult) {
		System.out.println(theStudent.getFirstName());
		System.out.println(theStudent.getLastName());
		System.out.println(theBindingResult);
		if(theBindingResult.hasErrors()) {
			return "student-form";
		}
		else {
		return "student-confirmation";
		}
	}

}
