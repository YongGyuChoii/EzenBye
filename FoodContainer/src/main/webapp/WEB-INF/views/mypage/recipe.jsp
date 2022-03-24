<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 레시피</title>
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
	
	<style>
	.nav6 {
		color: orange;
	}
	</style>
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
				 
			        <p class="fs-6 lookup-fs-6">나의 레시피</p>
			        <p class="fs-6 lookup-fs-6">4개의 레시피가 있습니다.</p>
			        <hr />
			        
			        <div class="row row-cols-1 row-cols-lg-3 row-cols-md-2 row-cols-sm-2 g-4">
					  <div class="col">
					    <div class="card h-100">
					      <img src="<%=request.getContextPath() %>/resources/img/mypage/good.jpg" class="card-img-top" alt="...">
					      <div class="card-body">
					        <h6 class="card-title"> 	
							  <div class="row">
								  <div class="col-12 text-truncate">
								    중식 특유의 그 맛이 땡기는 날! 멀리 나가지 않아도, 배달기다릴 필요 없습니다.
								  </div>
							  </div> 
					        </h6>
					        	<div class="row recipe-text">
					        		<div class="col">
					        			추천수(2)
					        		</div>
					        		<div class="col">
					        			조회수(67) 
					        		</div>
					        		<div class="col">
					        			댓글(3)
					        		</div>
				        		</div>
					      </div>
					    </div>
					  </div>
					  <div class="col">
					    <div class="card h-100">
					      <img src="<%=request.getContextPath() %>/resources/img/mypage/good2.jpg" class="card-img-top" alt="...">
					      <div class="card-body">
					        <h6 class="card-title"> 	
							  <div class="row">
								  <div class="col-12 text-truncate">
								    중식 특유의 그 맛이 땡기는 날! 멀리 나가지 않아도, 배달기다릴 필요 없습니다.
								  </div>
							  </div> 
					        </h6>
					        	<div class="row recipe-text">
					        		<div class="col">
					        			추천수(2)
					        		</div>
					        		<div class="col">
					        			조회수(67) 
					        		</div>
					        		<div class="col">
					        			댓글(3)
					        		</div>
				        		</div>
					      </div>
					    </div>
					  </div>
					  <div class="col">
					    <div class="card h-100">
					      <img src="<%=request.getContextPath() %>/resources/img/mypage/good3.jpg" class="card-img-top" alt="...">
					      <div class="card-body">
					        <h6 class="card-title"> 	
							  <div class="row">
								  <div class="col-12 text-truncate">
								    중식 특유의 그 맛이 땡기는 날! 멀리 나가지 않아도, 배달기다릴 필요 없습니다.
								  </div>
							  </div> 
					        </h6>
					        	<div class="row recipe-text">
					        		<div class="col">
					        			추천수(2)
					        		</div>
					        		<div class="col">
					        			조회수(67) 
					        		</div>
					        		<div class="col">
					        			댓글(3)
					        		</div>
				        		</div>
					      </div>
					    </div>
					  </div>
					  <div class="col">
					    <div class="card h-100">
					      <img src="<%=request.getContextPath() %>/resources/img/mypage/good4.jpg" class="card-img-top" alt="...">
					      <div class="card-body">
					        <h6 class="card-title"> 	
							  <div class="row">
								  <div class="col-12 text-truncate">
								    중식 특유의 그 맛이 땡기는 날! 멀리 나가지 않아도, 배달기다릴 필요 없습니다.
								  </div>
							  </div> 
					        </h6>
					        	<div class="row recipe-text">
					        		<div class="col">
					        			추천수(2)
					        		</div>
					        		<div class="col">
					        			조회수(67) 
					        		</div>
					        		<div class="col">
					        			댓글(3)
					        		</div>
				        		</div>
					      </div>
					    </div>
					  </div>
					</div>
					
					<nav aria-label="Page navigation example">
					  <ul class="pagination review-paging">
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
	        		        
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