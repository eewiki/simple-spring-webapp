/*
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

    Copyright 2013 eewiki.net
 */
package net.eewiki.controller;

import net.eewiki.user.User;
import net.eewiki.user.UserValidator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author lee_vettleson
 *
 */
@Controller
@RequestMapping("/form")
public class FormController {
	private final Logger log = LoggerFactory.getLogger(getClass());
	
	private Validator validator = new UserValidator();

	/**
	 * Handles the request to display the form.
	 * @param m spring-injected model object that gets filled and sent to the view
	 * @return the view to display
	 */
	@RequestMapping(method=RequestMethod.GET)
	public String getForm(Model m) {
		log.info("Calling getForm()");
		// lets add a user object to the model so the form can fill it
		m.addAttribute("user", new User());
		return "form";
	}
	
	/**
	 * Process the form submission.
	 * 
	 * @param u user object that was filled out on the form page
	 * @param result handles error messages to send back to the view, if necessary
	 * @param m spring-injected model object that gets filled and sent to the view
	 * @return the view to display
	 */
	@RequestMapping(method=RequestMethod.POST)
	public String processFormSubmission(@ModelAttribute("user") User u, BindingResult result, Model m) {
		log.info("Calling processFormSubmission()");
		
		validator.validate(u, result);
		if (result.hasErrors()) {
			// error occured, lets send them back to the form to re-enter their information
			return "form";
		}
		
		m.addAttribute("status", "Your submission was a success!");

		return "result";
	}
}
