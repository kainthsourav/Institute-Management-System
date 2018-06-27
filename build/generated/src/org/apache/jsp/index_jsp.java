package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(" <!DOCTYPE html>\n");
      out.write("<!--[if IE 8 ]><html class=\"ie ie8\" class=\"no-js\" lang=\"en\"> <![endif]-->\n");
      out.write("<!--[if (gte IE 9)|!(IE)]><!--><html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("    <title>Edge Responsive Multipurpose Template</title>\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("\n");
      out.write("    <!-- CSS FILES -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/flexslider.css\"/>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" media=\"screen\" data-name=\"skins\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/layout/wide.css\" data-name=\"layout\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/animate.css\"/>\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/switcher.css\" media=\"screen\" />\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("    <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("    <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("</head>\n");
      out.write("<body class=\"home\">\n");
      out.write("    <header id=\"header\">\n");
      out.write("        <!-- Start header-top -->\n");
      out.write("        <div class=\"header-top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"hidden-xs col-lg-7 col-sm-5 top-info\">\n");
      out.write("                        <span><i class=\"fa fa-phone\"></i>Phone: (123) 456-7890</span>\n");
      out.write("                        <span class=\"hidden-sm\"><i class=\"fa fa-envelope\"></i>Email: mail@example.com</span>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-5 col-sm-7 top-info clearfix\">\n");
      out.write("                        <ul>\n");
      out.write("\t\t\t\t<span><a href=\"login.jsp\" style=\"color:white\"><i class=\"fa fa-user\"></i>Log In </a></li></span>\n");
      out.write("                            </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--/.header-top -->\n");
      out.write("\n");
      out.write("        <div id=\"menu-bar\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-3 col-sm-3\">\n");
      out.write("                        <div id=\"logo\">\n");
      out.write("                            <h1><a href=\"index.jsp\"><img src=\"images/lo.png\"/></a></h1>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Navigation\n");
      out.write("                    ================================================== -->\n");
      out.write("                    <div class=\"col-lg-9 col-sm-9 navbar navbar-default navbar-static-top container\" role=\"navigation\">\n");
      out.write("                        <!--  <div class=\"container\">-->\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"navbar-collapse collapse\">\n");
      out.write("                            <ul class=\"nav navbar-nav\">\n");
      out.write("                                <li class=\"active\"><a href=\"index.jsp\"><span class=\"data-hover\"data-hover=\"home\">home</span></a>\n");
      out.write("                                    \n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li><a href=\"#\"><span class=\"data-hover\" data-hover=\"Shortcodes\">Shortcodes</span></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"elements.html\">Elements</a></li>\n");
      out.write("                                        <li><a href=\"columns.html\">Columns</a></li>\n");
      out.write("                                        <li><a href=\"typography.html\">Typography</a></li>\n");
      out.write("                                        <li><a href=\"pricing-tables.html\">Pricing Tables</a></li>\n");
      out.write("                                        <li><a href=\"icons.html\">Icons</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li><a href=\"#\" ><span class=\"data-hover\" data-hover=\"pages\">Pages</span></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"about.html\">About</a>\n");
      out.write("                                            <ul class=\"dropdown-menu\">\n");
      out.write("                                                <li><a href=\"about.html\">About Us 1</a></li>\n");
      out.write("                                                <li><a href=\"about-2.html\">About Us 2</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"services.html\">Services</a></li>\n");
      out.write("                                        <li><a href=\"faq.html\">FAQ</a></li>\n");
      out.write("                                        <li><a href=\"sidebar-right.html\">Right Sidebar</a></li>\n");
      out.write("                                        <li><a href=\"sidebar-left.html\">Left Sidebar</a></li>\n");
      out.write("                                        <li><a href=\"404-page.html\">404 Page</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li><a href=\"#\"><span class=\"data-hover\" data-hover=\"Portfolio\">Portfolio</span></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"#\">Portfolio Classic</a>\n");
      out.write("                                            <ul class=\"dropdown-menu\">\n");
      out.write("                                                <li><a href=\"portfolio_2.html\">Portfolio 2</a></li>\n");
      out.write("                                                <li><a href=\"portfolio_3.html\">Portfolio 3</a></li>\n");
      out.write("                                                <li><a href=\"portfolio_4.html\">Portfolio 4</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"portfolio_masonry_3.html\">Portfolio Masnory</a>\n");
      out.write("                                            <ul class=\"dropdown-menu\">\n");
      out.write("                                                <li><a href=\"portfolio_masonry_2.html\">Masonry portfolio 2</a></li>\n");
      out.write("                                                <li><a href=\"portfolio_masonry_3.html\">Masonry portfolio 3</a></li>\n");
      out.write("                                                <li><a href=\"portfolio_masonry_4.html\">Masonry portfolio 4</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </li>\n");
      out.write("\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"portfolio_single.html\">Portfolio Single</a>\n");
      out.write("                                            <ul class=\"dropdown-menu\">\n");
      out.write("                                                <li><a href=\"portfolio_single.html\">Portfolio Single 1</a></li>\n");
      out.write("                                                <li><a href=\"portfolio_single_2.html\">Portfolio Single 2</a></li>\n");
      out.write("                                                <li><a href=\"portfolio_single_3.html\">Portfolio Single 3</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li><a href=\"#\"><span class=\"data-hover\" data-hover=\"blog\">Blog</span></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"portfolio_masonry_3.html\">Masnory Blog Style</a>\n");
      out.write("                                            <ul class=\"dropdown-menu\">\n");
      out.write("                                                <li><a href=\"blog-masonry-two.html\">Blog Masonry 2</a></li>\n");
      out.write("                                                <li><a href=\"blog-masonry-three.html\">Blog Masonry 3</a></li>\n");
      out.write("                                                <li><a href=\"blog-masonry-four.html\">Blog Masonry 4</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"portfolio_masonry_3.html\">Classic Blog Style</a>\n");
      out.write("                                            <ul class=\"dropdown-menu\">\n");
      out.write("                                                <li><a href=\"blog-large-image.html\">Large Image</a></li>\n");
      out.write("                                                <li><a href=\"blog-medium-image.html\">Medium Image</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"blog-post.html\">Single Post</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li><a href=\"#\"> <span class=\"data-hover\" data-hover=\"contact\">Contact</span></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"contactus.jsp\">Contact US</a></li>\n");
      out.write("                                        <li><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!--/.container -->\n");
      out.write("        </div>\n");
      out.write("        <!--/#menu-bar -->\n");
      out.write("        <div class=\"slider_block\">\n");
      out.write("            <div class=\"flexslider top_slider\">\n");
      out.write("                <ul class=\"slides\">\n");
      out.write("                    <li class=\"slide1\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"flex_caption1\">\n");
      out.write("\n");
      out.write("                                <p class=\"slide-heading FromTop\">Voluptas Assumenda Est </p><br/>\n");
      out.write("\n");
      out.write("                                <p class=\"sub-line FromBottom\">Dolore Magnam Aliquam Quaerat Voluptatem  </p><br/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"flex_caption2 FromRight\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                    <li class=\"slide2\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"slide flex_caption1\">\n");
      out.write("                                <p class=\"slide-heading FromTop\">Edge is our theme</p><br/>\n");
      out.write("\n");
      out.write("                                <p class=\"sub-line FromRight\">Dolore Magnam Aliquam Quaerat Voluptatem </p><br/>\n");
      out.write("\n");
      out.write("                                <a href=\"\" class=\"slider-read FromLeft\">Download Now</a>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"flex_caption2 FromBottom\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"slide3\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"slide flex_caption1\">\n");
      out.write("                                <p class=\"slide-heading FromTop\">Easy to Maintain </p><br/>\n");
      out.write("\n");
      out.write("                                <p class=\"sub-line FromRight\">Powerful Features & Responsive Designs </p><br/>\n");
      out.write("\n");
      out.write("                                <a href=\"\" class=\"slider-read FromLeft\">Download Now</a>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"flex_caption2 FromRight\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("<!--End Header-->    \n");
      out.write("\n");
      out.write("<!--start footer-->\n");
      out.write("<footer class=\"footer\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("\t\t<div class=\"col-lg-6  wow slideInLeft\" data-wow-duration=\"1s\">\n");
      out.write("                    <div class=\"dividerHeading\">\n");
      out.write("                        <h4><span>About Us</span></h4>\n");
      out.write("                    </div>\n");
      out.write("            <p>Donec earum rerum hic tenetur ans sapiente delectus, ut aut reiciendise voluptat maiores alias consequaturs aut perferendis doloribus asperiores.</p>\n");
      out.write("                <div class=\"widget_content\">\n");
      out.write("                    <ul class=\"contact-details-alt\">\n");
      out.write("                        <li><i class=\"fa fa-map-marker\"></i> <p><strong>Address</strong>: #2021 Lorem Ipsum</p></li>\n");
      out.write("                        <li><i class=\"fa fa-user\"></i> <p><strong>Phone</strong>:(+91) 9000-12345</p></li>\n");
      out.write("                        <li><i class=\"fa fa-envelope\"></i> <p><strong>Email</strong>: <a href=\"#\">mail@example.com</a></p></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-6 col-md-3 col-lg-3\">\n");
      out.write("                <div class=\"widget_title\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"widget_content\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</footer>\n");
      out.write("<!--end footer-->\n");
      out.write("\n");
      out.write("<section class=\"footer_bottom\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-6\">\n");
      out.write("                <p class=\"copyright\">&copy; Copyright 2015 Edge | Powered by  <a href=\"http://www.jqueryrain.com/\">jQuery Rain</a></p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-sm-6 \">\n");
      out.write("                <div class=\"footer_social\">\n");
      out.write("                    <ul class=\"footbot_social\">\n");
      out.write("                        <li><a class=\"fb\" href=\"#.\" data-placement=\"top\" data-toggle=\"tooltip\" title=\"Facebook\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                        <li><a class=\"twtr\" href=\"#.\" data-placement=\"top\" data-toggle=\"tooltip\" title=\"Twitter\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                        <li><a class=\"dribbble\" href=\"#.\" data-placement=\"top\" data-toggle=\"tooltip\" title=\"Dribbble\"><i class=\"fa fa-dribbble\"></i></a></li>\n");
      out.write("                        <li><a class=\"skype\" href=\"#.\" data-placement=\"top\" data-toggle=\"tooltip\" title=\"Skype\"><i class=\"fa fa-skype\"></i></a></li>\n");
      out.write("                        <li><a class=\"rss\" href=\"#.\" data-placement=\"top\" data-toggle=\"tooltip\" title=\"RSS\"><i class=\"fa fa-rss\"></i></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.10.2.min.js\"></script>\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("<script src=\"js/retina-1.1.0.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.cookie.js\"></script> <!-- jQuery cookie -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/styleswitch.js\"></script> <!-- Style Colors Switcher -->\n");
      out.write("<!--\n");
      out.write("<script src=\"js/jquery.fractionslider.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\n");
      out.write("-->\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.smartmenus.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.smartmenus.bootstrap.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.jcarousel.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jflickrfeed.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.isotope.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/swipe.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-scrolltofixed-min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-scrolltofixed-min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.flexslider-min.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Start Style Switcher -->\n");
      out.write("<div class=\"switcher\"></div>\n");
      out.write("<!-- End Style Switcher -->\n");
      out.write("    <script>\n");
      out.write("        $('.flexslider.top_slider').flexslider({\n");
      out.write("            animation: \"fade\",\n");
      out.write("            controlNav: false,\n");
      out.write("            directionNav: true,\n");
      out.write("            prevText: \"&larr;\",\n");
      out.write("            nextText: \"&rarr;\"\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("    <!-- WARNING: Wow.js doesn't work in IE 9 or less -->\n");
      out.write("    <!--[if gte IE 9 | !IE ]><!-->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/wow.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            // WOW Animation\n");
      out.write("            new WOW().init();\n");
      out.write("        </script>\n");
      out.write("    <![endif]-->\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
 
    Cookie ck[]=request.getCookies();
    if(ck!=null)
    {
        for(int x=0;x<ck.length;x++)
        {
            if(ck[x].getName().equals("name"))
            {
                session.setAttribute("uname",ck[x].getValue());
                request.getRequestDispatcher("Welcome.jsp").forward(request, response);
            }
        }
    }
    
    

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
