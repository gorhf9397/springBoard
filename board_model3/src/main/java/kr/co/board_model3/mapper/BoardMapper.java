package kr.co.board_model3.mapper;

import java.util.ArrayList;

import kr.co.board_model3.vo.BoardVo;

public interface BoardMapper {
	//list를 읽어오는 추상메소드
	public ArrayList<BoardVo> list();
	
	public void write_ok(BoardVo bvo);
	
	public void readnum(String id);
	
	public BoardVo content(String id);
	
	public void delete(int id);
	
	public BoardVo update(String id);
	
	public void update_ok(BoardVo bvo);
	
	public int getpwd(int id,String pwd);
}
