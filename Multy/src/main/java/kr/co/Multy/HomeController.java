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
	 * main ������
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
	 * ��� ������ ȭ�� ������ jsp ���ϵ��� ��� contens ���� �Ʒ��� �־���Ѵ� 1.request�� �ִ� url������
	 * model�� �־��д� 2.model�� �ִ� url �����ͷ� jsp ������ ã�Ƽ� ȭ���� �����ش�
	 */
	@RequestMapping(value = "/contents/*.do", method = RequestMethod.GET)
	public ModelMap contentsView(ModelMap model, HttpServletRequest request) {
		UrlPathHelper urlPathHelper = new UrlPathHelper();
		model.addAttribute("url", urlPathHelper.getOriginatingRequestUri(request));

		List contensList = new ArrayList();
		contensList.add("�ޱ۷�");
		contensList.add("��ǰ��");
		contensList.add("���巹��");
		contensList.add("���������ַ�");
		contensList.add("���������ַ�");
		contensList.add("�簢 ��������");
		contensList.add("�����츮");
		contensList.add("�����츮");
		contensList.add("������ ���ַ�");
		model.addAttribute("contentsList", contensList);

		return model;
	}
}
