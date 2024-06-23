/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


  let slideIndex = 1;
            showSlides(slideIndex);

            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                let i;
                let slides = document.getElementsByClassName("slides");
                let dots = document.getElementsByClassName("dot");
                if (n > slides.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = slides.length
                }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
            }

            setInterval(() => {
                plusSlides(1);
            }, 6000); // Change image every 3 seconds


            // Hàm kiểm tra và hiển thị modal nếu cần
            function checkAndShowModal() {
                var modal = document.getElementById("modal");
                var modalImg = document.getElementById("modal-image");
                var captionText = document.getElementById("caption");

                // Lấy trạng thái modal từ localStorage
                var modalState = localStorage.getItem("modalState");

                if (modalState === "open") {
                    // Lấy dữ liệu ảnh và thông tin từ localStorage (nếu cần)
                    var imgSrc = localStorage.getItem("modalImgSrc");
                    var infoText = localStorage.getItem("modalInfoText");

                    if (imgSrc && infoText) {
                        modalImg.src = imgSrc;
                        captionText.innerHTML = infoText;
                    }

                    // Hiển thị modal
                    modal.style.display = "block";
                } else {
                    // Nếu không có trạng thái mở, đóng modal
                    modal.style.display = "none";
                }
            }

            // Gọi hàm kiểm tra và hiển thị modal khi tải lại trang
            document.addEventListener("DOMContentLoaded", function (event) {
                checkAndShowModal();
            });

            // Hàm lưu trạng thái modal vào localStorage
            function saveModalState(state, imgSrc, infoText) {
                localStorage.setItem("modalState", state);

                if (state === "open") {
                    localStorage.setItem("modalImgSrc", imgSrc);
                    localStorage.setItem("modalInfoText", infoText);
                } else {
                    localStorage.removeItem("modalImgSrc");
                    localStorage.removeItem("modalInfoText");
                }
            }

            // Hàm hiển thị ảnh và thông tin trong modal
            function showImage(element) {
                var modal = document.getElementById("modal");
                var modalImg = document.getElementById("modal-image");
                var captionText = document.getElementById("caption");
                var img = element.querySelector("img");
                var info = element.querySelector(".info");

                // Lưu trạng thái và thông tin vào localStorage
                saveModalState("open", img.src, info.innerHTML);

                // Hiển thị ảnh và thông tin trong modal
                modalImg.src = img.src;
                captionText.innerHTML = info.innerHTML;
                modal.style.display = "block";
            }

            // Hàm đóng modal và lưu trạng thái vào localStorage
            var closeButton = document.getElementsByClassName("close")[0];
            closeButton.onclick = function () {
                var modal = document.getElementById("modal");
                modal.style.display = "none";

                // Lưu trạng thái đóng vào localStorage
                saveModalState("closed");
            };

            // Hàm đóng modal khi click bên ngoài nội dung modal và lưu trạng thái vào localStorage
            window.onclick = function (event) {
                var modal = document.getElementById("modal");
                if (event.target == modal) {
                    modal.style.display = "none";

                    // Lưu trạng thái đóng vào localStorage
                    saveModalState("closed");
                }
            };

            // Thêm sự kiện cho việc cuộn trang
            window.addEventListener('scroll', function () {
                var header = document.querySelector('header');
                if (window.scrollY > 0) {
                    header.style.opacity = '0.8'; // Đặt độ mờ khi cuộn trang xuống
                } else {
                    header.style.opacity = '1'; // Header hiển thị rõ ràng khi đầu trang
                }
            });
