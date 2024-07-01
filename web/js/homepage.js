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
                let slides = document.getElementsByClassName("slides");
                let dots = document.getElementsByClassName("dot");

                if (n > slides.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = slides.length
                }

                for (let i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (let i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }

                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
            }

            // Modal functionality for image
            function showImage(element) {
                let modal = document.getElementById("imageModal");
                let modalImage = document.getElementById("modalImage");
                modal.style.display = "flex";
                modalImage.src = element.getElementsByTagName("img")[0].src;
            }

            function closeModal() {
                document.getElementById("imageModal").style.display = "none";
            }
