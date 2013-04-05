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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * Controller class that adds a greeting to the model and sends you to the "greeting" view.
 * @author lee_vettleson
 *
 */
@Controller
public class GreetingController {
	private final Logger log = LoggerFactory.getLogger(getClass());

	/**
	 * Handles the /greeting url request.
	 * 
	 * @param m spring-injected model object that gets filled and sent to the view
	 * @return name of the view to display
	 */
	@RequestMapping("/default-greeting")
	public String getDefaultGreetingView(Model m) {
		log.info("Calling getDefaultGreetingView()");
		
		// our greeting is "Hello World!"
		m.addAttribute("greeting", "Hello World!");
		
		return "greeting";
	}
}
