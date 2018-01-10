
<%@page import="tut.ac.za.business.Utility"%>
<html>
    <head>
        <title>Welcome Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css" type="text/css"> 
    </head>
    
       <%
                    Utility util = (Utility)request.getSession().getAttribute("util");
                    //ArrayList<Item> cart = util.getCart();
                    String email = (String)session.getAttribute("email");
                    
                    String msg = null;
                    if(email == null)
                    {
                        msg = "";
                    }
                    else
                    {
                        msg = "Logged in as:" + email;
                    }

                     if(util == null)
                    {
                        util = new Utility();   
                        request.getSession().setAttribute("util", util); 
                    } 
                %>

                <div class="text"><%=msg%></div><br><br>
    <body>

        <div class="page">
            <!--Header-->
            <div class="header">
             
                <ul>
                    <li><img src="images/logo.jpg" alt="logo" width="400" height="90"/></li>
                    <li><a class="active"  href="index.jsp">Home</a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
                    <li><a href="sales.jsp">Sales</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="cart.jsp">My Cart(<%=util.getCart().size()%>)</a></li>
                    <li>
                        <div class="box">
                            <a class="button" href="#popup1">Sign-in|Register</a><br><br>
                        </div>
                    </li>
                    <li>
                    </li>
                </ul>
            </div>

            <!--slide show-->
            <div class="slideshow-container">

                <div class="mySlides fade">

                    <img class="slide" src="images/slide1.JPG" style="width: 100%" height="30%"/>
                    <div class="text">Get your elegant style with us...</div>
                </div>

                <div class="mySlides fade">
                    <img class="slide" src="images/slide2.JPG" style="width: 100%" height="30%"/>
                    <div class="text">Elegance is timeless...</div>
                </div>
            </div>
            <br><br><br>
            <!-- main body div-->
            <div class="main">
                <!--Login pop-up-->
                <div id="popup1" class="overlay">
                    <div class="popup">
                        <a class="close" href="#">&times;</a>
                        <div class="content">
                            <div class="form-style-3">
                                <form name="myForm" onsubmit="return validate();" action="CustomerLoginSevlet.do" method="POST">

                                    <fieldset><legend>LOGIN</legend>


                                        <label for="login_email"><span>Email Address   <span class="required"></span></span><input type="email" class="input-field" name="login_email" value="" /></label><br>
                                        <label for="login_password"><span>Password       <span class="required"></span></span><input type="password" class="input-field" name="login_password" value="" /></label><br>
                                        <span>&nbsp;</span><input type="submit" value="Login" style="float: left"/>
                                        <div class="box">
                                            <a href="#popup2" style="float: right">Create Account</a>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Register pop-up-->
                <div id="popup2" class="overlay">
                    <div class="popup">
                        <a class="close" href="#">&times;</a>
                        <div class="content">
                            <div class="form-style-3">
                                <form name="regForm" onsubmit="return validateReg();" action="RegistrationServlet.do" method="POST" >

                                    <fieldset><legend>REGISTER</legend>
                                        <label for="name"><span>Names <span class="required">:</span></span><input type="text" class="input-field" name="name" value="" /></label>
                                        <label for="surname"><span>Surname <span class="required">:</span></span><input type="text" class="input-field" name="surname" value="" /></label>
                                        <label for="gender"><span>Gender</span><select name="gender" class="select-field">
                                                <option value="Female">Female</option>
                                                <option value="Male">Male</option>

                                            </select></label>
                                        <label for="email"><span>Email <span class="required">:</span></span><input type="email" class="input-field" name="email" value="" /></label>


                                        <label for="password1"><span>Password <span class="required">:</span></span><input type="password" class="input-field" name="password1" value="" /></label>
                                        <label for="password2"><span>Re-type Password <span class="required">:</span></span><input type="password" class="input-field" name="password2" value="" /></label>
                                        <label><span>&nbsp;</span><input type="submit" value="Register" /></label>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Sales Promotions-->
                <table cellspacing="20">
                    <tr>
                        <td>
                            <a href="gallery.jsp"><img src="images/spree.PNG" width="600" height="600" alt="spree" class="promotions"/></a>
                        </td>
                        <td>
                            <a href="sales.jsp"><img src="images/sales.PNG"  alt="sale" width="500"  height="290" class="promotions"/></a> <br><br>
                            <a href="sales.jsp"><img src="images/promotions.PNG"  alt="sale" width="500"  height="290" class="promotions"/></a>
                        </td>
                    </tr>
                </table>
                
                <br><br>
                <!--Footer-->
                <div class="footer">

                    <!--<center>-->
                    
                        Follow us on social media<br>
                        <a href="https://www.facebook.com"><img src="images/facebook.png" width="50" height="50" alt="facebook"/></a>
                        <a href="https://www.twitter.com"><img src="images/twitter.png" width="50" height="50" alt="facebook"/></a>
                        <a href="https://www.instagram.com"><img src="images/instagram.png" width="50" height="50" alt="facebook"/></a>
                        <p>&copy; Copyright 2017 Blackpearl Store.   All Rights Reserved.</p>
                    <!--</center>-->

                </div>
            </div>
        </div>
        <script src="script.js"></script>
    </body>
</html>


