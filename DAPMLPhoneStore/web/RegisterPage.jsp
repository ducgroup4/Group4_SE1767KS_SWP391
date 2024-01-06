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
                <section class="h-100 bg-dark">
                    <div class="container py-5 h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col">
                                <form id="regisFrm" action="registerServlet" method="post">
                                    <div class="card card-registration my-4">
                                        <div class="row g-0">
                                            <div class="col-xl-6 d-none d-xl-block">
                                                <img src="assets/images/register.png"
                                                     alt="Sample photo" class="img-fluid"
                                                     />
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="card-body p-md-5 text-black">
                                                    <h3 class="mb-5 text-uppercase">DAPML Phone Shop Registration form</h3>

                                                    <!-- Name input -->
                                                    <div class=" mb-4">
                                                        <label class="form-label" for="registerName">Name</label>
                                                        <input name="name" type="text" id="registerName" class="form-control" required/>

                                                    </div>

                                                    <!-- Username input -->
                                                    <div class=" mb-4">
                                                        <label class="form-label" for="registerUsername">Username</label>
                                                        <input name="username" type="text" id="registerUsername" class="form-control" required pattern="[a-zA-Z0-9]+"/>

                                                    </div>

                                                    <!-- Email input -->
                                                    <div class=" mb-4">
                                                        <label class="form-label" for="registerEmail">Email</label>
                                                        <input name="email" type="email" id="registerEmail" class="form-control" required />


                                                    </div>

                                                    <div class=" mb-4">
                                                        <label class="form-label" for="registerEmail">Phone</label>
                                                        <input name="phone" type="tel" pattern="[0-9]{10}" type="" id="registerEmail" class="form-control" minlength="10" maxlength="10" pattern="[0-9]+" required />


                                                    </div>

                                                    <!-- Password input -->
                                                    <div class=" mb-4">
                                                        <label class="form-label" for="registerPassword">Password</label>
                                                        <div style="display: flex" class="form-white mb-4">
                                                            <input id="RegisPass" name="password" type="password" class="form-control"  title="Password needs to have at least one symbol, one uppercase letter, and one number" required minlength="6"/>
                                                            <a> <i class="fa-solid fa-eye" onclick="showhideenRegisPass(event)"></i></a>
                                                        </div>
                                                    </div>

                                                    <!-- Repeat Password input -->
                                                    <div class=" mb-4">
                                                        <label class="form-label" for="registerRepeatPassword">Repeat password</label>
                                                        <div style="display: flex" class="form-white mb-4">
                                                            <input name="resetPassword" type="password" id="ReRegisPass" class="form-control" required minlength="6"/>
                                                            <a> <i class="fa-solid fa-eye" onclick="showhideenReRegisPass(event)"></i></a>
                                                        </div>
                                                        <span id="regisErr" style="color:red">${rerr==null?"":rerr}</span>  
                                                    </div>
                                                    <button type="button" class="btn btn-warning btn-lg ms-2" onclick="regisSubmit(event)">Register</button>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </form>
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
