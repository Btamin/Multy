package kr.co.Multy;

import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.Multy.common.SqlSessionController;

@Controller
public class AdminController extends SqlSessionController{
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	
	@RequestMapping(value = "/admin/login.do")
	public String home(Locale locale, ModelMap model, HttpServletRequest request) {
		return "/admin/login";
	}
	
	
	@RequestMapping(value = "/setLogin", method = RequestMethod.POST)
	public String setLogin(ModelMap model, HttpServletRequest request) {
		Enumeration paramName = request.getParameterNames();
		while(paramName.hasMoreElements()){
			String strParmName = (String) paramName.nextElement();
			model.put(strParmName, request.getParameter(strParmName));
		}
		
		Map map = getObject("member.memberCheck",model);
		System.out.println(model);
		
		if(map == null){
			model.addAttribute("memberCheck", "N");
		}else{
			model.addAttribute("id", map.get("ID"));
			
			HttpSession session = request.getSession();
			session.setAttribute("id", map.get("ID"));
			
			setUpdate("member.loginSuccess", model);
			session.setMaxInactiveInterval(1800);
			
			model.addAttribute("memberCheck", "Y");
		}
		return "/admin/login";
	}
	
	
	@RequestMapping(value = "/doLogout", method = RequestMethod.GET)
	public String doLogout(ModelMap model, HttpServletRequest request) {
		request.getSession().invalidate();
		return "home";
	}
	
	@RequestMapping(value = "/admin/changePass.do", method = RequestMethod.GET)
	public String changePassword(ModelMap model, HttpServletRequest request) {
		
		return "/admin/changePass";
	}
	
	@RequestMapping(value = "/setChangePass.do", method = RequestMethod.GET)
	public String setPassword(ModelMap model, HttpServletRequest request) {
		Enumeration paramName = request.getParameterNames();
		while(paramName.hasMoreElements()){
			String strParmName = (String) paramName.nextElement();
			model.put(strParmName, request.getParameter(strParmName));
		}
		
		
		return "/admin/changePass";
	}
}
