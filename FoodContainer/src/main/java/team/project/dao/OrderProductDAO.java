package team.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import team.project.vo.OrderProductVO;

@Repository
public class OrderProductDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "team.project.mapper.orderProductMapper";
	
	public List<OrderProductVO> orderProductList(OrderProductVO vo) throws Exception {
		return sqlSession.selectList(Namespace+".orderProductList", vo);
	}
	
	public int buyOk(String orderItem_index) throws Exception {
		return sqlSession.update(Namespace+".buyOk",orderItem_index);
	}
}