<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 3번째 줄 추가한건데 이거 뭐지? -->
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
    <!-- 여기 주소 추가 resources하면 무한로딩됨 -->
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
    @media (min-width: 1200px) {
    .container {
    max-width: 1320px; } 
    }
    @media (min-width: 1200px) {
    .container1 {
    max-width: 1800px;
    margin:auto} 
    }
    

    label {
    display: inline-block;
    margin-bottom: 0;
    }

      .inputGroup {
      background-color: #fff;
      display: block;
      margin: 10px 0;
      position: relative;
    }
    .inputGroup label {
      padding: 10px 20px; /*세로 크기, 글자 앞 공백*/
      width: 100%;
      display: block;
      text-align: left;
      color: #3C454C;
      cursor: pointer;
      position: relative;
      z-index: 2;
      transition: color 200ms ease-in;
      overflow: hidden;
    }
    .inputGroup label:before {
      width: 10px;
      height: 10px;
      border-radius: 50%;
      content: '';
      background-color: #E2C0BB;
      position: absolute;
      left: 20%; /*색 채워지는 길이*/
      top: 20%;
      transform: translate(-50%, -50%) scale3d(1, 1, 1);
      transition: all 450ms cubic-bezier(0.4, 0, 0.2, 1);
      opacity: 0;
      z-index: -1;
    }
    .inputGroup label:after {
      width: 25px;
      height: 25px;
      content: '';
      border: 2px solid #D1D7DC;
      background-color: #fff;
      background-image: url("data:image/svg+xml,%3Csvg width='25%' height='23' viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M5.414 11L4 12.414l5.414 5.414L20.828 6.414 19.414 5l-10 10z' fill='%23fff' fill-rule='nonzero'/%3E%3C/svg%3E ");
      background-repeat: no-repeat;
      background-position: 2px 3px;
      border-radius: 50%;
      z-index: 2;
      position: absolute;
      right: 30px; /*단추*/
      top: 50%;
      transform: translateY(-50%);
      cursor: pointer;
      transition: all 200ms ease-in;
    }
    .inputGroup input:checked ~ label {
      color: #fff;
    }
    .inputGroup input:checked ~ label:before {
      transform: translate(-50%, -50%) scale3d(56, 56, 1);
      opacity: 1;
    }
    .inputGroup input:checked ~ label:after {
      background-color: #757575;
      border-color: #757575;
    }
    .inputGroup input {
      width: 32px;
      height: 32px;
      order: 1;
      z-index: 2;
      position: absolute;
      right: 30px;
      top: 50%;
      transform: translateY(-50%);
      cursor: pointer;
      visibility: hidden;
    }
    .form {
      padding: 0 16px;
      margin: 30px auto;
      font-size: 13px;
      font-weight: 600;
      line-height: 25px;
    }
    body {
      background-color: #fff;
      font-family: 'Fira Sans', sans-serif;
    }
    *, *::before, *::after {
      box-sizing: inherit;
    }
    html {
      box-sizing: border-box;
    }
    code {
      background-color: #9AA3AC;
      padding: 0 8px;
    }


    /* 탭 style */
    .ftco-section-search {
    background: #E2C0BB; 
    }
    .container0 {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto; }
    @media (min-width: 576px) {
      .container0 {
        max-width: 540px; } }
    @media (min-width: 768px) {
      .container0 {
        max-width: 720px; } }
    @media (min-width: 992px) {
      .container0 {
        max-width: 960px; } }
    @media (min-width: 1200px) {
      .container0 {
        max-width: 1140px; } }

    .container0-fluid {
      width: 100%;
      padding-right: 15px;
      padding-left: 15px;
      margin-right: auto;
      margin-left: auto; 
    }
    .nav-pills .nav-link.active,
    .nav-pills .show > .nav-link {
      color: #fff;
      background-color: #F8F9FA; 
    }

    .nav-pills .nav-link {
      border-radius: 0.25rem; 
    }

    .table {
    width: 50%;
    margin-right: auto;
    margin-left: auto;
    background-color: transparent; 
    position: relative;
    }
    .table th,
    .table td {
      color: black;
      font-family:나눔바른고딕;
      vertical-align: top;
      border-top: 1px solid #dee2e6; }
    .table thead th {
      vertical-align: bottom;
      border-bottom: 2px solid #dee2e6; }
    .table tbody + tbody {
      border-top: 2px solid #dee2e6; }
    .table .table {
      background-color: #F8F9FA; 
    }
    .table tbody tr th, .table tbody tr td {
      text-align: left !important;
      vertical-align: middle;
      padding: 10px 20px;
      border: 1px solid transparent !important;
      border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important; 
    }
    th{
      background: #dee2e6;
    }

    .test1{
      color: black;
    }

    p2{
      color: #757575;
    }

    h6{
      margin: auto;
      /*탭 가운데정렬*/
    }

    .btn-primary2{
      background: #9AA3AC;
      /*저장, 초기화*/
    }
    btn-primary3{
      position: relative;
      left: 800px;
    }


    /* 잠금버튼 */
  .btn-lock {
    display: inline-block;
    background: #20cca5;
    width: 35px;
    height: 35px;
    box-sizing: border-box;
    padding: 0px 0 0 0px;
    border-radius: 50%;
    cursor: pointer;
    -webkit-tap-highlight-color: transparent;
  }
  .btn-lock svg {
    fill: none;
    transform: translate3d(0, 0, 0);
  }
  .btn-lock svg .bling {
    stroke: #fff;
    stroke-width: 2.5;
    stroke-linecap: round;
    stroke-dasharray: 3;
    stroke-dashoffset: 15;
    transition: all 0.3s ease;
  }
  .btn-lock svg .lock {
    stroke: #fff;
    stroke-width: 4;
    stroke-linejoin: round;
    stroke-linecap: round;
    stroke-dasharray: 36;
    transition: all 0.4s ease;
  }
  .btn-lock svg .lockb {
    fill: #fff;
    fill-rule: evenodd;
    clip-rule: evenodd;
    transform: rotate(8deg);
    transform-origin: 14px 20px;
    transition: all 0.2s ease;
  }
  .inpLock {
    display: none;
  }
  .inpLock:checked + label {
    background: #ff5b5b;
  }
  .inpLock:checked + label svg {
    opacity: 1;
  }
  .inpLock:checked + label svg .bling {
    animation: bling 0.3s linear forwards;
    animation-delay: 0.2s;
  }
  .inpLock:checked + label svg .lock {
    stroke-dasharray: 48;
    animation: locked 0.3s linear forwards;
  }
  .inpLock:checked + label svg .lockb {
    transform: rotate(0);
    transform-origin: 14px 22px;
  }
  @-moz-keyframes bling {
    50% {
      stroke-dasharray: 3;
      stroke-dashoffset: 12;
    }
    100% {
      stroke-dasharray: 3;
      stroke-dashoffset: 9;
    }
  }
  @-webkit-keyframes bling {
    50% {
      stroke-dasharray: 3;
      stroke-dashoffset: 12;
    }
    100% {
      stroke-dasharray: 3;
      stroke-dashoffset: 9;
    }
  }
  @-o-keyframes bling {
    50% {
      stroke-dasharray: 3;
      stroke-dashoffset: 12;
    }
    100% {
      stroke-dasharray: 3;
      stroke-dashoffset: 9;
    }
  }
  @keyframes bling {
    50% {
      stroke-dasharray: 3;
      stroke-dashoffset: 12;
    }
    100% {
      stroke-dasharray: 3;
      stroke-dashoffset: 9;
    }
  }
  @-moz-keyframes locked {
    50% {
      transform: translateY(1px);
    }
  }
  @-webkit-keyframes locked {
    50% {
      transform: translateY(1px);
    }
  }
  @-o-keyframes locked {
    50% {
      transform: translateY(1px);
    }
  }
  @keyframes locked {
    50% {
      transform: translateY(1px);
    }
  }

  .filebox label{
      display: inline-block; 
      padding: .5em .75em; 
      color: #999; 
      font-size: inherit; 
      line-height: normal; 
      vertical-align: middle; 
      background-color: #fdfdfd; 
      cursor: pointer; 
      border: 1px solid #ebebeb; 
      border-bottom-color: #e2e2e2; 
      border-radius: .25em;
    }

    /* 파일 필드 숨기기 */
    .filebox input[type="file"] {  
      position: absolute; 
      width: 1px; 
      height: 1px; 
      padding: 0; 
      margin: -1px; 
      overflow: hidden; 
      clip:rect(0,0,0,0); 
      border: 0; 
    }
    

    .filebox.bs3-primary label {
  color: #757575;
  background-color: #ebebeb;
    border-color: #7575;
}

  .filebox.bs3-success label {
    color: #fff;
    background-color: #5cb85c;
      border-color: #4cae4c;
  }

    </style>
  </head>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
        <div class="container">
            <img src="${contextPath}/resources/images/air-transport_pink.png" width="50px">&nbsp;&nbsp;&nbsp;<a class="navbar-brand" href="index.html">Plan A</a>
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
      
      
    <!-- 마이페이지 시작 -->

    <div class="ftco-section-search">
      <div class="container0">
          <div class="row">
          <div class="col-md-12 tabulation-search">
              <div class="element-animate">
              <div class="nav nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                  <a class="nav-link p-3 active" name="tabMenu" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" aria-selected="true"><!-- role="tab" aria-controls="v-pills-home"-->
                  <h6 style="font-family:나눔바른고딕; color:#fff;" name="tabName">여행 히스토리</h6>
                  </a>

                  <a class="nav-link p-3" name="tabMenu" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-selected="false"><!-- aria-controls="v-pills-profile"-->
                  <h6 style="font-family:나눔바른고딕; color:#fff;" name="tabName">나의 게시물</h6>
                  </a>

                  <a class="nav-link p-3" name="tabMenu" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                    <h6 style="font-family:나눔바른고딕; color:#fff;" name="tabName">회원정보수정 & 탈퇴</h6>
                  </a>
              </div>
              </div>
          </div>
          </div>
      </div>
    </div>

  <div class="tab-content" id="v-pills-tabContent">
    <!-- 탭 첫번째 버튼 클릭 시 -->
      <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
      <!-- 여행 히스토리, 준비물체크 리스트-->
      <section class="ftco-section" style="padding:2em;" id="blog-section" >
        <div class="container1" style="float: center;"><!--height: 32px;-->
          <h4 style="font-family: 나눔바른고딕; color:#E2C0BB; text-align:center">History</h>
          <div class="row justify-content-center">
      <!-- 여행 히스토리 이미지-->
            <img src="${ contextPath }/resources/images/map.PNG" width="1000px;">
          </div>
          <!-- <u style="color:#E2C0BB;"> -->
            <h4 style="font-family: 나눔바른고딕; color:#757575; text-align:center">
            <b>준비물 체크리스트</b>
          </h4><hr style="border:solid 3px #E2C0BB; width:84%">
        <!-- </u> -->
            &nbsp&nbsp&nbsp&nbsp
            <div><!--폼이랑 저장,초기화까지담은 div-->
            <div class="row justify-content-center" align-items> <!-- justify-content-center 가운데정렬-->
                <!-- div안에 가운데의 가운데정렬 -->
                <!-- 체크리스트 -->
                <div class="checkList" id="checkList">
                  <!-- <span style="width:350px; height: 550px; display: inline-block; "> -->
                  <form class="form">
                    <h5 style="font-family: 나눔바른고딕; color:#757575">필수 준비물</h5>
                    <div class="inputGroup" style="width:220px;"><input id="option1" name="option1" type="checkbox"/><label for="option1">여권</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option2" name="option2" type="checkbox"/><label for="option2">여권사본</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option3" name="option3" type="checkbox"/><label for="option3">항공권(E티켓)</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option4" name="option4" type="checkbox"/><label for="option4">현금(원화,외화)</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option5" name="option5" type="checkbox"/><label for="option5">신분증, 운전면허증</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option6" name="option6" type="checkbox"/><label for="option6">신용카드</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option7" name="option7" type="checkbox"/><label for="option7">여행사 보험증</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option8" name="option8" type="checkbox"/><label for="option8">숙소 주소 및 연락처</label></div>
                  </form>
                </div>
                <div class="checkList" id="checkList">
                  <form class="form">
                    <h5 style="font-family: 나눔바른고딕; color:#757575">여행관련 & 전자기기</h5>
                    <div class="inputGroup" style="width:220px;"><input id="option9" name="option9" type="checkbox"/><label for="option9">여행 가이드북</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option10" name="option10" type="checkbox"/><label for="option10">여행 일정표</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option11" name="option11" type="checkbox"/><label for="option11">지도</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option12" name="option12" type="checkbox"/><label for="option12">필기 도구</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option13" name="option13" type="checkbox"/><label for="option13">카메라(충전기, 메모리)</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option14" name="option14" type="checkbox"/><label for="option14">핸드폰 충전기</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option15" name="option15" type="checkbox"/><label for="option15">멀티 어댑터</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option16" name="option16" type="checkbox"/><label for="option16">노트북 & 충전기</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option17" name="option17" type="checkbox"/><label for="option17">삼각대</label></div>
                  </form>
                </div>
                <div class="checkList" id="checkList">
                  <form class="form">
                    <h5 style="font-family: 나눔바른고딕; color:#757575">세면도구 & 화장품</h5>
                    <div class="inputGroup" style="width:220px;"><input id="option18" name="option18" type="checkbox"/><label for="option18">칫솔 & 치약</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option19" name="option19" type="checkbox"/><label for="option19">샴푸 & 린스</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option26" name="option26" type="checkbox"/><label for="option26">기초 화장품(스킨, 로션)</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option20" name="option20" type="checkbox"/><label for="option20">폼 클렌저, 클렌징 오일</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option21" name="option21" type="checkbox"/><label for="option21">바디클렌저 & 샤워타월</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option24" name="option124" type="checkbox"/><label for="option24">선크림, 바디선크림</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option25" name="option125" type="checkbox"/><label for="option25">아이 & 립 리무버</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option23" name="option23" type="checkbox"/><label for="option23">브러쉬</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option27" name="option27" type="checkbox"/><label for="option27">마스크팩</label></div>
                  </form>
                </div>
                <div class="checkList" id="checkList" >
                  <form class="form">
                    <h5 style="font-family: 나눔바른고딕; color:#757575">약품 & 생활용품</h5>
                      <div class="inputGroup" style="width:220px;"><input id="option31" name="option31" type="checkbox"/><label for="option31">종합연고, 약 & 밴드</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option33" name="option33" type="checkbox"/><label for="option33">렌즈 & 세척액</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option34" name="option34" type="checkbox"/><label for="option34">수건</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option35" name="option35" type="checkbox"/><label for="option35">드라이기</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option36" name="option36" type="checkbox"/><label for="option36">지퍼백</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option39" name="option39" type="checkbox"/><label for="option39">여성용품</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option40" name="option40" type="checkbox"/><label for="option40">휴지 & 물티슈</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option41" name="option41" type="checkbox"/><label for="option41">머리끈 & 삔</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option42" name="option42" type="checkbox"/><label for="option42">목베개 & 수면안대</label></div>
                  </form>
                </div>
                <div class="checkList" id="checkList">
                  <form class="form">
                      <h5 style="font-family: 나눔바른고딕; color:#757575">의류 & 신발 & 가방</h5>
                      <div class="inputGroup" style="width:220px;"><input id="option44" name="option44" type="checkbox"/><label for="option44">속옷</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option46" name="option46" type="checkbox"/><label for="option46">상의 & 하의</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option47" name="option47" type="checkbox"/><label for="option47">아우터</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option48" name="option48" type="checkbox"/><label for="option48">원피스</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option49" name="option49" type="checkbox"/><label for="option49">잠옷</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option50" name="option50" type="checkbox"/><label for="option50">모자 & 양말</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option37" name="option37" type="checkbox"/><label for="option37">선글라스 & 시계</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option52" name="option52" type="checkbox"/><label for="option52">운동화 & 샌들 & 슬리퍼</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option55" name="option55" type="checkbox"/><label for="option55">수영복</label></div>
                  </form>
                </div>
              </div>
            </div>

            <div class="container" style="margin-left: 1185px;">
              <a href="#" class="btn btn-primary2"><strong>저장</strong></a>
              <a href="#" class="btn btn-primary2"><strong>초기화</strong></a>
            </div>

        </div>
      </section>
      </div>

    <!-- 탭 두번째 버튼 클릭 시-->
    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-post-tab">
    <!-- 맞춤 여행의뢰, 및 다녀온 나라 내역-->
      <section class="ftco-section" id="blog-section">
        <div class="container">

          <div class="row justify-content-center mb-5 pb-5">
            <div class="col-md-7 heading-section text-center ftco-animate" id="v-pills-post-tab">
              <span class="subheading">Blog</span>
              <h2 class="mb-4">나의 여행기록</h2>
              <p2>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
            </div>
          </div>


          <div class="row d-flex">
            <div class="col-md-6 col-lg-4 d-flex ftco-animate">
              <div class="blog-entry justify-content-end">
                <a href="single.html" class="block-20" style="background-image: url('${contextPath }/resources/images/image_1.jpg');">
                </a>
                <div class="text float-right d-block">
                  <div class="d-flex align-items-center pt-2 mb-4 topp">
                    <div class="one mr-2">
                        <!-- 여행 간 날짜 설정, 어떻게 띄워야 할까 -->
                      <span class="day">12</span>
                    </div>
                    <div class="two">
                      <span class="yr">2019</span>
                      <span class="mos">april</span>
                    </div>
                  </div>
                  <h3 class="heading"><a href="single.html">누르면 여행계획 상세페이지로</a></h3>
                  <p2>여행사진 화면에 띄우기(사진 없으면 디폴드값 불러오기)</p>
                  <div class="d-flex align-items-center mt-4 meta">
                    <p class="mb-0"><a href="#" class="btn btn-primary">여행계획 리스트로 이동<span class="ion-ios-arrow-round-forward"></span></a></p>
                    <p class="ml-auto mb-0">
                      <a href="#" class="mr-2">Admin</a>
                      <a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-6 col-lg-4 d-flex ftco-animate">
              <div class="blog-entry justify-content-end">
                <!-- 사진 -->
                <a href="single.html" class="block-20" style="background-image: url('${contextPath }/resources/images/image_2.jpg');">
                </a>
                <div class="text float-right d-block">
                  <div class="d-flex align-items-center pt-2 mb-4 topp">
                    <div class="one mr-2">
                      <span class="day">12</span>
                    </div>
                    <div class="two">
                      <span class="yr">2019</span>
                      <span class="mos">april</span>
                    </div>
                  </div>
                  <h3 class="heading"><a href="single.html">Why Lead Generation is Key for Business Growth</a></h3>
                  <p2>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                  <div class="d-flex align-items-center mt-4 meta">
                    <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
                    <p class="ml-auto mb-0">
                      <a href="#" class="mr-2">Admin</a>
                      <a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>


            <div class="col-md-6 col-lg-4 d-flex ftco-animate">
              <div class="blog-entry">
                <a href="single.html" class="block-20" style="background-image: url('${contextPath }/resources/images/image_3.jpg');">
                </a>
                <div class="text float-right d-block">
                  <div class="d-flex align-items-center pt-2 mb-4 topp">
                    <div class="one mr-2">
                      <span class="day">12</span>
                    </div>
                    <div class="two">
                      <span class="yr">2019</span>
                      <span class="mos">april</span>
                    </div>
                  </div>
                  <h3 class="heading"><a href="single.html">Why Lead Generation is Key for Business Growth</a></h3>
                  <p2>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                  <div class="d-flex align-items-center mt-4 meta">
                    <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
                    <p class="ml-auto mb-0">
                      <a href="#" class="mr-2">Admin</a>
                      <a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </section>
    <!-- 동행구하기 쓴글, 후기 게시판 작성 글 불러오기-->
      <section class="ftco-section testimony-section">
              <img src="${contextPath }/resources/images/blob-shape-2.svg" class="svg-blob" alt="Colorlib Free Template"><!-- 배경에 분홍색 동그라미 -->
              <img src="${contextPath }/resources/images/blob-shape-2.svg" class="svg-blob-2" alt="Colorlib Free Template"><!-- 배경에 분홍색 동그라미 -->

            <div class="container">
              <div class="row justify-content-center pb-3">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                    <span class="subheading"><h3 style="color: #fff; font-family: 나눔바른고딕;">내가 쓴 게시글</h3></span>
                  <font class="test1" style="font-size: 15;"><strong>동행구하기</strong></font>
                </div>
              </div>

              <div class="table">
                <table class="table table-hover"><!-- th 표의제목, tr 가로, td 셀을 만듬-->
                  <tr><!-- 한줄 -->
                    <th>번호</th>
                    <th>작성일</th>
                    <th>제목</th>
                    <th>조회수</th>
                    <th>비밀글</th>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2017-10-12</td>
                    <td>15일 태국 후아힌 가시는 분 구합니다</td>
                    <td>15</td>
                    <td>
                      <input id="inpLock1" type="checkbox" class="inpLock"/><label class="btn-lock" for="inpLock1"><svg width="30" height="33"
                        viewBox="0 -5 20 50">
                        <path class="lockb"
                          d="M27 27C27 34.1797 21.1797 40 14 40C6.8203 40 1 34.1797 1 27C1 19.8203 6.8203 14 14 14C21.1797 14 27 19.8203 27 27ZM15.6298 26.5191C16.4544 25.9845 17 25.056 17 24C17 22.3431 15.6569 21 14 21C12.3431 21 11 22.3431 11 24C11 25.056 11.5456 25.9845 12.3702 26.5191L11 32H17L15.6298 26.5191Z">
                        </path>
                        <path class="lock" d="M6 21V10C6 5.58172 9.58172 2 14 2V2C18.4183 2 22 5.58172 22 10V21"></path>
                        <path class="bling" d="M29 20L31 22"></path>
                        <path class="bling" d="M31.5 15H34.5"></path>
                        <path class="bling" d="M29 10L31 8"></path>
                      </svg></label>
                    </td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>2017-10-25</td>
                    <td>태국 치앙마이 같이 구경하실분~!</td>
                    <td>10</td>
                    <td>
                      <input id="inpLock2" type="checkbox" class="inpLock"/><label class="btn-lock" for="inpLock2"><svg width="30" height="33"
                      viewBox="0 -5 20 50">
                      <path class="lockb"
                        d="M27 27C27 34.1797 21.1797 40 14 40C6.8203 40 1 34.1797 1 27C1 19.8203 6.8203 14 14 14C21.1797 14 27 19.8203 27 27ZM15.6298 26.5191C16.4544 25.9845 17 25.056 17 24C17 22.3431 15.6569 21 14 21C12.3431 21 11 22.3431 11 24C11 25.056 11.5456 25.9845 12.3702 26.5191L11 32H17L15.6298 26.5191Z">
                      </path>
                      <path class="lock" d="M6 21V10C6 5.58172 9.58172 2 14 2V2C18.4183 2 22 5.58172 22 10V21"></path>
                      <path class="bling" d="M29 20L31 22"></path>
                      <path class="bling" d="M31.5 15H34.5"></path>
                      <path class="bling" d="M29 10L31 8"></path>
                    </svg></label>
                  </td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>2018-03-30</td>
                    <td>일본 같이 여행하실분 찾습니다!</td>
                    <td>18</td>
                    <td>
                      <input id="inpLock3" type="checkbox" class="inpLock"/><label class="btn-lock" for="inpLock3"><svg width="30" height="33"
                        viewBox="0 -5 20 50">
                        <path class="lockb"
                          d="M27 27C27 34.1797 21.1797 40 14 40C6.8203 40 1 34.1797 1 27C1 19.8203 6.8203 14 14 14C21.1797 14 27 19.8203 27 27ZM15.6298 26.5191C16.4544 25.9845 17 25.056 17 24C17 22.3431 15.6569 21 14 21C12.3431 21 11 22.3431 11 24C11 25.056 11.5456 25.9845 12.3702 26.5191L11 32H17L15.6298 26.5191Z">
                        </path>
                        <path class="lock" d="M6 21V10C6 5.58172 9.58172 2 14 2V2C18.4183 2 22 5.58172 22 10V21"></path>
                        <path class="bling" d="M29 20L31 22"></path>
                        <path class="bling" d="M31.5 15H34.5"></path>
                        <path class="bling" d="M29 10L31 8"></path>
                      </svg></label>
                    </td>
                  </tr>
                </table>
              </div>

              <div class="row justify-content-center pb-3">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                  <font class="test1" style="font-size: 15;"><strong>후기게시판</strong></font>
                </div>
              </div>

              <div class="table">
                <table class="table table-hover"><!-- th 표의제목, tr 가로, td 셀을 만듬-->
                  <tr><!-- 한줄 -->
                    <th>번호</th>
                    <th>작성일</th>
                    <th>제목</th>
                    <th>조회수</th>
                    <th>비밀글</th>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2017-10-30</td>
                    <td>태국 한바퀴 돈 후기씁니다.</td>
                    <td>254</td>
                    <td>
                      <input id="inpLock4" type="checkbox" class="inpLock"/><label class="btn-lock" for="inpLock4"><svg width="30" height="33"
                        viewBox="0 -5 20 50">
                        <path class="lockb"
                          d="M27 27C27 34.1797 21.1797 40 14 40C6.8203 40 1 34.1797 1 27C1 19.8203 6.8203 14 14 14C21.1797 14 27 19.8203 27 27ZM15.6298 26.5191C16.4544 25.9845 17 25.056 17 24C17 22.3431 15.6569 21 14 21C12.3431 21 11 22.3431 11 24C11 25.056 11.5456 25.9845 12.3702 26.5191L11 32H17L15.6298 26.5191Z">
                        </path>
                        <path class="lock" d="M6 21V10C6 5.58172 9.58172 2 14 2V2C18.4183 2 22 5.58172 22 10V21"></path>
                        <path class="bling" d="M29 20L31 22"></path>
                        <path class="bling" d="M31.5 15H34.5"></path>
                        <path class="bling" d="M29 10L31 8"></path>
                      </svg></label>
                    </td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>2018-04-15</td>
                    <td>일본 여행 후기</td>
                    <td>356</td>
                    <td>
                      <input id="inpLock5" type="checkbox" class="inpLock"/><label class="btn-lock" for="inpLock5"><svg width="30" height="33"
                        viewBox="0 -5 20 50">
                        <path class="lockb"
                          d="M27 27C27 34.1797 21.1797 40 14 40C6.8203 40 1 34.1797 1 27C1 19.8203 6.8203 14 14 14C21.1797 14 27 19.8203 27 27ZM15.6298 26.5191C16.4544 25.9845 17 25.056 17 24C17 22.3431 15.6569 21 14 21C12.3431 21 11 22.3431 11 24C11 25.056 11.5456 25.9845 12.3702 26.5191L11 32H17L15.6298 26.5191Z">
                        </path>
                        <path class="lock" d="M6 21V10C6 5.58172 9.58172 2 14 2V2C18.4183 2 22 5.58172 22 10V21"></path>
                        <path class="bling" d="M29 20L31 22"></path>
                        <path class="bling" d="M31.5 15H34.5"></path>
                        <path class="bling" d="M29 10L31 8"></path>
                      </svg></label>
                    </td>
                  </tr>
                </table>
              </div>
              
            </div>
      </section>
    </div>
    
    <!-- 탭 세번째 버튼 클릭 시-->
    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
      <!-- 회원정보수정-->
      <section class="ftco-section contact-section ftco-no-pb" id="contact-section">
        <div class="container">
          <div class="mb-5 pb-3" style="margin: auto;">
            <div class="col-md-7 heading-section text-center ftco-animate" style="margin: 0 auto;">
              <span class="subheading">Contact</span>
              <h2 class="mb-4" style="font-family:나눔바른고딕; color:#000;">회원정보 수정</h2>
            </div>
          </div>
  
          <div class="row block-9" >
            <div class="col-md-7 order-md-last d-flex" style="margin: auto;">
              <form action="#" class="bg-light p-4 p-md-5 contact-form" style="padding: 0 16px; margin: 30px auto; width: 600px;">

                <div class="col-md-12 ftco-animate">
                  <div class="box p-2 px-3 bg-light d-flex">
                    <div class="icon mr-3">
                      <span class="icon-globe"></span>
                    </div>
                    <div>
                      <h3 class="mb-3">Name</h3>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="닉네임">
                </div>

                <div class="col-md-12 ftco-animate">
                  <div class="box p-2 px-3 bg-light d-flex">
                    <div class="icon mr-3">
                      <span class="icon-map-signs"></span>
                    </div>
                    <div>
                      <h3 class="mb-3">password</h3>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="비밀번호">
                </div>

                <div class="col-md-12 ftco-animate">
                  </div>
                  <div class="form-group">
                    <input type="password"" class="form-control" placeholder="비밀번호재입력">
                  </div>

                  <div class="col-md-12 ftco-animate">
                    <div class="box p-2 px-3 bg-light d-flex">
                      <div class="icon mr-3">
                        <span class="icon-paper-plane"></span>
                      </div>
                      <div>
                        <h3 class="mb-3">Email</h3>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="이메일">
                  </div>

                <div class="col-md-12 ftco-animate">
                  <div class="box p-2 px-3 bg-light d-flex">
                    <div class="icon mr-3">
                      <span class="icon-phone2"></span>
                    </div>
                    <div>
                      <h3 class="mb-3">Contact Number</h3>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="전화번호">
                </div>

                <div class="col-md-12 ftco-animate">
                  <div class="box p-2 px-3 bg-light d-flex">
                    <div class="icon mr-3">
                      <span class="icon-globe"></span>
                    </div>
                    <div>
                      <h3 class="mb-3">Profile</h3>
                    </div>
                    (등록할 사진을 선택해주세요.)
                  </div>
                </div>
                <div class="filebox bs3-primary">
                    <input class="upload-name" value="파일선택" disabled="disabled">
                  <label for="ex_filename">업로드</label>
                  <input type="file" id="ex_filename" class="upload-hidden">
                </div>
                &nbsp&nbsp
                <div class="form-group" style="float: right;">
                  <input type="submit" value="회원정보수정" class="btn btn-primary">
                  <input type="submit" value="회원탈퇴" class="btn btn-primary">
                </div>
              </form>
            </div>
          </div>
        </div>
      </section><br><br>
    </div>
  </div>


    <!-- footer -->
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
  <!-- <script>
      $(function(){
          // 처음 페이지가 로드될 때 여행 히스토리를 분홍색 글씨로 나타내기 위함
          if($('a[name=tabMenu]').eq(0).attr('aria-selected') == "true"){
              $('font[name=tabName]').eq(0).css('color','#E2C0BB');
              console.log($('a[name=tabMenu]').eq(0).attr('aria-selected'));
          }

          
          // 이후 탭 메뉴들을 클릭했을 때 글씨 색깔이 바뀌도록 한거
          $('a[name=tabMenu]').click(function(){       
              for(var i = 0; i < 3; i++){
                  if($(this).text() != $('a[name=tabMenu]').eq(i).text()){
                      $('font[name=tabName]').eq(i).css('color','#fff');
                  }else{
                      $('font[name=tabName]').eq(i).css('color','#E2C0BB');
                  }
              }
          });
      }); 
  </script> -->

<!-- 수정 -->
<script>
    $(function(){
        // 처음 페이지가 로드될 때 여행 히스토리를 분홍색 글씨로 나타내기 위함
        if($('a[name=tabMenu]').eq(0).attr('aria-selected') == "true"){
            $('h6[name=tabName]').eq(0).css('color','#E2C0BB');
            console.log($('a[name=tabMenu]').eq(0).attr('aria-selected'));
        }

        
        // 이후 탭 메뉴들을 클릭했을 때 글씨 색깔이 바뀌도록 한거
        $('a[name=tabMenu]').click(function(){       
            for(var i = 0; i < 3; i++){
                if($(this).text() != $('a[name=tabMenu]').eq(i).text()){
                    $('h6[name=tabName]').eq(i).css('color','#fff');
                }else{
                    $('h6[name=tabName]').eq(i).css('color','#E2C0BB');
                }
            }
        });
    }); 
</script>

<script>
  $(document).ready(function(){
  var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }

        $(this).siblings('.upload-name').val(filename);
    });
});
</script>
  </body>
</html>