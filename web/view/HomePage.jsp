<%-- 
    Document   : HomePage
    Created on : Jun 21, 2024, 11:46:12 PM
    Author     : Qcuanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Food For Company</title>
        
        <!-- Font Awesome CDN -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

        <!-- Inline CSS -->
       <link rel="stylesheet" href="${pageContext.request.contextPath}/css/homepage.css">
    </head>
    <body>
        <!-- Navbar -->
        <div class="scale-container">
        <jsp:include page="common/navbar show.jsp"></jsp:include>

        <div class="slideshow-container">
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <div class="slides">
                <img src="https://i.pinimg.com/originals/e2/61/da/e261da1a49caed3c5d3a23773a8b7fd2.jpg" alt="Slide 1">
            </div>
            <div class="slides">
                <img src="https://img-global.cpcdn.com/recipes/a305b8b31794ab7f/1200x630cq70/photo.jpg" alt="Slide 2">
            </div>
            <div class="slides">
                <img src="https://go2joy.s3.ap-southeast-1.amazonaws.com/blog/wp-content/uploads/2022/04/13205442/mon-an-chay.jpg" alt="Slide 3">
            </div>
            <div class="slides">
                <img src="https://th.bing.com/th/id/R.bdfc3e1b36067e500d344c22c9444e55?rik=65FnFrfQDGk2cQ&riu=http%3a%2f%2f4.bp.blogspot.com%2f-DuNPHG1RscA%2fUi3QRNzCupI%2fAAAAAAAAKM8%2fHmOOawUBIdY%2fs1600%2fnha_hang_bun_bo_hue_3a3_201341810497148.jpg&ehk=1ZJ5sgC%2fz32EKGyunGXLfjePcUtf0rmkCgE%2bL9pbuSE%3d&risl=&pid=ImgRaw&r=0" alt="Slide 4">
            </div>
            <div class="slides">
                <img src="https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Recipe-Slider_SweetToThePoint-SweetSummerRolls.original.jpg" alt="Slide 5">
            </div>
            <div class="slides">
                <img src="https://cdn.tgdd.vn/2021/01/CookProduct/1-1200x676-22.jpg" alt="Slide 6">
            </div>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <div class="dots">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
            <span class="dot" onclick="currentSlide(4)"></span>
            <span class="dot" onclick="currentSlide(5)"></span>
            <span class="dot" onclick="currentSlide(6)"></span>
        </div>

        <h1>Vegan Food</h1>
        <div class="container">
            <div class="image-box" onclick="showImage(this)">
                <img src="https://img-global.cpcdn.com/recipes/a305b8b31794ab7f/1200x630cq70/photo.jpg" alt="Vegan Image 1">
                <div class="info">Salad chay</div>
            </div>
            <div class="image-box" onclick="showImage(this)">
                <img src="https://th.bing.com/th/id/OIP.tAgLGorUIdSgZwzkskX8VgHaE7?pid=ImgDet&rs=1" alt="Vegan Image 2">
                <div class="info">Cơm chay</div>
            </div>
            <div class="image-box" onclick="showImage(this)">
                <img src="https://th.bing.com/th/id/OIP.WL3VPdaOL-HjoV4UlAlv8AHaE8?w=1024&h=683&rs=1&pid=ImgDetMain" alt="Vegan Image 3">
                <div class="info">Bún tươi</div>
            </div>
            <div class="image-box" onclick="showImage(this)">
                <img src="https://go2joy.s3.ap-southeast-1.amazonaws.com/blog/wp-content/uploads/2022/04/13205442/mon-an-chay.jpg" alt="Vegan Image 4">
                <div class="info">Món ăn chay</div>
            </div>
            <div class="image-box" onclick="showImage(this)">
                <img src="https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Recipe-Slider_SweetToThePoint-SweetSummerRolls.original.jpg" alt="Vegan Image 5">
                <div class="info">Gỏi cuốn chay</div>
            </div>
            <div class="image-box" onclick="showImage(this)">
                <img src="https://hitasanti.com/wp-content/uploads/2020/05/hita-chay-cac-mon-chay-ngon-de-lam-5-1232x800.jpg" alt="Vegan Image 6">
                <div class="info">Đậu hũ kho</div>
            </div>
        </div>

        <h1>Savoury Food</h1>
        <div class="container">
            <div class="image-box" onclick="showImage(this)">
                <img src="https://img-global.cpcdn.com/recipes/a305b8b31794ab7f/1200x630cq70/photo.jpg" alt="Savoury Image 1">
                <div class="info">Cơm chiên dương châu</div>
            </div>
            <div class="image-box" onclick="showImage(this)">
                <img src="https://th.bing.com/th/id/OIP.tAgLGorUIdSgZwzkskX8VgHaE7?pid=ImgDet&rs=1" alt="Savoury Image 2">
                <div class="info">Cơm chiên trứng</div>
            </div>
            <div class="image-box" onclick="showImage(this)">
                <img src="https://th.bing.com/th/id/OIP.WL3VPdaOL-HjoV4UlAlv8AHaE8?w=1024&h=683&rs=1&pid=ImgDetMain" alt="Savoury Image 3">
                <div class="info">Bún bò huế</div>
            </div>
            <div class="image-box" onclick="showImage(this)">
                <img src="https://go2joy.s3.ap-southeast-1.amazonaws.com/blog/wp-content/uploads/2022/04/13205442/mon-an-chay.jpg" alt="Savoury Image 4">
                <div class="info">Bún riêu</div>
            </div>
            <div class="image-box" onclick="showImage(this)">
                <img src="https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Recipe-Slider_SweetToThePoint-SweetSummerRolls.original.jpg" alt="Savoury Image 5">
                <div class="info">Chả giò</div>
            </div>
            <div class="image-box" onclick="showImage(this)">
                <img src="https://hitasanti.com/wp-content/uploads/2020/05/hita-chay-cac-mon-chay-ngon-de-lam-5-1232x800.jpg" alt="Savoury Image 6">
                <div class="info">Bánh cuốn</div>
            </div>
        </div>

        <!-- Modal for showing image -->
        <div id="imageModal" class="modal">
            <span class="close" onclick="closeModal()">&times;</span>
            <img class="modal-content" id="modalImage">
        </div>

        <!-- Inline JavaScript -->
        <script src="${pageContext.request.contextPath}/js/homepage.js"></script>
        </div>
    </body>
    <jsp:include page="common/footer.jsp"></jsp:include>
</html>