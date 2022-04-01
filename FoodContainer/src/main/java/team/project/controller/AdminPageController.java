package team.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminPageController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "admin.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "adminPage/adminPage_main";
	}
	
	@RequestMapping(value = "member_list.do", method = RequestMethod.GET)
	public String member_list(Locale locale, Model model) {
		return "adminPage/adminPage_member_list";
	}
	
	@RequestMapping(value = "member_detail.do", method = RequestMethod.GET)
	public String member_detail(Locale locale, Model model) {
		return "adminPage/adminPage_member_detail";
	}
	
	@RequestMapping(value = "black_list.do", method = RequestMethod.GET)
	public String black_list(Locale locale, Model model) {
		return "adminPage/adminPage_black_list";
	}
	
	@RequestMapping(value = "black_detail.do", method = RequestMethod.GET)
	public String black_detail(Locale locale, Model model) {
		return "adminPage/adminPage_black_detail";
	}
	
	@RequestMapping(value = "dely_list.do", method = RequestMethod.GET)
	public String dely_list(Locale locale, Model model) {
		return "adminPage/adminPage_delY_list";
	}
	
	@RequestMapping(value = "dely_detail.do", method = RequestMethod.GET)
	public String dely_detail(Locale locale, Model model) {
		return "adminPage/adminPage_delY_detail";
	}
	
	@RequestMapping(value = "report.do", method = RequestMethod.GET)
	public String report(Locale locale, Model model) {
		return "adminPage/adminPage_report_list";
	}
	
	@RequestMapping(value = "member_order_list.do", method = RequestMethod.GET)
	public String member_order_list(Locale locale, Model model) {
		return "adminPage/adminPage_member_order_list";
	}
	
	@RequestMapping(value = "member_order_detail.do", method = RequestMethod.GET)
	public String member_order_detail(Locale locale, Model model) {
		return "adminPage/adminPage_member_order_detail";
	}
	
	@RequestMapping(value = "notMember_order_list.do", method = RequestMethod.GET)
	public String notMember_order_list(Locale locale, Model model) {
		return "adminPage/adminPage_notMember_order_list";
	}
	
	@RequestMapping(value = "notMember_order_detail.do", method = RequestMethod.GET)
	public String notMember_order_detail(Locale locale, Model model) {
		return "adminPage/adminPage_notMember_order_detail";
	}
	
	@RequestMapping(value = "cancel_list.do", method = RequestMethod.GET)
	public String cancel_list(Locale locale, Model model) {
		return "adminPage/adminPage_order_cancel_list";
	}
	
	@RequestMapping(value = "product_main.do", method = RequestMethod.GET)
	public String product_main(Locale locale, Model model) {
		return "adminPage/adminPage_product_main";
	}
	
	@RequestMapping(value = "product_register.do", method = RequestMethod.GET)
	public String product_register(Locale locale, Model model) {
		return "adminPage/adminPage_product_register";
	}
	
	@RequestMapping(value = "product_detail.do", method = RequestMethod.GET)
	public String product_detail(Locale locale, Model model) {
		return "adminPage/adminPage_product_detail";
	}
	
	@RequestMapping(value = "product_modify.do", method = RequestMethod.GET)
	public String product_modify(Locale locale, Model model) {
		return "adminPage/adminPage_product_modify";
	}
	
	@RequestMapping(value = "product_delete_detail.do", method = RequestMethod.GET)
	public String product_delete_detail(Locale locale, Model model) {
		return "adminPage/adminPage_product_delete_detail";
	}
	
	@RequestMapping(value = "product_delete_list.do", method = RequestMethod.GET)
	public String product_delete_list(Locale locale, Model model) {
		return "adminPage/adminPage_product_delete_list";
	}
	
	@RequestMapping(value = "banner.do", method = RequestMethod.GET)
	public String banner(Locale locale, Model model) {
		return "adminPage/adminPage_banner";
	}
	
	@RequestMapping(value = "bestRecipe.do", method = RequestMethod.GET)
	public String bestRecipe(Locale locale, Model model) {
		return "adminPage/adminPage_bestRecipe";
	}
	
	@RequestMapping(value = "event.do", method = RequestMethod.GET)
	public String event(Locale locale, Model model) {
		return "adminPage/adminPage_event";
	}
	
	@RequestMapping(value = "settlement.do", method = RequestMethod.GET)
	public String settlement(Locale locale, Model model) {
		return "adminPage/adminPage_settlement";
	}
}