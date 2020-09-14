package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.TestService;

@Controller
public class TestController {

	@Autowired private TestService ts;
	
	@RequestMapping(value = "test/", method = RequestMethod.GET)
	public String test() {
		String name = "성공";
		System.out.println(ts.find(name));
		
		return "test";
	}
}
