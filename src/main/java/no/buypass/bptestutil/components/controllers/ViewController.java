package no.buypass.bptestutil.components.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewController {


	@RequestMapping(value="/", method= RequestMethod.GET)
	public String home() {
		return "home";
	}

    /*
	@RequestMapping(value="/secure", method= RequestMethod.GET)
	public void secure() {}
	
	@RequestMapping(value="/links", method= RequestMethod.GET)
	public void links() {}*/

    @RequestMapping(value = "/partials/**", method = RequestMethod.GET)
    public void partials() {}
}

