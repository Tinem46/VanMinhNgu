<%-- 
    Document   : menu
    Created on : Jun 28, 2024, 10:19:01 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Food For Company</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/homepage.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/menu.css">
        
        <!-- Font Awesome CDN -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <header>
            <jsp:include page="../common/navbar show.jsp"></jsp:include>
        </header>
        <div class="body_container">
            <div class="date-container" id="current-date"></div>
            <h1>Meal Planner</h1>
            <div class="buttons-container">
                <button class="day-button" onclick="toggleMenu('monday')">Thứ 2</button>
                <button class="day-button" onclick="toggleMenu('tuesday')">Thứ 3</button>
                <button class="day-button" onclick="toggleMenu('wednesday')">Thứ 4</button>
                <button class="day-button" onclick="toggleMenu('thursday')">Thứ 5</button>
                <button class="day-button" onclick="toggleMenu('friday')">Thứ 6</button>
            </div>

            <div id="monday" class="menu">
                <h2>Thứ 2</h2>
                <div class="meal">
                    <h3>Buổi sáng</h3>
                    <p>Món 1 <button>Thêm món</button></p>
                    <p>Món 2 <button>Thêm món</button></p>
                </div>
                <div class="meal">
                    <h3>Buổi trưa</h3>
                    <p>Món 1 <button>Thêm món</button></p>
                    <p>Món 2 <button>Thêm món</button></p>
                </div>
            </div>

            <div id="tuesday" class="menu">
                <h2>Thứ 3</h2>
                <div class="meal">
                    <h3>Buổi sáng</h3>
                    <p>Món 1 <button>Thêm món</button></p>
                    <p>Món 2 <button>Thêm món</button></p>
                </div>
                <div class="meal">
                    <h3>Buổi trưa</h3>
                    <p>Món 1 <button>Thêm món</button></p>
                    <p>Món 2 <button>Thêm món</button></p>
                </div>
            </div>

            <div id="wednesday" class="menu">
                <h2>Thứ 4</h2>
                <div class="meal">
                    <h3>Buổi sáng</h3>
                    <p>Món 1 <button>Thêm món</button></p>
                    <p>Món 2 <button>Thêm món</button></p>
                </div>
                <div class="meal">
                    <h3>Buổi trưa</h3>
                    <p>Món 1 <button>Thêm món</button></p>
                    <p>Món 2 <button>Thêm món</button></p>
                </div>
            </div>

            <div id="thursday" class="menu">
                <h2>Thứ 5</h2>
                <div class="meal">
                    <h3>Buổi sáng</h3>
                    <p>Món 1 <button>Thêm món</button></p>
                    <p>Món 2 <button>Thêm món</button></p>
                </div>
                <div class="meal">
                    <h3>Buổi trưa</h3>
                    <p>Món 1 <button>Thêm món</button></p>
                    <p>Món 2 <button>Thêm món</button></p>
                </div>
            </div>

            <div id="friday" class="menu">
                <h2>Thứ 6</h2>
                <div class="meal">
                    <h3>Buổi sáng</h3>
                    <p>Món 1 <button>Thêm món</button></p>
                    <p>Món 2 <button>Thêm món</button></p>
                </div>
                <div class="meal">
                    <h3>Buổi trưa</h3>
                    <p>Món 1 <button>Thêm món</button></p>
                    <p>Món 2 <button>Thêm món</button></p>
                </div>
            </div>
        </div>
           <jsp:include page="../common/footer.jsp"></jsp:include>
      <script src="${pageContext.request.contextPath}/js/menu.js"></script>
    </body>
</html>