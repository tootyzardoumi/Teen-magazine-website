<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment method</title>
    <link rel="stylesheet" href="payment.css">
   
    <link rel="stylesheet" href="header&footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>
    
<body a link="#808080" vlink="#808080">
    <div class="wrapper">
    
        <header>
            <nav>
            
            <div class="menu-icon">
                <i class="fa fa-bars fa-2x"></i>
                </div>
            <div class="logo">
                TEEN MAGAZINE
                </div>
                <div class="menu">
                    <ul>
                    
                        
                        <font size="4">  <a href="homepage.html">Home</a>
                        <a href="men.html">Men</a>
                        <a href="women.html">Women</a>
                        <a href="contact-us.html">Contact</a>
                        <a href="about-us.html">About</a>
                        <a href="sign%20in.html">login</a></font>
                    
                    </ul>
                    
                </div>
                
                
            </nav>
          
        
        </header>
    </div>
    
<form action = "PHP/include/paymentcode.php" , method="POST">
    <div class="wrapper">
        <div class="Payment">
            
            <h2> Thank you!</h2>
            <div class="form">
			
			
			
			
                <div class="card space icon-relative">
                    <label class="label"> Card Holder:</label>
                    <input type="text" class="input" name="p_CardHolder "  replaceholder="John Smith" required >

                </div>
                <div class="card space icon-relative">
                    <label class="label"> Card Number:</label>
                    <input type="text" class="input" name="p_CardNumber "  placeholder="Card Number" data-mask="0000 0000 0000 0000" required>
                </div>
                <div class="crd-grp space ">
                    <div class="card-item icon-relative">
                        <label class="label"> Expiry Date:</label>
                        <input type="text" class="input" name="p_ExpiryDate "  placeholder="00 / 00" data-mask="00/00" required>
                    </div>
                    <div class="card-item icon-relative">
                        <label class="label"> CVC:</label>
                        <input type="text" class="input" name="p_CVC "  placeholder="000" data-mask="000" required>
                    </div>
                </div>
                <button type="submit" name="submit">pay</button>
                

            </div>
        </div>
    </div>
    
     </form>
    
	
    

    
    
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
    
    
    
    
    
    
    
    
    
    
    
    
    <div class = "footer">
        <div class="footer-content">
            
        <div class ="footer-section about">
            <h1 class="logo-text"><span>TEEN </span>MAGAZINE</h1>
            <p>
                TEEN MAGAZINE is fashion magazine targting wild youth to feed their hunger for street fashion, viral trends, culture and spread love.
                
            </p>
            <div class="contact">
            <span><i class="fa fa-phone"></i>&nbsp; 000-111-222-333 </span>
            <span><i class="fa fa-envelope"></i>&nbsp; info@teenmagazine.com </span>
            </div>
            <div class="social">
            <a href="#"> <i class="fa fa-facebook"></i></a>
            <a href="#"> <i class="fa fa-instagram"></i></a>
            <a href="#"> <i class="fa fa-twitter"></i></a>
            </div>
            </div>
            
        <div class ="footer-section links">
            <h2>Quick Links</h2>
            <br>
            <ul>
                <a href="homepage.html"><li>Home</li></a>
                <a href="men.html"><li>MEN</li></a>
                <a href="women.html"><li>WOMAN</li></a>
                <a href="sign%20in.html"><li>LOGIN</li></a>
                <a href="about-us.html"><li>ABOUT US</li></a>
                <a href="contact-us.html"><li>Contact</li></a>
            </ul>
        </div>
            
            
            
            
        <div class ="footer-section contact-form">
        
            <h2>Contact us</h2>
            <br>
            <form action="index.html" method="post">
            <input type="email" name ="email" class="text-input contact-input" placeholder="your email address...">
            <textarea name="message" class="text-input contact-input" placeholder="your message..."></textarea>
                <button type="submit" class="btn btn-big contact-btn">
                <i class="fa fa-envelope"></i>
                send
                </button>
            </form>
        </div>


        </div>
        <div class="footer-bottom">
        &copy; Mostafa,Maryam
        </div>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="header.js" async charset="utf-8"></script>
    </body>
    
</html>