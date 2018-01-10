<%@page import="tut.ac.za.business.Utility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gentlemen</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css" type="text/css"> 
    </head>
    
    <body>
        <div class="page">
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
                    <li><a class="active" href="gallery.jsp">Gallery</a></li>
                    <li><a href="sales.jsp">Sales</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="cart.jsp">My Basket(<%=util.getCart().size()%>)</a></li>
                </ul>
            </div>
            <br>
            <br>
            <!-- body div-->
            <div class="main">
                <div class="gallery">
                    <h2 class="form-style-6">We cater for men too...</h2>
                  <table border="1" cellspacing="10" cellpadding="10" align="center" cellborder="2">
<!--                        <table>-->

                    <tr>
                       <td>              
                           <form action="AddToCartServlet.do" method="POST">
                               <img src="images/gents/maroon_suit.jpg" width="200" height="150" /><br>
                               <input type="hidden" name="index" value="0"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <input type="submit" value="Add To Basket" class="normalButton" />
                           </form>

                       </td>
                       <td>
                           <form action="AddToCartServlet.do" method="POST">
                               <img src="images/gents/gree_suit.JPG" width="200" height="150" /><br>
                               <input type="hidden" name="index" value="1"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <img src="images/gents/grey_suit_1.jpg" width="200" height="150" /><br>
                               <input type="hidden" name="index" value="2"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <img src="images/gents/red_tuxedo_suit.jpg" width="200" height="150" /><br>
                               <input type="hidden" name="index" value="3"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <img src="images/gents/orange_tie_set.JPG" width="200" height="150"/><br>
                               <input type="hidden" name="index" value="4"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <img src="images/gents/bow_ties.JPG" width="200" height="150" /><br>
                               <input type="hidden" name="index" value="5"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <img src="images/gents/purple_tie.JPG" width="200" height="150"/><br>
                               <input type="hidden" name="index" value="6"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <img src="images/gents/tie.JPG" width="200" height="150" alt="tie"/><br>
                               <input type="hidden" name="index" value="7"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <img src="images/gents/black_aldo_shoes.jpg" width="200" height="150" alt="brownish_shoes"/><br>
                               <input type="hidden" name="index" value="8"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <img src="images/gents/green_shoes.jpg" width="200" height="150" /><br>
                               <input type="hidden" name="index" value="9"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <img src="images/gents/brown_shoes.jpg" width="200" height="150"/><br>
                               <input type="hidden" name="index" value="10"/>
                               <input type="hidden" name="category" value="male"/>
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
                               <img src="images/gents/black_shoes.jpg" width="200" height="150" /><br>
                               <input type="hidden" name="index" value="11"/>
                               <input type="hidden" name="category" value="male"/>
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
                <br><br><br><br><br><br>

                
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
            </div
            <br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
                <center><p>&copy; Copyright 2017 Blackpearl Store.   All Rights Reserved.</p></center>
        </div>
        </div>
    </body>
</html>


