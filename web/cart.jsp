<%@page import="java.util.ArrayList"%>
<%@page import="za.ac.tut.entity.Item"%>
<%@page import="tut.ac.za.business.Utility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Basket Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css" type="text/css"> 
    </head>

    <body>
        <div class="page">
            <!--Navigation menu-->
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
                    <li><a class="active" href="cart.jsp">My Basket(<%=cart.size()%>)</a></li>
                </ul>
            </div>
            <br><br><br>
            <div class="main">
                <table align="">
                    <th>Image</th><th>Description</th><th>Quantity</th><th>Size</th><th>Price</th><th></th>
                    <%

                        for(int i = 0; i < cart.size(); i++)
                        {           
                    %>

                    <tr>
                        <td><img src="<%= cart.get(i).getProduct().getImg()%>" width="200px" height="150px"/></td>
                        <td><%=cart.get(i).getProduct().getDescription()%></td>
                        <td>
                            <form action="UpdateQuantityServlet.do" method="POST">
                                <input type="hidden" name="index" value="<%=i%>" />
                                <input type="number" name="quantity" min="1 "value="<%=cart.get(i).getQuantity()%>" onchange="this.form.submit()"/>
                            </form>
                        </td>
                        <td><%=cart.get(i).getProduct().getSize()%></td>
                        <td>R <%=cart.get(i).calcSubTotal()%>0</td>
                        <td>
                            <form action="RemoveServlet.do" method="POST">
                                <input type="hidden" name="index" value="<%=i%>" />
                                <input type="submit" value="Remove from Basket" class="normalButton"/>
                            </form>
                                  
                        </td>
                        
                    </tr>
                     
                    <%
                        }
                    %>
                </table>
                <br>
                <br>
                <table cellpadding="10">
                    <tr>
                        <td><b><a href="gallery.jsp" class="normalButton">Continue Shopping</a></b></td>
                        <td></td>
                        <td></td>
                        <td><b><a href="checkout.jsp" class="normalButton">Perform Checkout</a></b></td>
                    </tr>
                </table>
            </div>
        </div>
    </body>
</html>


