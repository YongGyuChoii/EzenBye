package team.project.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import team.project.service.CartService;
import team.project.service.CouponService;
import team.project.service.DibsService;
import team.project.service.MemberService;
import team.project.service.OrderProductService;
import team.project.service.OrdersService;
import team.project.service.ReviewService;
import team.project.service.ServiceCenterService;
import team.project.vo.CartVO;
import team.project.vo.CouponVO;
import team.project.vo.DibsVO;
import team.project.vo.MemberVO;
import team.project.vo.OrderProductVO;
import team.project.vo.OrdersVO;
import team.project.vo.ReviewVO;
import team.project.vo.ServiceCenterVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MypageController {
	
	//로그인 세션 만료시 메인페이지로 이동
	@RequestMapping(value = "memberSessionCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public String memberSessionCheck(HttpSession session) throws Exception {

		MemberVO sessionMember = (MemberVO) session.getAttribute("member");
		if(sessionMember == null) {
			return "false";
		}else {
			return "true";
		}
	
	}
	
	@Autowired
	private ServiceCenterService serviceCenterService;
	@Autowired
	private CouponService couponService;
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private OrderProductService orderProductService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private DibsService dibsService;
	@Autowired
	private CartService cartService;
	
	 // 리뷰 등록
	 @RequestMapping(value = "writeReview.do", method = RequestMethod.POST)
	 public String bannerRegister(Locale locale, Model model, String orderItem_index, ReviewVO reviewVO,
	 @RequestParam("reviewImage") MultipartFile reviewImage, int rating, HttpServletRequest
	 request) throws Exception {
		  
		  int revieweOk = reviewService.revieweOk(orderItem_index);
		 
		  int result = reviewService.reviewInsert(reviewVO, reviewImage, rating, request);
		  
		  if(result > 0 && revieweOk > 0) { 
			  return "redirect:mypage_review.do"; 
		  }else {
			  return "redirect:mypage_main.do"; 
		  }
	  }
	 
	// 구매확정버튼 클릭시 구매확정으로 바꾸고, 멤버 포인트 쌓임
	@RequestMapping(value = "buyOk.do", method = RequestMethod.POST)
	@ResponseBody
	public String buyOk(String orderItem_index, int point, HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		int member_index = member.getMember_index();
		int buyOk = orderProductService.buyOk(orderItem_index);
		memberService.updatePoint(point, member_index);
		
		return "true";
	}
	
	// 관심상품 -> 장바구니 추가
	@RequestMapping(value = "cartInsert.do", method = RequestMethod.POST)
	@ResponseBody
	public String cartInsert(Locale locale, Model model, CartVO cartVO, String product_index, int member_index) throws Exception {
		
		List<CartVO> selectList = cartService.selectList(member_index);
		String result = "true";
		System.out.println(selectList.size());
		for(int i=0; i<selectList.size(); i++) {
			if(selectList.get(i).getProduct_index().equals(product_index) && selectList.get(i).getMember_index() == member_index) {
				result = "false";
				break;
			}
		}
		if(result.equals("true")) {
			int cartInsert = cartService.cartInsert(cartVO);
		}
		return result;
		
	}
	
	// 마이페이지 관심상품 삭제
	@RequestMapping(value = "dibsDeleteMypage.do", method = RequestMethod.POST)
	@ResponseBody
	public String dbisDeleteMypage(Locale locale, Model model, DibsVO dibsVO) throws Exception {
		
		dibsService.dibsDelete(dibsVO);
		
		return "true";
	}
	
	// 회원탈퇴
	@RequestMapping(value = "deleteMember.do", method = RequestMethod.POST)
	@ResponseBody
	public String deleteMember(MemberVO memberVO, HttpSession session) throws Exception {
		
		int mypageMemberDelete = memberService.mypageMemberDelete(memberVO);
		session.invalidate();
		return "true";
	}
	
	// 개인정보 변경 비밀번호 입력
	@RequestMapping(value ="pwCheck.do", method= RequestMethod.POST)
	public String logingo(MemberVO vo,HttpServletRequest req,RedirectAttributes rttr, HttpServletResponse response) throws Exception{

		// 세션 소환
		HttpSession session =req.getSession();
		
		// 로그인 검증 과정(id, pw 비교해서 맞으면 login에 잘 담아서 오고 틀리면 null로 리턴)
		MemberVO login = memberService.Login(vo);
		
		if(login !=null) {// 로그인 검증 통과의 경우
			return "redirect:mypage_changeInforOk.do";
		}else {// 로그인 검증 실패의 경우
			
			response.setContentType("text/html; charset=UTF-8");
			 
			PrintWriter out = response.getWriter();
			 
			out.println("<script>alert('비밀번호가 틀렸습니다.'); </script>");
			 
			out.flush();
			return "mypage/changeInfor";
		}
	}
	
	// 개인정보 변경
	@RequestMapping(value ="mypageMemberModify.do", method= RequestMethod.POST)
	public String mypageMemberModify(Locale locale, Model model, MemberVO memberVO) throws Exception{
		
		int mypageMemberModify = memberService.mypageMemberModify(memberVO);
		
		return "redirect:mypage_changeInforOk.do";
	}
	
	// 개인정보 비번 변경
	@RequestMapping(value = "mypageMemberpwModify.do", method = RequestMethod.POST)
	@ResponseBody
	public String mypageMemberpwModify(MemberVO memberVO,HttpServletRequest req,RedirectAttributes rttr) throws Exception {
		
		String result = "true";
		
		// 세션 소환
		HttpSession session =req.getSession();
		
		// 로그인 검증 과정(id, pw 비교해서 맞으면 login에 잘 담아서 오고 틀리면 null로 리턴)
		MemberVO corretPW = memberService.corretPW(memberVO);
		
		if(corretPW !=null) {// 로그인 검증 통과의 경우
			return "redirect:mypage_changeInforOk.do";
		}else {// 로그인 검증 실패의 경우
			return "mypage/changeInfor";
		}
	}
	
	@RequestMapping(value = "mypage_main.do", method = RequestMethod.GET)
	public String main(Locale locale, Model model, OrderProductVO opVO, HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		int member_index = member.getMember_index();
		
		MemberVO memberInfor = memberService.memberInfor(member_index);
		List<ServiceCenterVO> list = serviceCenterService.latelyServiceCenter(member_index);
		List<OrdersVO> ordersList = ordersService.ordersList(member_index);
		List<OrderProductVO> opList = orderProductService.orderProductList(opVO);
		int couponvo = couponService.mypageCouponCount(member_index);
		model.addAttribute("list",list);
		model.addAttribute("couponvo",couponvo);
		model.addAttribute("ordersList",ordersList);
		model.addAttribute("opList",opList);
		model.addAttribute("opListSize",opList.size());
		model.addAttribute("memberInfor",memberInfor);
		
		return "mypage/main";
	}
	
	@RequestMapping(value = "mypage_lookup.do", method = RequestMethod.GET)
	public String lookup(Locale locale, Model model, HttpSession session, OrderProductVO opVO) throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		int member_index = member.getMember_index();
		MemberVO memberInfor = memberService.memberInfor(member_index);
		
		List<OrdersVO> ordersList = ordersService.ordersListAll(member_index);
		
		List<OrderProductVO> opList = orderProductService.orderProductList(opVO);
		
		model.addAttribute("ordersList",ordersList);
		
		model.addAttribute("opList",opList);
		model.addAttribute("opListSize",opList.size());
		
		model.addAttribute("memberInfor",memberInfor);
		
		return "mypage/lookup";
	}
	
	@RequestMapping(value = "mypage_lookupView.do", method = RequestMethod.GET)
	public String lookupDetail(Locale locale, Model model, String member_order_index, OrderProductVO opVO, HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		int member_index = member.getMember_index();
		MemberVO memberInfor = memberService.memberInfor(member_index);
		
		OrdersVO ordersDetail = ordersService.ordersDetail(member_order_index);
		
		OrdersVO ordersDetailJoin = ordersService.ordersDetailJoin(member_order_index);
		
		List<OrderProductVO> opList = orderProductService.orderProductList(opVO);
		
		model.addAttribute("ordersDetail",ordersDetail);
		
		model.addAttribute("ordersDetailJoin",ordersDetailJoin);
		
		model.addAttribute("opList",opList);
		
		model.addAttribute("opListSize",opList.size());
		
		model.addAttribute("memberInfor",memberInfor);
		
		return "mypage/lookupView";
	}
	
	@RequestMapping(value = "mypage_interItem.do", method = RequestMethod.GET)
	public String dibsListAllJoin(Locale locale, Model model, HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		int member_index = member.getMember_index();
		List<DibsVO> dibsListAllJoin = dibsService.dibsListAllJoin(member_index);
		
		int dibsListCount = dibsService.dibsListCount(member_index); 
		
		model.addAttribute("dibsListAllJoin",dibsListAllJoin);
		model.addAttribute("dibsListCount",dibsListCount);
		
		return "mypage/interItem";
	}
	
	@RequestMapping(value = "mypage_coupon.do", method = RequestMethod.GET)
	public String couponList(Locale locale, Model model, HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		int member_index = member.getMember_index();
		
		List<CouponVO> couponList = couponService.couponList(member_index);
		int couponvo = couponService.mypageCouponCount(member_index);
		
		model.addAttribute("couponList",couponList);
		model.addAttribute("couponvo",couponvo);
		
		return "mypage/coupon";
	}
	
	@RequestMapping(value = "mypage_review.do", method = RequestMethod.GET)
	public String reviewList(Locale locale, Model model, HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		int member_index = member.getMember_index();
		
		List<ReviewVO> reviewList = reviewService.reviewList(member_index);
		int countList = reviewService.countList(member_index);
		
		model.addAttribute("reviewList",reviewList);
		model.addAttribute("countList",countList);
		
		return "mypage/review";
	}
	
	@RequestMapping(value = "mypage_recipe.do", method = RequestMethod.GET)
	public String home9(Locale locale, Model model) {
		return "mypage/recipe";
	}
	
	@RequestMapping(value = "mypage_inquiries.do", method = RequestMethod.GET)
	public String home10(Locale locale, Model model, HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		int member_index = member.getMember_index();
		
		List<ServiceCenterVO> serviceCenterList = serviceCenterService.serviceCenterList(member_index);
		
		int countServiceCenter = serviceCenterService.countServiceCenter(member_index);
		
		model.addAttribute("serviceCenterList",serviceCenterList);
		model.addAttribute("countServiceCenter",countServiceCenter);
		
		return "mypage/inquiries";
	}
	
	@RequestMapping(value = "mypage_changeInfor.do", method = RequestMethod.GET)
	public String home11(Locale locale, Model model) {	
		return "mypage/changeInfor";
	}
	
	@RequestMapping(value = "mypage_changeInforOk.do", method = RequestMethod.GET)
	public String home12(Locale locale, Model model, HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		int member_index = member.getMember_index();
		MemberVO memberInfor = memberService.memberInfor(member_index);
		
		model.addAttribute("memberInfor",memberInfor);
		
		return "mypage/changeInforOk";
	}
	@RequestMapping(value = "mypage_addressManage.do", method = RequestMethod.GET)
	public String home13(Locale locale, Model model) {
		return "mypage/addressManage";
	}
	@RequestMapping(value = "mypage_noteManage.do", method = RequestMethod.GET)
	public String home14(Locale locale, Model model) {
		return "mypage/noteManage";
	}
	@RequestMapping(value = "mypage_noteManageView.do", method = RequestMethod.GET)
	public String home15(Locale locale, Model model) {
		return "mypage/noteManageView";
	}
	@RequestMapping(value = "mypage_memberSecession.do", method = RequestMethod.GET)
	public String home16(Locale locale, Model model) {
		return "mypage/memberSecession";
	}
	
}
