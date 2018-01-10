package tut.ac.za.business;

import java.util.ArrayList;
import za.ac.tut.entity.Item;
import za.ac.tut.entity.Product;

public class Utility 
{
    public static ArrayList<Product> maleProducts;
    public static ArrayList<Product> female_products;
    public static ArrayList<Product> saleProducts;
    private ArrayList<Item> cart;

    public Utility() 
    {
        maleProducts = new ArrayList<>();
        female_products = new ArrayList<>();
        saleProducts = new ArrayList<>();
        
        female_products.add(new Product(107L, "Beige mermaid cape dress", "Dress", "S/M/L", 2100.00, "images/ladies/beige_cape_dress.JPG"));
        female_products.add(new Product(101L, "Black tail dress", "Dress", "S/M/L", 1750.00, "images/ladies/black_tail_dress.jpg"));
        female_products.add(new Product(102L, "Royal blue, long slit dress", "Dress", "S/M/L", 800, "images/ladies/royal_blue_dress.JPG"));
        female_products.add(new Product(103L, "Pink floral dress", "Dress", "S/M/L", 2500.00, "images/ladies/pink_floral_dress.jpg"));
        female_products.add(new Product(104L, "Red open shoes", "Shoes", "S/M/L", 300.00, "images/ladies/red_heels.jpg"));
        female_products.add(new Product(105L, "Orange pointy shoes", "Shoes", "S/M/L", 450.00, "images/ladies/orange_heels.jpg"));
        female_products.add(new Product(106L, "Pink pointy shoes", "Shoes", "S/M/L", 580.00, "images/ladies/pink_heels.jpg"));
        female_products.add(new Product(107L, "Royal Blue platform shoes", "Shoes", "S/M/L", 2100.00, "images/ladies/blue_heels.jpg"));
        female_products.add(new Product(108L, "Maroon clutch bag", "Bag", "S/M/L", 500.00, "images/ladies/maroon_clutch.jpg"));
        female_products.add(new Product(109L, "Beige clutch bag", "Bag", "S/M/L", 750.00, "images/ladies/beige_clutch.jpg"));
        female_products.add(new Product(110L, "Yellow clutch bag", "Bag", "S/M/L", 380.00, "images/ladies/yellow_clutch.jpg"));
        female_products.add(new Product(111L, "Royal Blue clutch bag", "Bag", "S/M/L", 380.00, "images/ladies/royal_blue_clutch.jpg"));
        
        maleProducts.add(new Product(200L, "Maroon two piece suit", "Suit", "S/M/L", 3000.00, "images/gents/maroon_suit.jpg"));
        maleProducts.add(new Product(201L, "Green two piece suit", "Suit", "S/M/L", 1200.00, "images/gents/gree_suit.JPG"));
        maleProducts.add(new Product(202L, "Grey three piece suit", "Suit", "S/M/L", 1800.00, "images/gents/grey_suit_1.jpg"));
        maleProducts.add(new Product(203L, "Red tuxedo suit", "Suit", "S/M/L", 3000.00, "images/gents/red_tuxedo_suit.jpg"));
        maleProducts.add(new Product(204L, "Orange tie set", "Tie", "S/M/L", 100.00, "images/gents/orange_tie_set.JPG"));
        maleProducts.add(new Product(205L, "Bow ties", "Tie", "S/M/L", 80.00, "images/gents/bow_ties.JPG"));
        maleProducts.add(new Product(206L, "Magneta tie set", "Tie", "S/M/L", 150.00, "images/gents/purple_tie.JPG"));
        maleProducts.add(new Product(207L, "Navy Blue with red pattern tie", "Tie", "S/M/L", 300.00, "images/gents/tie.JPG"));
        maleProducts.add(new Product(208L, "Black Aldo Shoes", "Shoes", "S/M/L", 4800.00, "images/gents/black_aldo_shoes.jpg"));
        maleProducts.add(new Product(209L, "Green studed Shoes", "Shoes", "S/M/L", 1600.00, "images/gents/green_shoes.jpg"));
        maleProducts.add(new Product(210L, "Brown shoes", "Shoes", "S/M/L", 800.00, "images/gents/brown_shoes.jpg"));
        maleProducts.add(new Product(211L, "Black Suede shoes", "Shoes", "S/M/L", 1200.00, "images/gents/black_shoes.jpg"));
        
        saleProducts.add(new Product(300L, "Pink turtle neck dress", "Dress", "S/M/L", 250.00, "images/sales/_20170414_054953.JPG"));
        saleProducts.add(new Product(301L, "Brown vintage two piece suit", "Suit", "S/M/L", 500.00, "images/sales/_20170414_060728.JPG"));
        saleProducts.add(new Product(302L, "Fawn two piece suit", "Suit", "S/M/L", 180.00, "images/sales/_20170414_060913.JPG"));
        saleProducts.add(new Product(303L, "Purple tie set", "Tie", "S/M/L", 30.00, "images/sales/_20170414_063631.JPG"));
        saleProducts.add(new Product(304L, "Beige tie set", "Tie", "S/M/L", 30.00, "images/sales/_20170414_064716.JPG"));
        saleProducts.add(new Product(305L, "Pink and black floral dress", "Dress", "S/M/L", 180.00, "images/sales/_20170414_084850.JPG"));
        saleProducts.add(new Product(306L, "Black vintage dress", "Dress", "S/M/L", 150.00, "images/sales/_20170414_085011.JPG"));
        saleProducts.add(new Product(307L, "Grey floral dress", "Dress", "S/M/L", 300.00, "images/sales/_20170414_085450.JPG"));
        
        cart = new ArrayList<>(); 
    }

    public static ArrayList<Product> getMaleProducts() {
        return maleProducts;
    }

    public static void setMaleProducts(ArrayList<Product> maleProducts) {
        Utility.maleProducts = maleProducts;
    }

    public static ArrayList<Product> getFemale_products() {
        return female_products;
    }

    public static void setFemale_products(ArrayList<Product> female_products) {
        Utility.female_products = female_products;
    }

    public static ArrayList<Product> getSaleProducts() {
        return saleProducts;
    }

    public static void setSaleProducts(ArrayList<Product> saleProducts) {
        Utility.saleProducts = saleProducts;
    }

    public ArrayList<Item> getCart() {
        return cart;
    }

    public void setCart(ArrayList<Item> cart) {
        this.cart = cart;
    }
    
    public static boolean isProductInCart(Product product, ArrayList<Item> cart)
    {
        for (Item item : cart) 
        {
            if(item.getProduct().getId() == product.getId())
            {
                item.setProduct(product);
                item.setQuantity(item.getQuantity() + 1);
                item.calcSubTotal();
                return true;
            }
        }
        
        return false;
    }
}
