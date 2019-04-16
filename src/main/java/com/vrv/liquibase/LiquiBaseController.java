package com.vrv.liquibase;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class LiquiBaseController {

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String getUser() {
		return "11";
	}
}
