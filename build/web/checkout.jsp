
<%@page import="java.util.ArrayList"%>
<%@page import="za.ac.tut.entity.Item"%>
<%@page import="tut.ac.za.business.Utility"%>
<html>
    <head>
        <title>Welcome Page</title>
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
                        ArrayList<Item> cart = util.getCart();

                        if(util == null)
                        {
                            util = new Utility();                  
                        }

                        if(cart == null)
                        {
                            cart = new ArrayList<Item>();
                        }                  
                %>
                <ul>
                    <li><img src="images/logo.jpg" alt="logo" width="400" height="90"/></li>
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a  href="gallery.jsp">Gallery</a></li>
                    <li><a href="sales.jsp">Sales</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="cart.jsp">My Basket(<%=cart.size()%>)</a></li>
                    <li><a class="active" href="checkout.jsp">Check Out</a></li>
                </ul>
            </div>
            <br><br><br><br><br><br><br>
            <!-- main body div-->
            <div class="main">
                <center>
                <div class="checkoutBox">
                    <form action="AddressServlet.do" method="POST">
                    <div class="form-style-6 " >
                    <table>
                
                    <h2>Shipping Address</h2>
                    
                        
                        <tr>
                            <td><input type="text" name="streetNumber" placeholder="Street Number" /></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="streetName" placeholder="Street Name" /></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="city" placeholder="City" /></td>
                        </tr>
                        
                        <tr>
                            <td><select name="areaCode">
                            <option>Area Code: </option>
                            <option value="1001">1001</option>
                            <option value="1002">1002</option>
                            <option value="1003">1003</option>
                            <option value="1004">1004</option>
                            <option value="1005">1005</option>
                            <option value="1006">1006</option>
                            <option value="1007">1007</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="phone" placeholder="Phone Number" /></td>
                        </tr>
                        
                        <tr>
                            <td><input type="submit" value="Save" /></td>
                        </tr>
                        
                        </table>
                        </div>
                    </form>
                </div>
                </center>
                </div>
            </div>

            <div class="footer">
                <p>&copy; Copyright 2017 Blackpearl Store.   All Rights Reserved.</p>
            </div>
        
    </body>
