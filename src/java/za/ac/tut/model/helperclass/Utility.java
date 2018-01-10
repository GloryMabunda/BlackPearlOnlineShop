/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package za.ac.tut.model.helperclass;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import za.ac.tut.entity.Item;

/**
 *
 * @author LAB1033PC029
 */
public class Utility {

    public static void add(HttpSession session, String description, String category, String size, String price) {
       
//        //List<Item> items = (List<Item>) session.getAttribute("cart");
//        if(items == null)
//        {
//            items = new ArrayList<Item>();
//        }
//        
//        //Item item = new Item(description, category, Integer.parseInt(size), Double.parseDouble(price));
//        
//        boolean isUnique = true;
//        
//        for (int i = 0; i < items.size(); i++) {
//            Item item1 = items.get(i);
//            
//            
//            if(item1.getDescription().equalsIgnoreCase(item.getDescription()))
//            {
//                isUnique = false;
//            }
//        }
//        if(isUnique){
//            items.add(item);
//        }
//        session.setAttribute("cart", items);
    }
    
}
