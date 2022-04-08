package team.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import team.project.util.PagingUtil;
import team.project.vo.ProductVO;
import team.project.vo.SearchVO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String Namespace = "team.project.mapper.productMapper";
	
	public List<ProductVO> productListAll(ProductVO productVO) throws Exception{
		return sqlSession.selectList(Namespace+".ProductListAll",productVO);
	}
	
	public ProductVO view(String index) {
		
		return sqlSession.selectOne(Namespace+".view",index);

	}
	
	/*여기서 부터는 관리자페이지*/
	
	// 상품 조회할때 페이징
	public int adminProductListCount(SearchVO searchvo) throws Exception{
		return sqlSession.selectOne(Namespace + ".adminProductListCount", searchvo);
	}
	
	// 상품 조회
	public List<ProductVO> adminProductList(PagingUtil paging) throws Exception{
		return sqlSession.selectList(Namespace + ".adminProductList", paging);
	}
	
	// 상품 삭제
	public int adminProductDelYNisY(List<String> deleteIndexList) throws Exception {
		return sqlSession.update(Namespace + ".adminProductDelYNisY", deleteIndexList);
	}
	
	// 상품 상세조회
	public ProductVO adminProductSelectOne(String product_index) throws Exception{
		return sqlSession.selectOne(Namespace + ".adminProductSelectOne", product_index);
	}
	
	// 상품 등록 전에 상품 번호를 조회하는 과정
	public List<ProductVO> adminProductIndexSelectList(String productIndex) throws Exception{
		return sqlSession.selectList(Namespace + ".adminProductIndexSelectList", productIndex);
	}
	
	// 상품 등록
	public int adminProductInsert(ProductVO product) throws Exception{
		return sqlSession.insert(Namespace + ".adminProductInsert", product);
	}
}
