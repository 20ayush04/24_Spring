package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import jakarta.servlet.http.HttpServletRequest; // Import to access cart/session data
import java.util.List;
// You need to import your ProductCartBean here:
// import com.bean.ProductCartBean; 


@Controller
public class PaymentController {

	@GetMapping("/checkout")
	// We need HttpServletRequest to access session/cart attributes
	public String checkout(Model model, HttpServletRequest request) {
		
		// 1. CALL THE METHOD TO CALCULATE THE REAL PRICE SECURELY
		float calculatedFinalAmount = calculateCartTotal(request); 
		
		// 2. Add the real calculated data to the Model
		// The JSP will read this using ${finalAmount}
		model.addAttribute("finalAmount", calculatedFinalAmount);
		
		return "Checkout"; 
	}
    
    /**
     * THIS IS WHERE YOUR REAL LOGIC GOES.
     * This method must retrieve the cart items (ProductCartBean List) 
     * from the session or a service and sum their prices.
     */
    private float calculateCartTotal(HttpServletRequest request) {
        
        // --- START YOUR ACTUAL LOGIC HERE ---
        
        // This is the correct way to get the List of items you need:
        /*
        List<ProductCartBean> cartItems = (List<ProductCartBean>) request.getSession().getAttribute("cart_session_key"); 
        
        float total = 0.0f;
        if (cartItems != null) {
            for (ProductCartBean item : cartItems) {
                total += item.getPrice() * item.getQty();
            }
        }
        return total;
        */
        
        // Placeholder for immediate testing:
        return 120000.00f; // Replace this with the actual calculation above!
    }
}