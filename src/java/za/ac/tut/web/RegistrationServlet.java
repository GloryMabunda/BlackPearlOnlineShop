/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.entity.CustomerOrder;

/**
 *
 * @author LAB1033PC029
 */
public class RegistrationServlet extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session = request.getSession();
        
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String password = request.getParameter("password2");
        
        CustomerOrder customerOrder = new CustomerOrder();
        customerOrder.setClientName(name);
        customerOrder.setClientSurnamae(surname);
        customerOrder.setClientGender(gender);
        customerOrder.setEmailAddress(email);
        customerOrder.setPassword(password);
        
        session.setAttribute("name", name);
        session.setAttribute("surname", surname);
        session.setAttribute("gender", gender);
        session.setAttribute("email", email);
        session.setAttribute("password", password);
   
        session.setAttribute("email", email);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        dispatcher.forward(request, response);
    }

}
