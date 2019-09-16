package com.luv2code.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode,String> {
	
	private String coursePrefix;
	
   public void intialize(CourseCode theCourseCode) {
	   coursePrefix=theCourseCode.value();
   }

	@Override
	public boolean isValid(String theCode, ConstraintValidatorContext theConstraintValidatorText) {
		boolean result=theCode.startsWith(coursePrefix);
		
		return result;
	}

}
