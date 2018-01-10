<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="style.css" type="text/css"> 

    </head>
    <body>
        <script src="script.js"></script>
        <div class="page">
            <div class="header">
                <ul>
                    <li><img src="images/logo.jpg" alt="logo" width="400" height="90" /></li>
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a class="active"  href="login.jsp">Sign-in|Register</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="news.html">News</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="gallery.jsp">Gallery</li>

                </ul>
            </div>
            <br>



            <!-- body div-->
            <div class="main">
                <div class="form-style-3">
                    <form onsubmit="return validateForm();" action="CustomerLoginSevlet.do" method="POST">

                        <fieldset><legend>LOGIN</legend>
                            <center><img src="images/MyAcc.PNG" width="250" height="100" alt="MyAcc"/></center>

                            <label for="login_email"><span>Email <span class="required">:</span></span><input type="email" class="input-field" name="login_email" value="" /></label>
                            <label for="login_password"><span>Password <span class="required">:</span></span><input type="password" class="input-field" name="login_password" value="" /></label>
                            <label><span>&nbsp;</span><input type="submit" value="Login" /></label>
                        </fieldset>

                    </form>

                    <form action="register.jsp">
                        <fieldset><legend>NEW USER?</legend>
                            <label><span>&nbsp;</span> <input type="submit" value="Register Now" /></label>
                        </fieldset>
                    </form>

                </div>
            </div>

            <div class="footer">
                <p>&copy; Copyright 2017 Blackpearl Store.   All Rights Reserved.</p>
            </div>
        </div>


    </body>

</html>
