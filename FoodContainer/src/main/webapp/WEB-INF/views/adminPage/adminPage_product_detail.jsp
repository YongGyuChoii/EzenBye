<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Container</title>
    <!-- css링크 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/adminPage.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/adminPage_leftMenu.css">
</head>
<body>
	<!-- 헤더 -->
	<header class="border-bottom border-dark">
		<%@include file="/WEB-INF/views/base/header.jsp"%>
	</header>

    <!-- 네비게이션 바 -->
    <nav class="navbar-expand-lg navbar-light bg-warning bg-gradient bg-opacity-25 fw-bold fs-5">
        <div class="row">
            <div class="col-lg-2 d-none d-lg-block"></div>

            <div class="col-2 col-sm-1 pe-0 d-lg-none" id="navLeftMenu">
				<%@include file="/WEB-INF/views/adminPage/adminPage_nav_leftMenu.jsp"%>
            </div>

			<%@include file="/WEB-INF/views/base/nav.jsp"%>

        </div>
    </nav>

    <!-- 섹션 -->
    <section class="mt-1">
        <div class="row">

            <!-- 왼쪽 사이드메뉴 -->
            <div class="col-lg-2 d-none d-lg-block">
               <%@include file="/WEB-INF/views/adminPage/leftAside.jsp"%>
            </div>

            <!-- 메인 -->
            <div class="col-12 col-sm-9 col-md-10 col-lg-8">
                <article id="mainSection">

                    <!-- 헤딩 -->
                    <div class="fs-5 my-2 fw-bold">
                        상품 상세정보
                    </div>
                    <br>
                    <!-- 상품상세조회 -->
                    <div class="container">
                        
                        <!-- 상품 분류 -->
                        <div class="h3 fw-bold ps-3">
                            [상품 분류]
                        </div>

                        <!-- 대분류 -->
                        <div class="row my-3 d-flex align-items-center">

                            <div class="col-4 d-flex justify-content-center">
                                <span class="infoTitle p-1">대분류</span>
                            </div>
                            <div class="col-8 col-md-6">
                                <input type="text" class="bg-light form-control" value="냉동식품" disabled>
                            </div>

                        </div>

                        <!-- 중분류 -->
                        <div class="row my-3 d-flex align-items-center">

                            <div class="col-4 d-flex justify-content-center">
                                <span class="infoTitle p-1">중분류</span>
                            </div>
                            <div class="col-8 col-md-6">
                                <input type="text" class="bg-light form-control" value="볶음밥" disabled>
                            </div>

                        </div>

                        <hr>

                        <!-- 상품 정보 -->
                        <div class="h3 fw-bold ps-3">
                            [상품 정보]
                        </div>

                        <!-- 브랜드 -->
                        <div class="row my-3 d-flex align-items-center">

                            <div class="col-4 d-flex justify-content-center">
                                <span class="infoTitle p-1">브랜드</span>
                            </div>

                            <div class="col-8 col-md-6">
                                <input type="text" class="bg-light form-control" value="CJ" disabled>
                            </div>

                        </div>

                        <!-- 상품 이름 -->
                        <div class="row my-3 d-flex align-items-center">

                            <div class="col-4 d-flex justify-content-center">
                                <span class="infoTitle p-1">상품이름</span>
                            </div>

                            <div class="col-8 col-md-6">
                                <input type="text" class="bg-light form-control" value="아몰라상품" disabled>
                            </div>

                        </div>

                        <!-- 판매&할인 가격 -->
                        <div class="row my-3 d-flex align-items-center">

                            <!-- 판매 가격 -->
                            <div class="col-4 d-flex justify-content-center">
                                <span class="infoTitle p-1">판매 가격</span>
                            </div>

                            <div class="col-8 col-md-2 mb-3 mb-md-0">
                                <div class="row">

                                    <div class="col-11 pe-0">
                                        <input type="text" class="form-control bg-light" style="text-align: right;" value="30,000" disabled>
                                    </div>

                                    <div class="col-1 d-flex align-items-center fw-bold px-0">원</div>

                                </div>
                            </div>

                            <!-- 할인 가격 -->
                            <div class="col-4 col-md-2 d-flex justify-content-center justify-content-md-end">
                                <span class="infoTitle p-1">할인 가격</span>
                            </div>

                            <div class="col-8 col-md-2">
                                <div class="row">

                                    <div class="col-11 pe-0">
                                        <input type="text" class="form-control bg-light" style="text-align: right;" value="23,000" disabled>
                                    </div>

                                    <div class="col-1 d-flex align-items-center fw-bold px-0">원</div>

                                </div>
                            </div>

                        </div>


                        <!-- 재고&배송비 -->
                        <div class="row my-3 d-flex align-items-center">

                            <!-- 재고 -->
                            <div class="col-4 d-flex justify-content-center">
                                <span class="infoTitle p-1">재고</span>
                            </div>

                            <div class="col-8 col-md-2 mb-3 mb-md-0">
                                <div class="row">

                                    <div class="col-11 pe-0">
                                        <input type="text" class="bg-light form-control" style="text-align: right;" value="1,350" disabled>
                                    </div>

                                    <div class="col-1 d-flex align-items-center fw-bold px-0">개</div>

                                </div>
                            </div>

                            <!-- 배송비 -->
                            <div class="col-4 col-md-2 d-flex justify-content-center justify-content-md-end">
                                <span class="infoTitle p-1">배송비</span>
                            </div>

                            <div class="col-8 col-md-2">
                                <div class="row">

                                    <div class="col-11 pe-0">
                                        <input type="text" class="bg-light form-control" style="text-align: right;" value="3,000" disabled>
                                    </div>

                                    <div class="col-1 d-flex align-items-center fw-bold px-0">원</div>

                                </div>
                            </div>

                        </div>

                        <!-- 판매 갯수 -->
                        <div class="row my-3 d-flex align-items-center">

                            <div class="col-4 d-flex justify-content-center">
                                <span class="infoTitle p-1">판매 갯수</span>
                            </div>

                            <div class="col-8 col-md-7">
                                <div class="row">

                                    <div class="col-11 col-md-10 pe-0">
                                        <input type="text" class="bg-light text-danger fw-bold form-control" style="text-align: right;" value="3,212" disabled>
                                    </div>

                                    <div class="col-1 d-flex align-items-center fw-bold px-0">개</div>

                                </div>
                            </div>

                        </div>

                        <hr>

                        <!-- 이미지 -->
                        <div class="h3 fw-bold ps-4">
                            [이미지]
                        </div>

                        <!-- 각종버튼들 -->
                        <div class="row my-3 d-flex align-items-center">

                            <!-- 대표이미지 -->
                            <div class="col-6 col-md-3 d-flex justify-content-center">
                                <button type="button" class="btn btn-primary btn-sm mb-3 col-12" data-bs-toggle="modal" data-bs-target="#sumnailImageModal">대표이미지</button>
                            </div>

                            <!-- 상세이미지 -->
                            <div class="col-6 col-md-3 d-flex justify-content-center">
                                <button type="button" class="btn btn-primary btn-sm mb-3 col-12" data-bs-toggle="modal" data-bs-target="#detailImageModal">상세이미지</button>
                            </div>

                            <!-- 배송정보 -->
                            <div class="col-6 col-md-3 d-flex justify-content-center">
                                <button type="button" class="btn btn-primary btn-sm mb-3 col-12" data-bs-toggle="modal" data-bs-target="#deliveryImageModal">배송정보</button>
                            </div>

                            <!-- 취소규정 -->
                            <div class="col-6 col-md-3 d-flex justify-content-center">
                                <button type="button" class="btn btn-primary btn-sm mb-3 col-12" data-bs-toggle="modal" data-bs-target="#cancelImageModal">취소규정</button>
                            </div> 

                        </div>

                        <!-- 관리버튼들 -->
                        <div class="gap-3">
                            <button type="button" class="btn btn-secondary mx-3 fw-bold">뒤로가기</button>
                            <button type="button" class="btn btn-primary mx-3 fw-bold" data-bs-toggle="modal" data-bs-target="#submitModal">상품수정</button>
                            <button type="button" class="btn btn-dark mx-3 fw-bold" data-bs-toggle="modal" data-bs-target="#submitModal">상품삭제</button>
                        </div>

                    </div>

                    <!-- 대표이미지 모달 -->
                    <div class="modal fade" id="sumnailImageModal" tabindex="-1" aria-labelledby="sumnailImageModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="sumnailImageModalLabel">대표이미지</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="imageContainer">
                                        <img src="1_1.png" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 상세이미지 모달 -->
                    <div class="modal fade" id="detailImageModal" tabindex="-1" aria-labelledby="detailImageModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="detailImageModalLabel">상세이미지</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="imageContainer">
                                        <img src="1_1.png" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 배송정보 모달 -->
                    <div class="modal fade" id="deliveryImageModal" tabindex="-1" aria-labelledby="deliveryImageModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="deliveryImageModalLabel">배송정보</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="imageContainer">
                                        <img src="1_1.png" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 취소규정 모달 -->
                    <div class="modal fade" id="cancelImageModal" tabindex="-1" aria-labelledby="cancelImageModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="cancelImageModalLabel">취소규정</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="imageContainer">
                                        <img src="1_1.png" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </article>
            </div>

            <!-- 오른쪽 사이드메뉴 -->
            <div class="col-sm-3 col-md-2 col-lg-2 d-none d-sm-block">
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
	<script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/base.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/adminPage.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/adminPage_leftMenu.js"></script>
</body>
</html>