<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Jewel Theme">
        <meta name="description" content="Wheel - Responsive and Modern Car Rental Website Template">
        <meta name="keywords" content="">
        <title>Wheel vehicle rental customer login</title>
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <!-- reset css -->
        <link rel="stylesheet" type="text/css" href="assets/css/css_reset.css">
        <!-- bootstrap -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/jquery.datetimepicker.min.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
        <!-- preload -->
        <link rel="stylesheet" type="text/css" href="assets/css/loaders.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/index.css">
        <!--[if lt IE 9]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="">
        <!-- MAIN -->
       
        <div class="wheel-menu-wrap ">
            <div class="container-fluid wheel-bg1">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="wheel-logo">
                            <a href="index.jsp"><img src="images/log1212.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-sm-9 col-xs-12 padd-lr0">
                        <div class="wheel-top-menu clearfix">
                            <div class="wheel-top-menu-info">
                                <div class="top-menu-item"><a href="#"><i class="fa fa-phone"></i><span>(+94)774365275</span></a></div>
                                <div class="top-menu-item"><a href="#"><i class="fa fa-envelope"></i><span>wheelrental@gmail.com</span></a></div>
                            </div>
                            <div class="wheel-top-menu-log">
                                <div class="top-menu-item">
                                    <div class="dropdown wheel-user-ico">
                                        <button class="btn btn-default dropdown-toggle" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        Account
                                        <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="register.jsp">Login</a></li>
                                            <li><a href="register.jsp">Register</a></li>
                                            <li><a href="#">Profile</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="top-menu-item">
                                    <div class="dropdown wheel-lang-ico">
                                        <button class="btn btn-default dropdown-toggle" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        Eng
                                        <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">Sinhala</a></li>
                                            <li><a href="#">Tamil</a></li>
                                            
                                        </ul>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9 ">
                        <div class="wheel-navigation">
                            <nav id="dl-menu">
                                <!-- class="dl-menu" -->
                                <ul class="main-menu dl-menu">
                                    <li class="menu-item   current-menu-parent menu-item-has-children   active-color ">
                                        <a href="index.jsp">Home</a>
                                        
                                    </li>
                                    <li class="menu-item current-menu-parent menu-item-has-children  ">
                                        <a href="#"> About Us </a>
                                        <!--class=" dl-submenu "-->
                                        
                                    </li>
                                    <li class="menu-item   ">
                                        <a href="#">Reservation</a>
                                    </li>
                                    <li class="menu-item menu-item-has-children  ">
                                        <a href="#">Services</a>
                                        <ul class="sub-menu">
                                            <li class="menu-item "><a href="#">Wedding & Vip Hires</a></li>
                                            <li class="menu-item "><a href="#">Self drive rental</a></li>
                                            <li class="menu-item "><a href="#">Airport trancfers</a></li>
                                       
                                            
                                        </ul>
                                    </li>
                                    <li class="menu-item menu-item-has-children  ">
                                        <a href="#">Rent Your Vehicle</a>
                                        
                                    </li>
                                    <li class="menu-item ">
                                        <a href="#">Contact Us</a>
                                    </li>
                                </ul>
                                <div class="nav-menu-icon"><i></i></div>
                            </nav>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //////////////////////////////// -->
        <div class="wheel-start3">
            <img src="images/bg7.jpg" alt="" class="wheel-img">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 padd-lr0">
                        <div class="wheel-start3-body clearfix marg-lg-t255 marg-lg-b75 marg-sm-t190 marg-xs-b30">
                            
                            <ol class="breadcrumb">
                                <li><a href="adminlogin.jsp">Admin Login</a></li>
                                
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /////////////////////////////////// -->
        <div class="wheel-register-block">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 padd-l0">
                        <div class="wheel-register-log marg-lg-t150 marg-lg-b150 marg-sm-t100 marg-sm-b100">
                            <div class="wheel-header">
                                <h5>have an account? Log In</h5>
                            </div>
                            <form action="log" method="post">
                                <label for="email" class="fa fa-user"><input type="email" name="email" placeholder='Email'></label>
                                <label for="password" class="fa fa-lock"><input type="password" name="password" placeholder='Passsword'></label>
                                <button  type="submit" name="submit">Login Now</button>
                                <label class="password-sing clearfix" for="input-val2">
                                <input type='checkbox' id='input-val2'> <span>Keep me signed in</span>
                                <a href="#">Forgot password?</a>
                                </label>
                            </form>
                            <div class="wheel-register-link">
                                <a href="#" class="wheel-btn-link wheel-bg11">Sign in With Facebook</a>
                                <a href="#" class="wheel-btn-link wheel-bg12">Sign in With Twitter</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7 padd-r0">
                        <div class="wheel-register-sign marg-lg-t150 marg-lg-b150 marg-sm-t100 marg-sm-b100">
                            <div class="wheel-header">
                                <h5>Sign up Now </h5>
                                <h3>Get <span>Registered</span></h3>
                            </div>
                            <form action="insert" method="post">
                                <input type="text" name="name" placeholder="Name" required="required">
                                <input type="email" name="email"placeholder="Email" required="required">
                                <input type="tel" name="phone"placeholder="Phone Number" required="required">
                                <input type="text" name="username"placeholder="Username" required="required">
                                <input type="password" name="password"placeholder="Password" required="required">
                                <input type="password" placeholder="Confirm Password" required="required">
                                <label for="input-val1">
                                <input type="checkbox" id='input-val1'> <span>I agree with the </span>
                                <a href="#">Terms and Conditions</a>
                                </label>
                                <button  type="submit" name="submit">Sign Up</button>
                            </form>
                            <div class="wheel-register-link">
                                <a href="#" class="wheel-btn-link wheel-bg11">Register With Facebook</a>
                                <a href="#" class="wheel-btn-link wheel-bg12">Register With Twitter</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
       
        <!-- FOOTER -->
        
         <footer class="wheel-footer">
            <img src="images/bg4.jpg" alt="" class="wheel-img">
            <div class="container">
                <div class="row">
                    <div class="col-md-3  col-sm-6  padd-lr0">
                        <div class="wheel-address">
                            <div class="wheel-footer-logo"><a href="#"><img src="images/log1212.png" alt=""></a></div>
                            <ul>
                                <li><span><i class="fa fa-map-marker"></i>No:121 colombo 3 <br>
                                    Sri Lanka  </span>
                                </li>
                                <li><a href="#"><span><i class="fa fa-phone"></i> (+94)778603856</span></a></li>
                                <li><a href="#"><span><i class="fa fa-envelope"></i>wheelrental@gmail.com</span></a></li>
                            </ul>
                            <div class="wheel-soc">
                                <a href="#" class="fa fa-twitter"></a>
                                <a href="#" class="fa fa-facebook"></a>
                                <a href="#" class="fa fa-linkedin"></a>
                                <a href="#" class="fa fa-instagram"></a>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6  padd-lr0">
                        <div class="wheel-footer-item">
                            <h3>Useful Links</h3>
                            <ul>
                                <li><a href="#" class="">About us</a></li>
                                <li><a href="#" class="">Customer Service</a></li>
                                <li><a href="#" class="">Contact Us</a></li>
                                <li><a href="#" class="">Safety Recall</a></li>
                                <li><a href="#" class="">Privacy policy</a></li>
                                <li><a href="#" class="">Terms & condition</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6  padd-lr0">
                        <div class="wheel-footer-item ">
                            <h3>Vehicles</h3>
                            <ul>
                                <li><a href="#" class="">Exotic Cars</a></li>
                                <li><a href="#" class="">SUVs</a></li>
                                <li><a href="#" class="">Trucks</a></li>
                                <li><a href="#" class="">Mini Vans</a></li>
                                <li><a href="#" class="">Moving Trucks</a></li>
                                <li><a href="#" class="">Vans</a></li>
                                <li><a href="#" class="">RVs</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 padd-lr0">
                        <div class="wheel-footer-gallery">
                            <h3>Photo Gallery</h3>
                            <div class="  clearfix">
                                <div class="wheel-footer-galery-item"><a href="#"><img src="images/i11.jpg" alt=""></a></div>
                                <div class="wheel-footer-galery-item"><a href="#"><img src="images/i12.jpg" alt=""></a></div>
                                <div class="wheel-footer-galery-item"><a href="#"><img src="images/i13.jpg" alt=""></a></div>
                                <div class="wheel-footer-galery-item"><a href="#"><img src="images/i14.jpg" alt=""></a></div>
                                <div class="wheel-footer-galery-item"><a href="#"><img src="images/i15.jpg" alt=""></a></div>
                                <div class="wheel-footer-galery-item"><a href="#"><img src="images/i16.jpg" alt=""></a></div>
                                <div class="wheel-footer-galery-item"><a href="#"><img src="images/i17.jpg" alt=""></a></div>
                                <div class="wheel-footer-galery-item"><a href="#"><img src="images/i18.jpg" alt=""></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <div class="wheel-footer-info wheel-bg6">
            <div class="container">
                <div class="row">
                   <div class="col-lg-8 col-sm-6  padd-lr0"><span>&#169; WHEEL 2022 | <a href="#">wheelrental</a> </span></div>
                    
                </div>
            </div>
        </div>
         <!-- Scripts project -->
          <script type="text/javascript" src="assets/js/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
        
        
        <!-- swiper -->
        <script type="text/javascript" src="assets/js/idangerous.swiper.min.js"></script>
        <script type="text/javascript" src="assets/js/equalHeightsPlugin.js"></script>
        <script type="text/javascript" src="assets/js/jquery.datetimepicker.full.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script type="text/javascript" src="assets/js/bootstrap-select.min.js"></script>
        <script type="text/javascript" src="assets/js/index.js"></script>
        <!-- sixth block end -->
    </body>

</html>