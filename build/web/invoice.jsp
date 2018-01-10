<%@page import="za.ac.tut.entity.Address"%>
<%@page import="java.util.ArrayList"%>
<%@page import="za.ac.tut.entity.Item"%>
<%@page import="tut.ac.za.business.Utility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice Page</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        <div class="page">
            <!--Header-->
            <div class="header">
                <%
                        Utility util = (Utility)request.getSession().getAttribute("util");
                        Address address = (Address)request.getSession().getAttribute("address");
                        String phone = (String)request.getSession().getAttribute("phone");
                        ArrayList<Item> cart = util.getCart();

                        if(util == null)
                        {
                            util = new Utility();                  
                        }

                        if(cart == null)
                        {
                            cart = new ArrayList<Item>();
                        }
                        
                        if(address == null)
                        {
                            address = new Address();
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
                <div class="gallery">
                <table>
                    <th>Items:  </th>
                    <%
                    
                        double total = 0.00;
                        double amt = 0.00;
                        int numOfItems = 0;
                        int totalItems = 0;

                        for(int i = 0; i < cart.size(); i++)
                        {           
                    %>
                     <tr>
                         <td><%=cart.get(i).getQuantity()%></td>
                        <td><%=cart.get(i).getProduct().getDescription()%></td>
                        <td><b>(<%=cart.get(i).getProduct().getSize()%>)</b></td>
                        <td>R <%=cart.get(i).calcSubTotal()%>0</td>
                        <td>
                    </tr>
                    <tr>
                    <%
                        amt += cart.get(i).calcSubTotal();
                        numOfItems += cart.get(i).getQuantity();
                        }
                         total = amt;
                         totalItems = numOfItems;
                    %>
                    
                    <td><b>Sub Total:                      R<%=total%>0</b></td>              

                    </tr>
                    <tr>
                        <td><b>Number of Items:                                  <%=totalItems%></b></td>
                    </tr>
                </table>
                <table>
                    <th>Shipping Address:</th>
                    <tr>
                        <td>Street Number:  </td>
                        <td><%=address.getStreetNumber()%></td>
                    </tr>
                    <tr>
                        <td>Street Name:    </td>
                        <td><%=address.getStreetName()%></td>
                    </tr>
                    <tr>
                        <td>City:   </td>
                        <td><%=address.getCity()%></td>
                    </tr>
                    <tr>
                        <td>Area Code:  </td>
                        <td><%=address.getCode()%></td>
                    </tr>
                    <tr>
                        <td>Phone Number:   </td>
                        <td><%=phone%></td>                        
                    </tr>
                    <tr>
                        <td></td>
                        <td><b><i>*Remember to keep your phone close by within the next 24hrs, so that you can confirm your order when we call you.</i></b></td>
                    </tr>
                </table>
            <br>
            <table>
                <tr>
                    <td>
                        <form action="ExitServlet.do" method="GET">
                            <input type="submit" value="Start Shopping" class="normalButton"/>
                        </form>
                    </td>
                    <td>
                        <form action="sales.jsp" method="POST">
                            <input type="submit" value="View Sales" class="normalButton"/>
                        </form>
                    </td>
                </tr>
                
                
            </table>
            </div>
            </div>
        </div>
    </body>
</html>
