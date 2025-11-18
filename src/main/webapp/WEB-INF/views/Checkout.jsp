<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Checkout - Pay Now</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                <div class="card shadow-lg p-4">
                    <h2 class="card-title text-center mb-4"> Final Payment</h2>
                    
                    <form action="processPayment" method="post">
                    
                        <div class="alert alert-info text-center fw-bold" role="alert">
                            Final Amount: 
                            <span class="fs-4 text-success">
                            ${finalAmount}
                            </span>
                        </div>
                        
                        <div class="mb-3">
                            <label for="creditCardNum" class="form-label">Credit Card Number</label>
                            <input type="text" class="form-control" id="creditCardNum" name="creditCardNum" placeholder="1234 5678 9012 3456" required>
                        </div>
                        
                        <div class="row">
                            <div class="col-6 mb-3">
                                <label for="expiredDate" class="form-label">Expiry Date (MM/YY)</label>
                                <input type="text" class="form-control" id="expiredDate" name="expiredDate" placeholder="MM/YY" required>
                            </div>
                            <div class="col-6 mb-3">
                                <label for="cvv" class="form-label">CVV</label>
                                <input type="text" class="form-control" id="cvv" name="cvv" placeholder="123" required>
                            </div>
                        </div>
                        
                        <hr>

                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary btn-lg">Pay Now</button>
                        </div>
                    
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>