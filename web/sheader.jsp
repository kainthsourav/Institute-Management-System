 <!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Edge Responsive Multipurpose Template</title>
    <meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/flexslider.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="css/animate.css"/>

    <link rel="stylesheet" type="text/css" href="css/switcher.css" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="home">
    <header id="header">
        <!-- Start header-top -->
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="hidden-xs col-lg-7 col-sm-5 top-info">
                        <span><i class="fa fa-phone"></i>Phone: (123) 456-7890</span>
                        <span class="hidden-sm"><i class="fa fa-envelope"></i>Email: mail@example.com</span>
                    </div>
                    <div class="col-lg-5 col-sm-7 top-info clearfix">
                        <ul>
      <% if(session.getAttribute("uname")!=null)
        { 
                        
        out.println("<span class='hidden-xs'>Welcome " +session.getAttribute("uname") + "</span>");
        }
        else
        {
            response.sendRedirect("login.jsp");
        }
        %>
                          <span><a href="out.jsp" style="color:white"><i class="fa fa-power-off"></i>Sign Out</a></li></span>
                    
                            
                        
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!--/.header-top -->

        <div id="menu-bar">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-3">
                        <div id="logo">
                            <h1><a href="Welcome.jsp"><img src="images/log.png"/></a></h1>
                        </div>
                    </div>
                    <!-- Navigation
                    ================================================== -->
                    <div class="col-lg-9 col-sm-9 navbar navbar-default navbar-static-top container" role="navigation">
                        <!--  <div class="container">-->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="Welcome.jsp"><span class="data-hover"data-hover="home">home</span></a>
                                    
                                </li>
                                 <li><a href="#"><span class="data-hover" data-hover="Assignments">Assignments</span></a>
                                    <ul class="dropdown-menu">
                                                <li><a href="viewa2.jsp">Download Assignments</a></li>
                                                <li><a href="up.jsp">Upload Assignments</a></li>
                                                <li><a href="view3.jsp">View/Delete</a></li>
                                        </li>
                                    </ul>
                                </li>

                                <li><a href="#"><span class="data-hover" data-hover="Viva Questions">Viva Questions</span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="viva.jsp">Core Java</a></li>
                                        </li>
                                    </ul>
                                </li>

                                <li><a href="feedback2.jsp"> <span class="data-hover" data-hover="Feedback">Feedback</span></a>
                                </li>
                                <li><a href="#"><span class="data-hover" data-hover="Account">Account</span></a>
                                    <ul class="dropdown-menu">
                                                <li><a href="pass.jsp">Change Password</a></li>
                                                <li><a href="out.jsp">Sign Out</a></li>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </header>

<!--End Header-->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script> <!-- jQuery cookie -->
<script type="text/javascript" src="js/styleswitch.js"></script> <!-- Style Colors Switcher -->
<!--
<script src="js/jquery.fractionslider.js" type="text/javascript" charset="utf-8"></script>
-->
<script type="text/javascript" src="js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="js/jflickrfeed.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="js/swipe.js"></script>
<script type="text/javascript" src="js/jquery-scrolltofixed-min.js"></script>
<script type="text/javascript" src="js/jquery-scrolltofixed-min.js"></script>
<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>

<script src="js/main.js"></script>