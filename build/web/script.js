var slideIndex = 1;
showSlides();

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");


    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;

    if (slideIndex > slides.length) {
        slideIndex = 1;
    }
    ;

    slides[slideIndex - 1].style.display = "block";
    setTimeout(showSlides, 5000);
}

(".hover").mouseleave(
        function() {
            (this).removeClass("hover");
        }
);

function validate() {
    var email = document.forms["myForm"]["login_email"].value;
    var password = document.forms["myForm"]["login_password"].value;


    if (email == "") {
        alert("Email Address Required");
        return false;
    }
    if (password == "") {
        alert("Password Field Required");
        return false;
    }


    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");
    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
        alert("Not a valid e-mail address");
        return false;
    }

}
function validateReg()
{
    var name = document.forms["regForm"]["name"].value;
    var surname = document.forms["regForm"]["surname"].value;
    var reg_email = document.forms["regForm"]["email"].value;
    var password1 = document.forms["regForm"]["password1"].value;
    var password2 = document.forms["regForm"]["password2"].value;
    
     if (name == "") {
        alert("Name Field Required");
        return false;
    }
    if (surname == "") {
        alert("Surname Field Required");
        return false;
    }
    if (reg_email == "") {
        alert("Email Field Required");
        return false;
    }
    if (password1 == "") {
        alert("Password Field Required");
        return false;
    }
    if (password2 == "") {
        alert("Password Field Required");
        return false;
    }

    if (password1 != password2) {
        alert("Passwords Do Not Match!");
        return false;
    }


}
