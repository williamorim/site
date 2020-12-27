var slideIndex=1;function plusSlides(n,slideshow){showSlides(slideIndex+=n,id=slideshow);}
function currentSlide(n,slideshow){showSlides(slideIndex=n,id=slideshow);}
function showSlides(n,id){var i;var slideshow=document.getElementById(id);var slides=slideshow.getElementsByClassName("mySlides");var dots=slideshow.getElementsByClassName("dot");if(n>slides.length){slideIndex=1}
if(n<1){slideIndex=slides.length}
for(i=0;i<slides.length;i++){slides[i].style.display="none";}
for(i=0;i<dots.length;i++){dots[i].className=dots[i].className.replace(" active","");}
slides[slideIndex-1].style.display="block";dots[slideIndex-1].className+=" active";}
function teste(slideshow){return slideshow}