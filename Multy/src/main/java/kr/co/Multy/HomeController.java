package kr.co.Multy;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UrlPathHelper;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * main ������
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	/**
	 * ��� ������ ȭ��
	 * ������ jsp ���ϵ��� ��� contens ���� �Ʒ��� �־���Ѵ�
	 * 1.request�� �ִ� url������ model�� �־��д�
	 * 2.model�� �ִ� url �����ͷ� jsp ������ ã�Ƽ� ȭ���� �����ش�
	 */
	@RequestMapping(value = "/contents/*.do", method = RequestMethod.GET)
	public ModelMap contentsView(ModelMap model,HttpServletRequest request) {
		UrlPathHelper urlPathHelper = new UrlPathHelper();
		model.addAttribute("url", urlPathHelper.getOriginatingRequestUri(request));
		System.out.println(model.get("url"));
		
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
		if(model.get("url").equals("/contents/gallery.do")){
/*			
			model.addAttribute("contents1", "�ޱ۷�");
			model.addAttribute("contents2", "��ǰ��");
			model.addAttribute("contents3", "���巹��");
			model.addAttribute("contents4", "������ ���ַ�");
			model.addAttribute("contents5", "������ ���ַ�");
			model.addAttribute("contents6", "�簢 ��������");
			model.addAttribute("contents7", "�����츮");
			model.addAttribute("contents8", "�����츮");
			model.addAttribute("contents9", "������ ���ַ�");
*/		}
		
		return model;
	}
}
