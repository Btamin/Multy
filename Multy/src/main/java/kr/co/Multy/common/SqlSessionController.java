package kr.co.Multy.common;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

@Service
public class SqlSessionController {
	
	@Autowired
	SqlSession sqlSession;
	
	protected List selectList(String sql){
		HashMap<Object, Object> map = new HashMap<Object, Object>();
	    List<HashMap<String, String>> listMap = sqlSession.selectList(sql);
	    return listMap;
	}
	
	protected void setInsert(String sql, ModelMap data){
		sqlSession.insert(sql, data);
	}
	
	protected void setUpdate(String sql, ModelMap data){
		sqlSession.update(sql, data);
	}
	
	protected void delete(String sql, ModelMap data){
		sqlSession.delete(sql, data);
	}
	
}
