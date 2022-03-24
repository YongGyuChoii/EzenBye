<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <!-- css링크 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/base.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage.css" />
	<script src="<%=request.getContextPath() %>/resources/js/jquery-3.6.0.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/mypage.js"></script>
</head>
<body>
	<!-- 헤더 -->
	<header class="border-bottom border-dark">
		<%@include file="/WEB-INF/views/base/header.jsp"%>
	</header>

    <!-- 네비게이션 바 -->
    <nav class="navbar-expand-lg navbar-light bg-light fw-bold">
        <%@include file="/WEB-INF/views/base/nav.jsp"%>
    </nav>

    <!-- 섹션 -->
    <section class="mt-3">
        <div class="row">

            <!-- 왼쪽 사이드메뉴 -->
            <div class="col-2 pe-0" id="leftDiv">
                <aside id="leftAside">
                    <!-- 실질적인 왼쪽 사이드메뉴 내용 -->
                    <%@include file = "mypagenav.jsp" %>
                </aside>
            </div>

            <!-- 메인 -->
            <div class="col-8">
                <article id="mainSection \">
                    <!-- 실질적인 메인 내용 -->
                    <div class="col-md-11">
			        <div class="h-100 p-5 bg-light border rounded-3">
			          <p class="fs-2">홍길동님</p>
			          	<div class="row point">
				          <div class="col-sm-6">
				          	<span class="text-point">포인트</span>
				          </div>
				          <div class="col-sm-6">
				          	<span class="text-point">할인쿠폰</span>
				          </div>
			          	</div>
			          	<div class="row">
				          <div class="col-sm-6">
				          	<span class="number-point">0P</span>
				          </div>
				          <div class="col-sm-6">
				          	<span class="number-point">0장</span>
				          </div>
			          	</div>
			        </div>
			        
			        <p class="fs-6 lookup-fs-6">최근주문</p>
			        <hr />
			        <div class="row">
			        	<div class="col-sm-3">
			        		<span>2022.3.15</span>
			        	</div>
			        	<div class="col-sm-6">
			        		<span>주문번호 : ADDF1325</span>
			        	</div>
			        	<div class="col-sm-3 findT">
			        		<a href="#"><span>배송조회</span></a>
			        	</div>
			        </div>
			        
			        <div class="h-100 p-2 bg-light border rounded-3 card-good">
			        	<div class="row">
			        		<div class="col-sm-4">
			        			<span>배송완료</span>
			        		</div>
			        		<div class="col-sm-8 number-good">
			        			<span>상품 주문번호 : DFSD5649</span>
			        		</div>
			        	</div>
			        	<div class="row">
			        		<div class="col-sm-3">
			        			<img src="<%=request.getContextPath() %>/resources/img/mypage/good.jpg" class="img-thumbnail" alt="...">
			        		</div>
			        		<div class="col-sm-8 d-flex align-items-start flex-column mb-3">
						    	<div class="mb-auto p-2">비비고 진한고기만두400g*2번들</div>
  								<div class="p-2">4580원 | 5개</div>
			        		</div>
			        	</div>
			        	
			        	<div class="d-grid gap-2 col-6 mx-auto">
						  <button class="btn btn-outline-secondary" type="button">구매확정</button>
						</div>
			        </div>
			        
			        <div class="row">
			        	<div class="col-sm-3">		        	
			        	</div>
			        	<div class="col-sm-6">			        		
			        	</div>
			        	<div class="col-sm-3 findT">
			        		<a href="#"><span>배송조회</span></a>
			        	</div>
			        </div>
			        <div class="h-100 p-2 bg-light border rounded-3 card-good">
			        	<div class="row">
			        		<div class="col-sm-4">
			        			<span>구매확정</span>
			        		</div>
			        		<div class="col-sm-8 number-good">
			        			<span>상품 주문번호 : DFSD5649</span>
			        		</div>
			        	</div>
			        	<div class="row">
			        		<div class="col-sm-3">
			        			<img src="<%=request.getContextPath() %>/resources/img/mypage/good.jpg" class="img-thumbnail" alt="...">
			        		</div>
			        		<div class="col-sm-8 d-flex align-items-start flex-column mb-3">
						    	<div class="mb-auto p-2">비비고 진한고기만두400g*2번들</div>
  								<div class="p-2">4580원 | 5개</div>
			        		</div>
			        	</div>
			        	
			        	<div class="d-grid gap-2 d-md-flex justify-content-md-end">			  
						  <button class="btn btn-outline-secondary" type="button">리뷰작성</button>
						</div>
			        </div>
			        
			        <p class="fs-6 lookup-fs-6">최근 문의내역</p>
			        <hr />
			        <div class="table-responsive">
				        <table class="table table-hover">
						  <thead>
						    <tr>
						      <th scope="col">답변상태</th>
						      <th scope="col">제목</th>
						      <th scope="col">유형</th>
						      <th scope="col">날짜</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th scope="row">처리중</th>
						      <td>음식이 이상해요</td>
						      <td>상품</td>
						      <td>2022.1.24</td>
						    </tr>
						    <tr>
						      <th scope="row">처리중</th>
						      <td>음식이 터졌어요</td>
						      <td>상품</td>
						      <td>2022.1.20</td>
						    </tr>
						    <tr>
						      <th scope="row">처리완료</th>
						      <td>한개가 덜왔어요</td>
						      <td>상품</td>
						      <td>2022.1.8</td>
						    </tr>
						  </tbody>
						</table>
					</div>
			        
      			</div>
                </article>
            </div>

            <!-- 오른쪽 사이드메뉴 -->
            <div class="col-2 d-none d-sm-block">
                <!-- 실질적인 오른쪽 사이드메뉴 내용 -->
                <%@include file="/WEB-INF/views/base/rightAside.jsp"%>
            </div>

        </div>
    </section>

    <!-- 푸터 -->
    <footer class="py-3 my-4">
        <%@include file="/WEB-INF/views/base/footer.jsp"%>
    </footer>

    <!-- 자바스크립트 -->
    <script src="https://kit.fontawesome.com/b30bc4e0a9.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/base.js"></script>
</body>
</html>