package kr.co.Multy;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Delete;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		
		// LIST
		
		/*List list = selectList("sample.selectSample");
		System.out.println(list);*/
		
		// INSERT
		/*model.addAttribute("a",6);
		model.addAttribute("b","idid");
		model.addAttribute("c","paspas");
		setInsert("sample.insertMember", model);*/
		
		// UPDATE
		/*model.addAttribute("idx",6);
		model.addAttribute("id","updateId");
		model.addAttribute("pass","updatePassword");
		setInsert("sample.updateMember", model);
		
		list = selectList("sample.selectSample");
		System.out.println(list);*/
		
		// DELETE
		/*
		model.addAttribute("idx", 1);
		delete("sample.deleteMember",model);
		list = selectList("sample.selectSample");
		System.out.println(list);
		*/
		return "home";
	}

	/**
	 * 모든 컨텐츠 화면 컨텐츠 jsp 파일들은 모두 contens 파일 아래에 있어야한다 1.request에 있는 url정보를
	 * model에 넣어어둔다 2.model에 있는 url 데이터로 jsp 파일을 찾아서 화면을 보여준다
	 */
	@RequestMapping(value = "/contents/*.do", method = RequestMethod.GET)
	public ModelMap contentsView(ModelMap model, HttpServletRequest request) {
		UrlPathHelper urlPathHelper = new UrlPathHelper();
		model.addAttribute("url", urlPathHelper.getOriginatingRequestUri(request));

		List contensList = new ArrayList();
		contensList.add("앵글류");
		contensList.add("부품류");
		contensList.add("가드레일");
		contensList.add("파이프주주류");
		contensList.add("파이프주주류");
		contensList.add("사각 파이프류");
		contensList.add("돼지우리");
		contensList.add("돼지우리");
		contensList.add("파이프 주주류");
		model.addAttribute("contentsList", contensList);

		return model;
	}
}
