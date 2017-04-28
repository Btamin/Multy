package kr.co.Multy;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	
	@RequestMapping(value = "/admin/login.do")
	public String home(Locale locale, ModelMap model, HttpServletRequest request) {
		return "/admin/login";
	}
	
}
