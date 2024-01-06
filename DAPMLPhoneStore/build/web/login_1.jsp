<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="assets/images/logo_2.png"/>
        <title>DAPML PHONE WEBSITE    </title>
        <!-- Bootstrap core CSS -->
        <%@include file="component/user/head.jsp" %>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="css/login.css">

    </head>

    <body>

        <!-- ***** Preloader Start ***** -->
        <div id="preloader">
            <div class="jumper">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>  
        <!-- ***** Preloader End ***** -->

        <!-- Header -->
        <div class="sub-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-xs-12">
                        <ul class="left-info">
                            <li><a href="#"><i class="fa fa-envelope"></i>dapmlphonestore@gmail.com</a></li>
                            <li><a href="#"><i class="fa fa-phone"></i>0379522545</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul class="right-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Page Content -->
        <!-- Banner Starts Here -->
        <div class="page-wrapper">
            <main class="main">
                <section class="vh-100 gradient-custom">
                    <div class="container py-5 h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                                <div class="card bg-dark text-white" style="border-radius: 1rem;">
                                    <form id="loginFrm" action="loginServlet" method="post">
                                        <div class="card-body p-5 text-center">

                                            <div class="mb-md-5 mt-md-4 pb-5">

                                                <h2 class="fw-bold mb-2 text-uppercase text-white">Login</h2>
                                                <p class="text-white-50 mb-5">Please enter your login and password!</p>

                                                <div class="form-white mb-4">
                                                    <label class="form-label" style="color: white" for="typeEmailX">Username</label>
                                                    <input id-="loginName" placeholder="username" name="name" type="" class="form-control form-control-lg" />

                                                </div>

                                                <div class="form-white mb-4">
                                                    <label class="form-label" style="color: white" for="typePasswordX">Password</label>
                                                    <div style="display: flex" class="form-white mb-4">
                                                        <input placeholder="password" id="passwordInput" pattern="[-a-zA-Z0-9~!$%^&amp;*_=+}{'?]+(\.[-a-zA-Z0-9~!$%^&amp;*_=+}{'?]+)*@([a-zA-Z0-9_][-a-zA-Z0-9_]*(\.[-a-zA-Z0-9_]+)*\.([cC][oO][mM]))(:[0-9]{1,5})?" title="Password needs to have at least one symbol, one uppercase letter, and one number" name="password" type="password" class="form-control" required minlength="6" class="form-control form-control-lg" />
                                                        <i style="position: absolute; right: 40px; bottom: 53%; color: black" class="fa-solid fa-eye" onclick="showhideenPass(event)"></i>

                                                    </div>
                                                </div>

                                                <span style="color:red">${err==null?"":err}</span>  

                                                <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="inputEmail.jsp">Forgot password?</a></p>

                                                <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>

                                                <div class="d-flex justify-content-center text-center mt-4 pt-1">
                                                    <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                                                    <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                                                    <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
                                                </div>

                                            </div>

                                            <div>
                                                <p class="mb-0">Don't have an account? <a href="RegisterPage.jsp" class="text-white-50 fw-bold">Sign Up</a>
                                                </p>
                                            </div>

                                        </div>  
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="row">
                    &nbsp;
                </div>
            </main>
        </div>

        <!-- Footer Starts Here -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 footer-item">
                        <h4>Mobile Store</h4>
                        <p>Vivamus tellus mi. Nulla ne cursus elit,vulputate. Sed ne cursus augue hasellus lacinia sapien vitae.</p>
                        <ul class="social-icons">
                            <li><a rel="nofollow" href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-item">
                        <h4>Useful Links</h4>
                        <ul class="menu-list">
                            <li><a href="#">Vivamus ut tellus mi</a></li>
                            <li><a href="#">Nulla nec cursus elit</a></li>
                            <li><a href="#">Vulputate sed nec</a></li>
                            <li><a href="#">Cursus augue hasellus</a></li>
                            <li><a href="#">Lacinia ac sapien</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-item">
                        <h4>Additional Pages</h4>
                        <ul class="menu-list">
                            <li><a href="#">Products</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Terms</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-item last-item">
                        <h4>Contact Us</h4>
                        <div class="contact-form">
                            <form id="contact footer-contact" action="" method="post">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <fieldset>
                                            <input name="name" type="text" class="form-control" id="name" placeholder="Full Name" required="">
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <fieldset>
                                            <input name="email" type="text" class="form-control" id="email" pattern="[^ @]*@[^ @]*" placeholder="E-Mail Address" required="">
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <fieldset>
                                            <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your Message" required=""></textarea>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <fieldset>
                                            <button type="submit" id="form-submit" class="filled-button">Send Message</button>
                                        </fieldset>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <div class="sub-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p>
                            Copyright © 2020 Company Name
                            - Template by: <a href="index.html">DAPML Phone Shop</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Additional Scripts -->
        <script src="assets/js/custom.js"></script>
        <script src="assets/js/owl.js"></script>
        <script src="assets/js/slick.js"></script>
        <script src="assets/js/accordions.js"></script>

        <script language = "text/Javascript">
                                                            cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
                                                            function clearField(t) {                   //declaring the array outside of the
                                                                if (!cleared[t.id]) {                      // function makes it static and global
                                                                    cleared[t.id] = 1;  // you could use true and false, but that's more typing
                                                                    t.value = '';         // with more chance of typos
                                                                    t.style.color = '#fff';
                                                                }
                                                            }
        </script>
        <script>
            let pass = document.getElementById("registerPassword")
            let rpass = document.getElementById("registerRepeatPassword")
            let regisErr = document.getElementById("regisErr")
            let regisfrm = document.getElementById("regisFrm")
            let passinput = document.getElementById("passwordInput")
            let regisPass = document.getElementById("RegisPass")
            let reregisPass = document.getElementById("ReRegisPass")

            function regisSubmit(event) {
                regisErr.innerHTML = '';
                console.log(pass);
                console.log(rpass);
                if (regisPass.value != reregisPass.value) {
                    regisErr.innerHTML = 're-password and password dosent match';
                    event.preventDefault();
                } else if (!validatePassword(regisPass.value)) {
                    regisErr.innerHTML = 'password contain at least on symbole, number and Upper character'
                    event.preventDefault();
                } else {
                    regisfrm.submit();
                }
            }


            function showhideenPass(event)
            {

                if (passinput.type == 'password') {
                    event.target.classList.remove('fa-eye')

                    event.target.classList.add('fa-eye-slash')
                    passinput.type = 'text'
                } else {
                    event.target.classList.remove('fa-eye-slash')

                    event.target.classList.add('fa-eye')

                    passinput.type = 'password'
                }

            }

            function showhideenRegisPass(event) {
                if (regisPass.type == 'password') {
                    event.target.classList.remove('fa-eye')

                    event.target.classList.add('fa-eye-slash')
                    regisPass.type = 'text'
                } else {
                    event.target.classList.remove('fa-eye-slash')

                    event.target.classList.add('fa-eye')

                    regisPass.type = 'password'
                }
            }

            function showhideenReRegisPass(event) {
                if (reregisPass.type == 'password') {
                    event.target.classList.remove('fa-eye')

                    event.target.classList.add('fa-eye-slash')
                    reregisPass.type = 'text'
                } else {
                    event.target.classList.remove('fa-eye-slash')

                    event.target.classList.add('fa-eye')

                    reregisPass.type = 'password'
                }
            }

            function loginFrmSubmit() {
                if (!validatePassword()) {
                    document.getElementById("RegisErr").innerHTML = "password must contain at least one symbol, number and uppercase"
                } else {
                    document.getElementById("RegisFrm").submit()
                }
            }

            function validatePassword(password) {
                var symbolRegex = /[!@#$%^&*(),.?":{}|<>]/;
                var numberRegex = /\d/;
                var uppercaseRegex = /[A-Z]/;

                if (!symbolRegex.test(password)) {
                    alert("Password must contain at least one symbol.");
                    return false;
                }

                if (!numberRegex.test(password)) {
                    alert("Password must contain at least one number.");
                    return false;
                }

                if (!uppercaseRegex.test(password)) {
                    alert("Password must contain at least one uppercase letter.");
                    return false;
                }

                return true;
            }

        </script>
    </body>
</html>
