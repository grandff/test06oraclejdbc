package test.com.oraclejdbc;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import test.com.oraclejdbc.model.RequestVO;
import test.com.oraclejdbc.service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class RequestController {	
	private static final Logger logger = LoggerFactory.getLogger(RequestController.class);

	@Autowired
	private TestService ts;
	
	// 등록 페이지 이동
	@RequestMapping(value = "/insert.do", method = RequestMethod.GET)
	public String insertPage() {
		logger.info("insert on");
						
		return "/jsp/insert";
	}
	
	// 목록 페이지 이동
	@RequestMapping(value = "/selectAll.do", method = RequestMethod.GET)
	public String selectPage(Model model) {
		logger.info("select on");
		
		ArrayList<RequestVO> list = ts.selectAll();
		model.addAttribute("list", list);
						
		return "/jsp/selectAll";
	}
	
	@RequestMapping(value = "/search.do", method = RequestMethod.POST)
	public String search(Model model, RequestVO vo, String searchKey, String searchWord) {
		logger.info("select on");
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("searchKey", vo.getSearchKey());
		map.put("searchWord", vo.getSearchWord());
		
		ArrayList<RequestVO> list = ts.searchList(map);
		logger.info("select on !!!! {} " , list.size());
		model.addAttribute("list", list);
						
		return "/jsp/selectAll";
	}
	
	@RequestMapping(value = "/selectOne.do", method = RequestMethod.GET)
	public String selectOne( Model model, RequestVO vo, String name, String tel) {						
		logger.info("selectOne on ! vo : {}", vo);
		
		RequestVO requestVO = ts.selectOne(vo);
		
		try {												
			model.addAttribute("model", requestVO);			
		}catch(NullPointerException e1) {
			
		}catch(Exception e) {
			
		}				
						
		return "/jsp/selectOne";		
	}
	
	@SuppressWarnings("finally")
	@RequestMapping(value = "/insertOK.do", method = RequestMethod.POST)		
	public String insertOK(RequestVO vo) {			// 바로 vo를 입력해줌
		logger.info("insertOK on");
		logger.info("vo :: {}", vo);					// vo에 설정한 파라미터값이 출력됨
		int result = 0;						
		try {						
			result = ts.insert(vo);
			
		}catch(NullPointerException e) {
			
		}catch(IndexOutOfBoundsException e) {
			
		}catch(Exception e) {
			
		}finally {
			if(result == 1) return "redirect:selectAll.do";
			else return "redirect:insert.do";
		}	
	}
	
	@RequestMapping(value = "/deleteOK.do", method = RequestMethod.GET)		
	public String deleteOK(RequestVO vo) {			
		logger.info("deleteOK on");
		
		int result = ts.delete(vo);						
		try {						
						
		}catch(NullPointerException e) {
			
		}catch(IndexOutOfBoundsException e) {
			
		}catch(Exception e) {
			
		}finally {
			
		}	
		
		if(result == 1) return "redirect:selectAll.do";
		else return "redirect:insert.do";
	}
	
	@RequestMapping(value = "/updateOK.do", method = RequestMethod.POST)		
	public String updateOK(RequestVO vo) {			
		logger.info("updateOK on");
		logger.info("vo :: {}", vo);					
		int result = 0;						
		try {						
			result = ts.update(vo);
			
		}catch(NullPointerException e) {
			
		}catch(IndexOutOfBoundsException e) {
			
		}catch(Exception e) {
			
		}finally {
			
		}	
		
		if(result == 1) return "redirect:selectAll.do";
		else return "redirect:insert.do";
	}
	
}
