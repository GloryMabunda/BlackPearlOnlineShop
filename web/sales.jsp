
<%@page import="tut.ac.za.business.Utility"%>
<html>
    <head>
        <title>Sales</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css" type="text/css"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">-->
    </head>
    <div class="text">Logged in as : </div><br><br>

    <body>
        <div class="page">
            <!--Header-->
            <div class="header">
                <%
                    Utility util = (Utility)request.getSession().getAttribute("util");                                           

                     if(util == null)
                    {
                        util = new Utility();   
                        request.getSession().setAttribute("util", util);
                    } 
                %>
                <ul>
                    <li><img src="images/logo.jpg" alt="logo" width="400" height="90"/></li>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
                    <li><a class="active" href="sales.jsp">Sales</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="cart.jsp">My Cart(<%=util.getCart().size()%>)</a></li>
                </ul>

            </div>
            <br><br>
            <!-- main body div-->
            <div class="main"> 
                <div class="gallery">            

                    <table border="1" cellspacing="10" cellpadding="10" align="center" cellborder="2">
                        <tr>
                            <td>              
                                <form action="AddToCartServlet.do" method="POST">
                                    <img src="images/sales/_20170414_054953.JPG" width="200" height="150" /><br>
                                    <input type="hidden" name="index" value="0"/>
                                    <input type="hidden" name="category" value="sales"/>
                                    <select name="size">
                                        <option></option>
                                        <option value="S">Small</option>
                                        <option value="M">Medium</option>
                                        <option value="L">Large</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                    <input type="submit" value="Add To Basket" class="normalButton"/>
                                </form>
                            </td>
                            <td>
                                <form action="AddToCartServlet.do" method="POST">
                                    <img src="images/sales/_20170414_060728.JPG" width="200" height="150" /><br>
                                    <input type="hidden" name="index" value="1"/>
                                    <input type="hidden" name="category" value="sales"/>
                                    <select name="size">
                                        <option></option>
                                        <option value="S">Small</option>
                                        <option value="M">Medium</option>
                                        <option value="L">Large</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                    <input type="submit" value="Add To Basket" class="normalButton"/>
                                </form>
                            </td>
                            <td>
                                <form action="AddToCartServlet.do" method="POST">
                                    <img src="images/sales/_20170414_060913.JPG" width="200" height="150" /><br>
                                    <input type="hidden" name="index" value="2"/>
                                    <input type="hidden" name="category" value="sales"/>
                                    <select name="size">
                                        <option></option>
                                        <option value="S">Small</option>
                                        <option value="M">Medium</option>
                                        <option value="L">Large</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                    <input type="submit" value="Add To Basket" class="normalButton"/>
                                </form>
                            </td>
                            <td>
                                <form action="AddToCartServlet.do" method="POST">
                                    <img src="images/sales/_20170414_063631.JPG" width="200" height="150"/><br>
                                    <input type="hidden" name="index" value="3"/>
                                    <input type="hidden" name="category" value="sales"/>
                                    <select name="size">
                                        <option></option>
                                        <option value="S">Small</option>
                                        <option value="M">Medium</option>
                                        <option value="L">Large</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                    <input type="submit" value="Add To Basket" class="normalButton"/>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <form action="AddToCartServlet.do" method="POST">
                                    <img src="images/sales/_20170414_064716.JPG" width="200" height="150"/><br>
                                    <input type="hidden" name="index" value="4"/>
                                    <input type="hidden" name="category" value="sales"/>
                                    <select name="size">
                                        <option></option>
                                        <option value="S">Small</option>
                                        <option value="M">Medium</option>
                                        <option value="L">Large</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                    <input type="submit" value="Add To Basket" class="normalButton"/>
                                </form>
                            </td>
                            <td>
                                <form action="AddToCartServlet.do" method="POST">
                                    <img src="images/sales/_20170414_064716.JPG" width="200" height="150"/><br>
                                    <input type="hidden" name="index" value="5"/>
                                    <input type="hidden" name="category" value="sales"/>
                                    <select name="size">
                                        <option></option>
                                        <option value="S">Small</option>
                                        <option value="M">Medium</option>
                                        <option value="L">Large</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                    <input type="submit" value="Add To Basket" class="normalButton"/>
                                </form>
                            </td>
                            <td>
                                <form action="AddToCartServlet.do" method="POST">
                                    <img src="images/sales/_20170414_085011.JPG" width="200" height="150"/><br>
                                    <input type="hidden" name="index" value="6"/>
                                    <input type="hidden" name="category" value="sales"/>
                                    <select name="size">
                                        <option></option>
                                        <option value="S">Small</option>
                                        <option value="M">Medium</option>
                                        <option value="L">Large</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                    <input type="submit" value="Add To Basket" class="normalButton"/>
                                </form>
                            </td>
                            <td>
                                <form action="AddToCartServlet.do" method="POST">
                                    <img src="images/sales/_20170414_085450.JPG" width="200" height="150"/><br>
                                    <input type="hidden" name="index" value="7"/>
                                    <input type="hidden" name="category" value="sales"/>
                                    <select name="size">
                                        <option></option>
                                        <option value="S">Small</option>
                                        <option value="M">Medium</option>
                                        <option value="L">Large</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                    <input type="submit" value="Add To Basket" class="normalButton"/>
                                </form>
                            </td>
                        </tr>

                    </table>
                </div>
                <table cellpadding="10">
                    <tr>
                        <td>
                            <form action="cart.jsp" method="POST">
                                <input type="submit" value="View Cart" class="normalButton"/>
                            </form>
                        </td>
                        <td></td>
                        <td>
                            <form action="female_clothes.jsp" method="POST">
                                <input type="submit" value="Ladies Shop" class="normalButton"/>
                            </form>
                        </td>
                        <td></td>
                        <td>
                            <form action="male_clothes.jsp" method="POST">
                                <input type="submit" value="Gents Shop" class="normalButton"/>
                            </form>
                        </td>
                    </tr>
                </table> 
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
                <center><p>&copy; Copyright 2017 Blackpearl Store.   All Rights Reserved.</p></center>
        </div>
            
    </body>
</html>


