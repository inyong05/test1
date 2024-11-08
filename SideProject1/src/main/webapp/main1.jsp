<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    // 세션에서 aname 값 가져오기
    String aname = (String) session.getAttribute("aname");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DCODELAB Main Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
    <div class="inner d-flex justify-content-between align-items-center">
        <h1><a href="#">DCODLAB</a></h1>
        
        <!-- 상단 네비게이션 바 -->
             <ul id="gnb">
                <li><a href="#">DEPARTMENT</a></li>
                <li><a href="#">GALLERY</a></li>
                <li><a href="#">YOUTUBE</a></li>
                <li><a href="#">COMMUNITY</a></li>
                <li><a href="#">LOCATION</a></li>
            </ul>
        <!-- aname과 로그아웃/로그인 버튼 -->
        <div class="util">
            <span class="mr-3">
                <strong>환영합니다, </strong>
                <%= (aname != null) ? aname : "로그인 해주세요" %>
            </span>
            <% if (aname != null) { %> <!-- 로그인된 경우 로그아웃 버튼 표시 -->
                <form action="logoutServlet" method="post" style="display: inline;">
                    <button type="submit" class="btn btn-outline-danger"></a>Logout</button>
                </form>
            <% } else { %> <!-- 로그인되지 않은 경우 로그인 페이지로 이동 -->
                <a href="login.html" class="btn btn-outline-primary">Login</a>
            <% } %>
        </div>
    </div>
</header>

<!-- 비디오 배경 -->
<figure>
    <video src="img/헛소리하지마 임마.mp4" autoplay muted loop></video>
    
        <div class="inner">
            <h1>INNOVATION</h1>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. <br>
                Id praesentium molestias similique quaerat magni facere in a? Adipisci, possimus reprehenderit!</p>
            <a href="#">view detail</a>
    </div>
</figure>

<!-- 최근 뉴스 섹션 -->
<section>
    <div class="inner">
        <h1>RECENT NEWS</h1>
        <div class="wrap d-flex justify-content-around">
            <article class="text-center">
                <div class="pic">
                    <img src="img/도라에몽.jpg" alt="1번째 콘텐츠 이미지">
                </div>
                <h2><a href="#">Lorem ipsum dolor sit.</a></h2>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.</p>
            </article>
            <article class="text-center">
                <div class="pic">
                    <img src="img/뽀로로.jpg" alt="2번째 콘텐츠 이미지">
                </div>
                <h2><a href="#">Lorem ipsum dolor sit.</a></h2>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.</p>
            </article>
            <article class="text-center">
                <div class="pic">
                    <img src="img/짱구.jpg" alt="3번째 콘텐츠 이미지">
                </div>
                <h2><a href="#">Lorem ipsum dolor sit.</a></h2>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.</p>
            </article>
            <article class="text-center">
                <div class="pic">
                    <img src="img/호빵맨.jpg" alt="4번째 콘텐츠 이미지">
                </div>
                <h2><a href="#">Lorem ipsum dolor sit.</a></h2>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.</p>
            </article>
        </div>
    </div>
</section>

<!-- 푸터 -->
<footer>
    <div class="inner">
        <div class="upper">
            <h1>DCODELAB</h1>
            <ul>
                <li><a href="#">Policy</a></li>
                <li><a href="#">Terms</a></li>
                <li><a href="#">Family Site</a></li>
                <li><a href="#">Sitemap</a></li>
            </ul>
        </div>
        <div class="lower">
            <address>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.<br>
                TEL : 031-111-1234 C.P : 010-1234-5678
            </address>
            <p>2020 DCODLAB &copy; All rights reserved.</p>
        </div>
    </div>
</footer>

<!-- Bootstrap JS 및 jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
