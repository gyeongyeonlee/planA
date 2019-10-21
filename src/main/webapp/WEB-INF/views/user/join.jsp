<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Plan A - 여행을 알차게!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="${contextPath }/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath }/resources/css/animate.css">
    
    <link rel="stylesheet" href="${contextPath }/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${contextPath }/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${contextPath }/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="${contextPath }/resources/css/aos.css">

    <link rel="stylesheet" href="${contextPath }/resources/css/ionicons.min.css">
    
    <link rel="stylesheet" href="${contextPath }/resources/css/flaticon.css">
    <link rel="stylesheet" href="${contextPath }/resources/css/icomoon.css">
	<link rel="stylesheet" href="${contextPath }/resources/css/style.css">
	
	<style>
		*{
			font-family: '나눔바른고딕';
		}

		h1, h2, h3, h4, h5, h6{
			font-family: '나눔바른고딕';
		}
		
		#footer-div{
			background-color: #F8F9FA;
			height:40%;
        }

        .joinInfoLb{
            margin-left:20%;
        }

		#birthYear{
			margin-left:20%;
			width:19%;
			display: inline;
		}

		#birthMonth{
			width:19%;
			display: inline;
		}

		#birthDay{
			float:right;
			margin-right:20%;
			width:19%;
			display: inline;
		}

        #fileName{
            display: inline;
            width:45%;
            margin-left:20%;
        }

        #fileLb{
            display: inline;
            float:right;
            margin-right:20%;
            width:15%;
            line-height: 50px;
        }
		
        #uploadBtn{
            position: absolute;
            overflow: hidden; 
            clip:rect(0,0,0,0); 
        }
               
        .validateLb{
        	margin-left:20%;
        	color:red;
        }
	</style>
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
            <div class="container">
              <img src="${contextPath }/resources/images/air-transport_pink.png" width="50px">&nbsp;&nbsp;&nbsp;<a class="navbar-brand" href="index.html">Plan A</a>
              <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
              </button>
    
              <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav nav ml-auto">
                    <li class="nav-item"><a href="myRoute.html" class="nav-link"><span>나만의 여행</span></a></li>
                    <li class="nav-item"><a href="tammaInfo.html" class="nav-link"><span>테마 여행</span></a></li>
                    <li class="nav-item"><a href="travelInformation.html" class="nav-link"><span>여행지 정보</span></a></li>
                    <li class="nav-item"><a href="togetherBoardList.html" class="nav-link"><span>동행 구하기</span></a></li>
                    <li class="nav-item"><a href="review.html" class="nav-link"><span>여행 후기</span></a></li>
                    <li class="nav-item"><a href="login.html" class="nav-link"><span>로그인</span></a></li>
                    <li class="nav-item"><a href="join.html" class="nav-link"><span>회원가입</span></a></li>
                    <li class="nav-item"><a href="myPage.html" class="nav-link"><span>마이페이지</span></a></li>
                </ul>
              </div>
            </div>
        </nav><br><br><br><br>

		<section class="ftco-section ftco-services-2" id="services-section">
			<div class="container">
				<div class="row justify-content-center pb-5">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading">Plan A</span>
            <h2 class="mb-4">회원가입</h2>
          </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="search-wrap-1 ftco-animate p-4">
                    <form action="#" class="search-property-1">
                        <div class="row">
                            <div class="col-lg align-items-end">
                                <div class="form-group">
                                    <div class="form-field">
                                        <label for="userId" class="joinInfoLb">아이디</label>
                                        <input type="text" class="form-control" id="userId" style="width:60%; margin: 0 auto;">
                                        <span id="validateId" class="validateLb">5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.</span>
                                        <br><br>
                                        <label for="userPwd" class="joinInfoLb">비밀번호</label>
                                        <input type="password" class="form-control" id="userPwd" style="width:60%; margin: 0 auto;"><br>
                                        <label for="userPwd2" class="joinInfoLb">비밀번호 재확인</label>
                                        <input type="password" class="form-control" id="userPwd2" style="width:60%; margin: 0 auto;"><br>
                                        <label for="userName" class="joinInfoLb">이름</label>
										<input type="text" class="form-control" id="userName" style="width:60%; margin: 0 auto;"><br>
										<label for="nickName" class="joinInfoLb">닉네임</label>
                                        <input type="text" class="form-control" id="nickName" style="width:60%; margin: 0 auto;"><br>
                                        <label for="birthYear" class="joinInfoLb">생년월일</label><br>
										<input type="text" class="form-control" id="birthYear" placeholder="년(4자리)">&nbsp;&nbsp;
										<select name="birthMonth" id="birthMonth" class="form-control">
											<option value="mon">월</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>
										<input type="text" class="form-control" id="birthDay" placeholder="일"><br><br>
										<label for="phone" class="joinInfoLb">휴대폰 번호</label>
                                        <input type="text" class="form-control" id="phone" style="width:60%; margin: 0 auto;"><br>
										<label for="email" class="joinInfoLb">이메일</label>
                                        <input type="text" class="form-control" id="email" style="width:60%; margin: 0 auto;"><br>										   
                                        <label class="joinInfoLb">프로필 사진</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <div class="profile">
                                            <input type="text" class="form-control" id="fileName" value="선택된 파일 없음" readonly>
                                            <label for="uploadBtn" class="form-control btn btn-primary" id="fileLb">찾아보기</label>
                                            <input type="file" id="uploadBtn" class="uploadBtn">
                                        </div><br><br>
                                        <input type="submit" class="form-control btn btn-primary" value="회원가입" style="width:60%; margin: 0 auto;"><br>
                                    </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
			</div>
        </section>

    <footer class="ftco-footer ftco-section" id="footer-div">
        <div class="container">
            <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <p><font size="5" color="#E2C0BB">About </font>&nbsp;<span><a href="index.html"><font size="5" color="gray">Plan A</font></a></span></p>
                <p><font color="gray">Plan A에서 자유롭게 여행을 계획해 보세요.</font></p>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4 ml-md-4">
                    <p><font size="5" color="#E2C0BB">Information</font></p>
                <ul class="list-unstyled">
                    <li><i class="icon-building-o"></i>&nbsp;&nbsp;서울시 강남구 테헤란로 14길 6</li>
                    <li><i class="icon-group"></i>&nbsp;&nbsp;여행을 떠나조</li>
                    <li></li>
                </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <p><font size="5" color="gray">Have a</font>&nbsp;<font size="5" color="#E2C0BB">Questions?</font></p>
                    <div class="block-23 mb-3">
                    <ul>
                        <li><i class="icon-phone"></i>&nbsp;&nbsp;02-201-9010</li>
                        <li><i class="icon-envelope-o"></i>&nbsp;&nbsp;travelwith@plana.com</li>
                    </ul>
                    </div>
                </div>
            </div>
            </div>
            <div class="row">
            <div class="col-md-12 text-center">
        
                <p><font color="gray"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by </font><a href="https://colorlib.com" target="_blank"><font color="gray">Colorlib</font></a>
    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
            </div>
        </div>
    </footer>

    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


    <script src="${contextPath }/resources/js/jquery.min.js"></script>
  <script src="${contextPath }/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${contextPath }/resources/js/popper.min.js"></script>
  <script src="${contextPath }/resources/js/bootstrap.min.js"></script>
  <script src="${contextPath }/resources/js/jquery.easing.1.3.js"></script>
  <script src="${contextPath }/resources/js/jquery.waypoints.min.js"></script>
  <script src="${contextPath }/resources/js/jquery.stellar.min.js"></script>
  <script src="${contextPath }/resources/js/owl.carousel.min.js"></script>
  <script src="${contextPath }/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${contextPath }/resources/js/aos.js"></script>
  <script src="${contextPath }/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${contextPath }/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${contextPath }/resources/js/google-map.js"></script>
  
  <script src="${contextPath }/resources/js/main.js"></script>

    <script>   
    $('#uploadBtn').on('change', function(){
        if(window.FileReader){
            console.log($(this));
            var fileName = $(this)[0].files[0].name;
        }else{
            var fileName = $(this).val().split('/').pop().split('\\').pop();
        }
        $(this).siblings('#fileName').val(fileName);
    });
    
    
    
    </script>
    </body>

</html>