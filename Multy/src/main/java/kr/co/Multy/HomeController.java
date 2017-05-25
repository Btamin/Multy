package kr.co.Multy;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UrlPathHelper;

import kr.co.Multy.common.SqlSessionController;

@Controller
public class HomeController extends SqlSessionController{
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	/**
	 * main 페이지
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, ModelMap model) throws Exception {
		
		return "home";
	}
	
	public void counting(int i){
		
	}

	/**
	 * 모든 컨텐츠 화면 컨텐츠 jsp 파일들은 모두 contens 파일 아래에 있어야한다 1.request에 있는 url정보를
	 * model에 넣어어둔다 2.model에 있는 url 데이터로 jsp 파일을 찾아서 화면을 보여준다
	 */
	@RequestMapping(value = "/contents/*.do", method = RequestMethod.GET)
	public ModelMap contentsView(ModelMap model, HttpServletRequest request) {
		Enumeration paramName = request.getParameterNames();
		while(paramName.hasMoreElements()){
			String strParmName = (String) paramName.nextElement();
			model.put(strParmName, request.getParameter(strParmName));
		}
		
		UrlPathHelper urlPathHelper = new UrlPathHelper();
		model.addAttribute("url", urlPathHelper.getOriginatingRequestUri(request));
		
		

		List contensList = new ArrayList();
		contensList.add("가드레일");
		contensList.add("주주");
		contensList.add("부품");
		contensList.add("구조물");
		contensList.add("돼지우리");
		contensList.add("돼지우리");
		contensList.add("주주");
		contensList.add("낙석류");
		model.addAttribute("contentsList", contensList);
		
		// 공지사항
		List resultList = new ArrayList();
		if(model.get("url").equals("/contents/board.do")){
			List list = selectList("board.getBoardList");
			
			int page = 1;
			
			if(model.get("page") != null){
				page = Integer.parseInt(model.get("page").toString());
			}
			
			int pageUnit = 0;
				for (Iterator iterator = list.iterator(); iterator.hasNext();) {
					pageUnit++;
		     		Map tempMap =(Map) iterator.next();
		     			if(pageUnit > (page-1)*10 && pageUnit < (page*10)+1){
				 			resultList.add(tempMap);
		     			}
		     		}
		 
				model.addAttribute("boardList", resultList);
				model.addAttribute("total", list.size());
				model.addAttribute("pasingSize", Integer.parseInt(model.get("total").toString())/10);
				
		}
		
		System.out.println(model.get("total"));
		System.out.println(resultList);

		return model;
	}
}
