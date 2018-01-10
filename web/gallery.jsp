<%@page import="java.util.ArrayList"%>
<%@page import="za.ac.tut.entity.Item"%>
<%@page import="tut.ac.za.business.Utility"%>
<html>
    <head>
        <title>Gallery</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css" type="text/css"> 
    </head>
 
    <body>
        <div class="page">
            <!--Header-->
            <div class="header">
                <%
                    Utility util = (Utility)request.getSession().getAttribute("util");
                    //ArrayList<Item> cart = util.getCart();

                     if(util == null)
                    {
                        util = new Utility();   
                        request.getSession().setAttribute("util", util); 
                    } 
                %>
                <ul>
                  <li><img src="images/logo.jpg" alt="logo" width="400" height="90"/></li>
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a class="active" href="gallery.jsp">Gallery</a></li>
                    <li><a href="sales.jsp">Sales</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="cart.jsp">My Basket(<%=util.getCart().size()%>)</a></li>
            </div>

                <div class="container-center-div">
                    <center><a href="female_clothes.jsp"><img src="images/shop_link_ladies.PNG" width="200" height="50" alt="shop_link_ladies"/></a></center>
                    <center><img src="images/ladies.JPG" width="500" height="500" alt="ladies"/></center>
                    <br>
                    <center><img src="images/gents.JPG" width="500" height="500" alt="gents"/></center>
                    <center><a href="male_clothes.jsp"><img src="images/shop_link_gents.PNG" width="200" height="50" alt="shop_link_gents"/></a></center>
                </div>
            <br>
            <br><br><br><br><br>
            
                <center><p>&copy; Copyright 2017 Blackpearl Store.   All Rights Reserved.</p></center>
        </div>
    </body>
</html>


