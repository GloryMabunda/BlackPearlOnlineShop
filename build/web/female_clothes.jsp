<%@page import="java.util.ArrayList"%>
<%@page import="za.ac.tut.entity.Item"%>
<%@page import="tut.ac.za.business.Utility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ladies</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css" type="text/css"> 
    </head>

    <body>
        <div class="page">
            <!--Navigation Menu-->
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
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a class="active" href="gallery.jsp">Gallery</a></li>
                    <li><a href="sales.jsp">Sales</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="cart.jsp">My Basket(<%=util.getCart().size()%>)</a></li>
                </ul>
            </div>
            <br><br><br>
            <div class="main"> 
                <div class="gallery">            

                    <table border="1" cellspacing="10" cellpadding="10" align="center" cellborder="2">
                        <tr>
                            <td>              
                                <form action="AddToCartServlet.do" method="POST">
                                    <img src="images/ladies/beige_cape_dress.JPG" width="200" height="150" /><br>
                                    <input type="hidden" name="index" value="0"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/black_tail_dress.jpg" width="200" height="150" /><br>
                                    <input type="hidden" name="index" value="1"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/royal_blue_dress.JPG" width="200" height="150" /><br>
                                    <input type="hidden" name="index" value="2"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/pink_floral_dress.jpg" width="200" height="150"/><br>
                                    <input type="hidden" name="index" value="3"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/red_heels.jpg" width="200" height="150"/><br>
                                    <input type="hidden" name="index" value="4"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/orange_heels.jpg" width="200" height="150"/><br>
                                    <input type="hidden" name="index" value="5"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/pink_heels.jpg" width="200" height="150" alt="purple_tie"/><br>
                                    <input type="hidden" name="index" value="6"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/blue_heels.jpg" width="200" height="150" alt="tie"/><br>
                                    <input type="hidden" name="index" value="7"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/maroon_clutch.jpg" width="200" height="150" alt="brownish_shoes"/><br>
                                    <input type="hidden" name="index" value="8"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/beige_clutch.jpg" width="200" height="150" alt="kick_shoes"/><br>
                                    <input type="hidden" name="index" value="9"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/yellow_clutch.jpg" width="200" height="150" alt="stylish_shoes"/><br>
                                    <input type="hidden" name="index" value="10"/>
                                    <input type="hidden" name="category" value="female"/>
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
                                    <img src="images/ladies/royal_blue_clutch.jpg" width="200" height="150" alt="ugly_shoes"/><br>
                                    <input type="hidden" name="index" value="11"/>
                                    <input type="hidden" name="category" value="female"/>
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
                        <td></td>
                        <td>
                            <form action="sales.jsp" method="POST">
                                <input type="submit" value="View Sales" class="normalButton"/>
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


