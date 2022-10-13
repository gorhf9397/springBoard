package kr.co.board_model3.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.board_model3.mapper.BoardMapper;
import kr.co.board_model3.vo.BoardVo;

@Service
@Qualifier("bs")
public class BoardServiceImpl implements BoardService {
   
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public String list(Model model) {
		//board테이블에 있는 내용을 읽어오는 처리
		//내용을 읽어오고 난 후 model을통해 view에 전달
		//ArrayList<BoardVo> list=mapper.list();
		//model.addAttribute("list",list);
		model.addAttribute("list",mapper.list());
		//view의 값을 리턴
		return "/list";
	}
	//메소드를 실행한 후 제어권이 컨트롤러로 넘어간다.
	//return에 view를 전달하자
	
	@Override
	public String write_ok(BoardVo bvo) {
		mapper.write_ok(bvo);
		
		return "redirect:/list";
	}
	
	@Override
	public String readnum(HttpServletRequest request) {
		String id=request.getParameter("id");
		mapper.readnum(id);
		return "redirect:/content?id="+id;
	}
	
	@Override
	public String content(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		BoardVo bvo = mapper.content(id);
		bvo.setContent(bvo.getContent().replace("\r\n","<br>"));
		model.addAttribute("bvo",bvo);
		return "/content";
	}
	
	@Override
	public String delete(BoardVo bvo) {
		int id = bvo.getId();
		String pwd = bvo.getPwd();
		if(mapper.getpwd(id, pwd) == 1) {
			mapper.delete(bvo.getId());
			return "redirect:/list";
		} else {
			return "redirect:/content?id="+bvo.getId();
		}
	}
	
	@Override
	public String update(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		BoardVo bvo=mapper.update(id);
		
		model.addAttribute("bvo",bvo);
		
		return "/update";
	}
	
	@Override
	public String update_ok(BoardVo bvo) {
		mapper.update_ok(bvo);
//		String dbpwd=mapper.getpwd(bvo.getId());
//		if(bvo.getPwd().equals(dbpwd)) {
		if(mapper.getpwd(bvo.getId(), bvo.getPwd()) == 1) {
			mapper.update_ok(bvo);
			return "redirect:/content?id="+bvo.getId();
		} else {
			return "redirect:/update?id="+bvo.getId();
		}
	}
}
