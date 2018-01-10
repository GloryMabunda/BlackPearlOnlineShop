/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tut.ac.za.business.Utility;
//import tut.ac.za.sessionbeans.CustomerOrderFacadeLocal;
//import tut.ac.za.sessionbeans.ItemFacadeLocal;
import za.ac.tut.entity.Address;
import za.ac.tut.entity.CustomerOrder;
import za.ac.tut.entity.Item;

/**
 *
 * @author LAB0033BPCLEC
 */
public class AddressServlet extends HttpServlet {
    //@EJB
    //private CustomerOrderFacadeLocal customerOrderFacade;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        Utility util = (Utility)request.getSession().getAttribute("util");
        ArrayList<Item> cart = util.getCart();   
        
        String streetNumber = request.getParameter("streetNumber");
        String streetName = request.getParameter("streetName");
        String city = request.getParameter("city");
        String areaCode = request.getParameter("areaCode");
        String phone = request.getParameter("phone");
        
          String name = (String) session.getAttribute("name");
        String surname = (String)session.getAttribute("surname");
        String gender = (String)session.getAttribute("gender");
        String email = (String)session.getAttribute("email");
        String password =(String) session.getAttribute("password");
        
        Address address = new Address(streetNumber, streetName, city, areaCode);
        request.getSession().setAttribute("address", address);
        request.getSession().setAttribute("phone", phone);
        
        Date date = new Date(System.currentTimeMillis());
        String currentDate = date.toString();
        
        CustomerOrder order = new CustomerOrder();
        CustomerOrder o = new CustomerOrder(currentDate, email, name, surname, gender, password, address, cart);
        
        
        //customerOrderFacade.create(order);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/invoice.jsp");
        dispatcher.forward(request, response);
    }
}
