<%--
  Created by IntelliJ IDEA.
  User: kaushirajapakshe
  Date: 2019-09-27
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Travel By Bus</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/ManageMyStyles.css">


    <%-- <script src="js/jquery.dataTables.js" type="text/javascript"></script>--%>
    <%-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>--%>
    <%--<script src="js/google-map.js"></script>--%>
    <%--<script src="js/main.js"></script>--%>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="Home.jsp">Travel<span>ByBus</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="Home.jsp" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="SignIn.jsp" class="nav-link">Sign In</a></li>
                <%if (session.getAttribute("type")!=null){%>

                <%if(session.getAttribute("type").toString().equalsIgnoreCase("Admin")){%>
                <li class="nav-item"><a href="ManageBus.jsp" class="nav-link">Manage Buses</a></li>
                <li class="nav-item"><a href="ManageRoute.jsp" class="nav-link">Manage Routes</a></li>
                <li class="nav-item"><a href="ManageSchedule.jsp" class="nav-link">Schedules</a></li>
                <li class="nav-item"><a href="tempuser.jsp" class="nav-link">Tickets</a></li>
                <li class="nav-item"><a href="ManagerCardApproval.jsp" class="nav-link">Approval</a></li>
                <li class="nav-item"><a href="ViewCharts.jsp" class="nav-link">Analysis</a></li>

                <%}else if(session.getAttribute("type").toString().equalsIgnoreCase("Customer")){%>

                <li class="nav-item"><a href="ViewSchedule.jsp" class="nav-link">Bus Schedule</a></li>
                <li class="nav-item"><a href="PaymentMethod.jsp" class="nav-link">Payment Method</a></li>
                <li class="nav-item"><a href="RequestCard.jsp" class="nav-link">Request Card</a></li>
                <%}%>

                <%}else{%>


                <li class="nav-item"><a href="Register.jsp" class="nav-link">Register</a></li>

                <%}%>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_2.jpg'); overflow: auto"
         data-stellar-background-ratio="0.5">
    <div class="overlay"></div>

    <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start" style="margin-top: 7vh">
        <div class="col-md-9 ftco-animate pb-5">
            <div class="container">
<%--                <form method="post" name="registerForm" action="RegisterServlet" >--%>
                    <div class="col-md-6 form-group">
                        <label for="" class="label">First Name</label>
                        <input type="text" id="fname" pattern="[a-zA-Z]+$" class="form-control" placeholder="Kaushalya">
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="" class="label">Last Name</label>
                        <input type="text" id="lname" pattern="[a-zA-Z]+$" class="form-control"
                               placeholder="Rajapakshe">
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="" class="label">User Type</label>
                        <select class="form-control select2" name="userType" id="userType" style="width: 100%">
                            <option value="Customer">Customer</option>
                            <option value="Conductor">Conductor</option>
                            <option value="Admin">Admin</option>
                        </select>
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="" class="label">User Name</label>
                        <input type="text" id="username" class="form-control" placeholder="kaushi.rajapakshe@gmail.com">
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="" class="label">Password</label>
                        <input type="password" id="password" class="form-control"
                               placeholder="Please enter strong password">
                    </div>
                    <div class="col-md-6 form-group">
                        <input type="button" value="Sign Up" id="signUp" class="btn btn-primary py-3 px-4">
                    </div>
                    <span style="color: white">By Signing Up, you agree with the <u
                            style="cursor: pointer; color: #007bff">Term of Service </u>and <u
                            style="cursor: pointer; color: #007bff">Privacy Policy</u></span>
                    <br/><br/>
                    <div class="col-md-6 form-group">
                        <input type="button" value="Already have an Account?" id="signIn" class="btn-lg btn-success"
                               style="cursor: pointer;">
                    </div>
                    <p class="breadcrumbs"><span class="mr-2"><a href="Home.jsp">Home <i
                            class="ion-ios-arrow-forward"></i></a></span>
                        <span>Sign Up with Email <i class="ion-ios-arrow-forward"></i></span></p>
                    <h1 class="mb-3 bread">Create an Account</h1>
<%--                </form>--%>
            </div>
        </div>
    </div>
</section>


<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00"/>
    </svg>
</div>

<script src="js/jquery-3.3.1.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.buttons.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="js/select2.full.min.js"></script>
<script src="js/buttons.print.min.js"></script>
<script src="js/Chart.js"></script>
<%--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>--%>
<%--<script src="js/google-map.js"></script>--%>
<script src="js/main.js"></script>

<%--  <!--Export table button CSS-->

  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">--%>


</body>
</html>

<script>
    $("#signUp").click(function () {


        var fname = $('#fname').val();
        var lname = $('#lname').val();
        var username = $('#username').val();
        var password = $('#password').val();
        var userType = $('#userType').val();

        if (fname == "") {
            alert("Please enter the First Name to continue")
        } else if (lname == "") {
            alert("Please enter the Last Name to continue")
        } else if (username == "") {
            alert("Please enter the User Name to continue")
        } else if (password == "") {
            alert("Please enter the Password to continue")
        } else {

            $.ajax({

                type: 'POST',
                url: '/RegisterServlet',
                data: {
                    'fname': fname,
                    'lname': lname,
                    'userType': userType,
                    'username': username,
                    'password': password,
                },

                success: function () {
                    window.location.href = "SignIn.jsp"

                }

            })
        }
    })

    $("#signIn").click(function () {


        $.ajax({

            success: function () {
                window.location.href = "SignIn.jsp"

            }

        })
    })

</script>
