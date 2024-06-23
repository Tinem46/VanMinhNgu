<%-- 
    Document   : HomePage
    Created on : Jun 21, 2024, 11:46:12 PM
    Author     : Qcuanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/homepage.css">


        <!-- Font Awesome CDN -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    </head>
   <body>
       <!--nvarbar show start -->
       <jsp:include page="common/navbar show.jsp"></jsp:include>
       <!--nvarbar show end -->
        <div class="slideshow-container">
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <div class="slides">
                <img src="https://i.pinimg.com/originals/e2/61/da/e261da1a49caed3c5d3a23773a8b7fd2.jpg">
            </div>
            <div class="slides">
                <img src="https://img-global.cpcdn.com/recipes/a305b8b31794ab7f/1200x630cq70/photo.jpg">
            </div>
            <div class="slides">
                <img src="https://go2joy.s3.ap-southeast-1.amazonaws.com/blog/wp-content/uploads/2022/04/13205442/mon-an-chay.jpg">
            </div>
            <div class="slides">
                <img src="https://th.bing.com/th/id/R.bdfc3e1b36067e500d344c22c9444e55?rik=65FnFrfQDGk2cQ&riu=http%3a%2f%2f4.bp.blogspot.com%2f-DuNPHG1RscA%2fUi3QRNzCupI%2fAAAAAAAAKM8%2fHmOOawUBIdY%2fs1600%2fnha_hang_bun_bo_hue_3a3_201341810497148.jpg&ehk=1ZJ5sgC%2fz32EKGyunGXLfjePcUtf0rmkCgE%2bL9pbuSE%3d&risl=&pid=ImgRaw&r=0">
            </div>
            <div class="slides">
                <img src="https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Recipe-Slider_SweetToThePoint-SweetSummerRolls.original.jpg">
            </div>
            <div class="slides">
                <img src="https://cdn.tgdd.vn/2021/01/CookProduct/1-1200x676-22.jpg">
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
        <div>
            <h1>Vegan Food</h1>
            <div class="container">
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://cdn.tgdd.vn/Files/2017/01/18/939144/cach-lam-bun-xao-chay-voi-bun-an-lien-cuc-de-202109281514164015.jpg" alt="Image 1">
                    <div class="info">Image 1 Info</div>
                </div>
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://i.pinimg.com/originals/e2/61/da/e261da1a49caed3c5d3a23773a8b7fd2.jpg" alt="Image 2">
                    <div class="info">Image 2 Info</div>
                </div>
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://th.bing.com/th/id/OIP.WL3VPdaOL-HjoV4UlAlv8AHaE8?w=1024&h=683&rs=1&pid=ImgDetMain" alt="Image 3">
                    <div class="info">Image 3 Info</div>
                </div>
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://go2joy.s3.ap-southeast-1.amazonaws.com/blog/wp-content/uploads/2022/04/13205442/mon-an-chay.jpg" alt="Image 4">
                    <div class="info">Image 4 Info</div>
                </div>
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Recipe-Slider_SweetToThePoint-SweetSummerRolls.original.jpg" alt="Image 5">
                    <div class="info">Image 5 Info</div>
                </div>
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://hitasanti.com/wp-content/uploads/2020/05/hita-chay-cac-mon-chay-ngon-de-lam-5-1232x800.jpg" alt="Image 6">
                    <div class="info">Image 6 Info</div>
                </div>
            </div>
            <h1>Savoury Food</h1>
            <div class="container">
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://img-global.cpcdn.com/recipes/a305b8b31794ab7f/1200x630cq70/photo.jpg" alt="Image 1">
                    <div class="info">Image 1 Info</div>
                </div>
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://cdn.tgdd.vn/Files/2019/12/30/1229114/cach-lam-com-chien-duong-chau-sieu-hap-dan-chong-ngan-ngay-tet-hat-com-vang-uom-toi-va-tham-vi-202203031505257988.jpg" alt="Image 2">
                    <div class="info">Image 2 Info</div>
                </div>
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://cdn.tgdd.vn/2021/01/CookProduct/1-1200x676-22.jpg" alt="Image 3">
                    <div class="info">Image 3 Info</div>
                </div>
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://th.bing.com/th/id/R.bdfc3e1b36067e500d344c22c9444e55?rik=65FnFrfQDGk2cQ&riu=http%3a%2f%2f4.bp.blogspot.com%2f-DuNPHG1RscA%2fUi3QRNzCupI%2fAAAAAAAAKM8%2fHmOOawUBIdY%2fs1600%2fnha_hang_bun_bo_hue_3a3_201341810497148.jpg&ehk=1ZJ5sgC%2fz32EKGyunGXLfjePcUtf0rmkCgE%2bL9pbuSE%3d&risl=&pid=ImgRaw&r=0" alt="Image 4">
                    <div class="info">Image 4 Info</div>
                </div>
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://www.hoidaubepaau.com/wp-content/uploads/2019/06/hoc-lam-banh-cuon-mo-quan.jpg" alt="Image 5">
                    <div class="info">Image 5 Info</div>
                </div>
                <div class="image-box" onclick="showImage(this)">
                    <img src="https://i.ytimg.com/vi/DAAmDnzO6MI/maxresdefault.jpg" alt="Image 6">
                    <div class="info">Image 6 Info</div>
                </div>
            </div>

            <div id="modal" class="modal" onclick="closeModal()">
                <span class="close">&times;</span>
                <img class="modal-content" id="modal-image">
                <div id="caption"></div>
            </div>
        </div>
       
       <!--footer start -->
       <jsp:include page="common/footer.jsp"></jsp:include>
       <!--footer end -->
      <script src="${pageContext.request.contextPath}/js/homepage.js"></script>
    </body>
</html>
