

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

        <div class="page-wrapper">

            <main class="main">
                <div class="container py-5 h-100">
                    <div class="row">
                        <h3>Forgot password</h3>
                    </div>
                    <div class="row d-flex justify-content-center align-items-center">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <form method="post" action="inputEmailServlet">
                                        <label >Email</label>
                                        <input class="form-control" name="email" type="email" placeholder="examples@gmail.com" required>
                                        <div class="mb-3">
                                            <div id="emailHelp" class="form-text text-primary">We'll never share your email with anyone else.</div>
                                            <span style="color: red">${requestScope.err}</span>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <div class="row">
            &nbsp;
        </div>
    </main>
</div>

</body>


</html>
