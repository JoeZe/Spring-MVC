package com.springmvc.homecontroller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springwork.model.User;

@Controller
@RequestMapping("/")

public class HomeController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView displayHomePage() {
		ModelAndView mvc=new ModelAndView("home");
		return mvc;
		
	}
	
	@RequestMapping(value="/form",method=RequestMethod.GET)
	
	public ModelAndView displayForm(@ModelAttribute("mUser") User u, BindingResult result) {

		if(result.hasErrors()) {
			ModelAndView mvc=new ModelAndView("home");
			mvc.addObject("date", displayDate(u));
			return mvc;
		}
		ModelAndView mvc=new ModelAndView("form");
		
		mvc.addObject("date", displayDate(u));
		return mvc;
	}
	
	
	@RequestMapping(value="/process-form",method=RequestMethod.POST)
	public ModelAndView processForm(@ModelAttribute("mUser") User u) {
		
		ModelAndView mvc=new ModelAndView("submission-details");
		mvc.addObject("date", displayDate(u));
		return mvc;
	}
	
	@RequestMapping(value= {"/form", "/process-form"})
	public Date displayDate(@ModelAttribute("mUser") User u) {
		Date date=new Date();
		return date;
	}
	

	
	
}
