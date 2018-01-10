package za.ac.tut.web;

import java.io.IOException;
import java.util.ArrayList;
//import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tut.ac.za.business.Utility;
//import tut.ac.za.sessionbeans.ItemFacadeLocal;
import za.ac.tut.entity.Item;
import za.ac.tut.entity.Product;

public class AddToCartServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Utility util = (Utility)request.getSession().getAttribute("util");
        ArrayList<Item> cart = util.getCart();
        
        String page;
        
        int index = Integer.parseInt(request.getParameter("index"));
        String category = request.getParameter("category");
        String size = request.getParameter("size");
        
        ArrayList<Product> products;
        if(category.equalsIgnoreCase("female"))
        {
            products = Utility.female_products;
            page = "/female_clothes.jsp";
        }
        else if(category.equalsIgnoreCase("male"))
        {
            products = Utility.maleProducts;
            page = "/male_clothes.jsp";
        }
        else
        {
            products = Utility.saleProducts;
            page = "/sales.jsp";
        }
        
        
        Product product = products.get(index);
        product.setSize(size);
        
        boolean isProductInCart = Utility.isProductInCart(product, cart);
        Item item  = new Item();
        
        if(!isProductInCart)
        {
            item.setProduct(product);
            item.setQuantity(item.getQuantity()+ 1);
            item.calcSubTotal();
            
            cart.add(item);
            
        }
        //itemFacade.create(item);
        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        dispatcher.forward(request, response);

    }

}
