package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class all_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/db.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
    _jspx_dependants.add("/css.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

    String path="jdbc:mysql://localhost/";
    String place="Pro";
    String username="root";
    String password="";
    
    

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("<link href=\"css/jquery-ui.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<script src=\"js/jquery-ui.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script>\n");
      out.write("  $(function() {\n");
      out.write("    $( \"#accordion\" ).accordion();\n");
      out.write("  });\n");
      out.write("  </script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--[if IE 8 ]><html class=\"ie ie8\" class=\"no-js\" lang=\"en\"> <![endif]-->\r\n");
      out.write("<!--[if (gte IE 9)|!(IE)]><!--><html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\r\n");
      out.write("<head>\r\n");
      out.write("    <meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("    <title>Edge Responsive Multipurpose Template</title>\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("\r\n");
      out.write("    <!-- CSS FILES -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/flexslider.css\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" media=\"screen\" data-name=\"skins\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/layout/wide.css\" data-name=\"layout\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/animate.css\"/>\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/switcher.css\" media=\"screen\" />\r\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("    <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n");
      out.write("    <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"home\">\r\n");
      out.write("    <header id=\"header\">\r\n");
      out.write("        <!-- Start header-top -->\r\n");
      out.write("        <div class=\"header-top\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"hidden-xs col-lg-7 col-sm-5 top-info\">\r\n");
      out.write("                        <span><i class=\"fa fa-phone\"></i>Phone: (123) 456-7890</span>\r\n");
      out.write("                        <span class=\"hidden-sm\"><i class=\"fa fa-envelope\"></i>Email: mail@example.com</span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-lg-5 col-sm-7 top-info clearfix\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("\t\t\t\t<span><a href=\"login.jsp\" style=\"color:white\"><i class=\"fa fa-user\"></i>Log In </a></li></span>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--/.header-top -->\r\n");
      out.write("\r\n");
      out.write("        <div id=\"menu-bar\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-3 col-sm-3\">\r\n");
      out.write("                        <div id=\"logo\">\r\n");
      out.write("                            <h1><a href=\"index.jsp\"><img src=\"images/log.png\"/></a></h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- Navigation\r\n");
      out.write("                    ================================================== -->\r\n");
      out.write("                    <div class=\"col-lg-9 col-sm-9 navbar navbar-default navbar-static-top container\" role=\"navigation\">\r\n");
      out.write("                        <!--  <div class=\"container\">-->\r\n");
      out.write("                        <div class=\"navbar-header\">\r\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                                <span class=\"icon-bar\"></span>\r\n");
      out.write("                                <span class=\"icon-bar\"></span>\r\n");
      out.write("                                <span class=\"icon-bar\"></span>\r\n");
      out.write("                            </button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"navbar-collapse collapse\">\r\n");
      out.write("                            <ul class=\"nav navbar-nav\">\r\n");
      out.write("                                <li><a href=\"index.jsp\"><span class=\"data-hover\"data-hover=\"home\">home</span></a>\r\n");
      out.write("                                    \r\n");
      out.write("                                </li>\r\n");
      out.write("\r\n");
      out.write("                                <li><a href=\"all.jsp\"><span class=\"data-hover\" data-hover=\"Training\">Training</span></a>\r\n");
      out.write("                                    <ul class=\"dropdown-menu\">\r\n");
      out.write("                                        <li><a href=\"elements.html\">C Programing</a></li>\r\n");
      out.write("                                        <li><a href=\"columns.html\">C++ Programing</a></li>\r\n");
      out.write("                                        <li><a href=\"typography.html\">PHP</a></li>\r\n");
      out.write("                                        <li><a href=\"pricing-tables.html\">Java</a></li>\r\n");
      out.write("                                        <li><a href=\"icons.html\">6 Weeks/Months</a></li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </li>\r\n");
      out.write("\r\n");
      out.write("                                <li><a href=\"#\" ><span class=\"data-hover\" data-hover=\"Development Centre\">Development Centre</span></a>\r\n");
      out.write("                                    <ul class=\"dropdown-menu\">\r\n");
      out.write("                                        <li><a href=\"services.html\">Services</a></li>\r\n");
      out.write("                                        <li><a href=\"faq.html\">Web Designing</a></li>\r\n");
      out.write("                                        <li><a href=\"sidebar-right.html\">Web Development </a></li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </li>\r\n");
      out.write("\r\n");
      out.write("                                <li><a href=\"#\"><span class=\"data-hover\" data-hover=\"Jobs & Career\">Jobs & Career</span></a>\r\n");
      out.write("                                  <ul class=\"dropdown-menu\">\r\n");
      out.write("                                        <li><a href=\"services.html\">Hire From Us</a></li>\r\n");
      out.write("                                        <li><a href=\"faq.html\">Get Jobs</a></li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </li>\r\n");
      out.write("                               <li><a href=\"#\"> <span class=\"data-hover\" data-hover=\"contact\">Contact</span></a>\r\n");
      out.write("                                    <ul class=\"dropdown-menu\">\r\n");
      out.write("                                        <li><a href=\"contactus.jsp\">Contact US</a></li>\r\n");
      out.write("                                        <li><a href=\"feedback.jsp\">Feedback</a></li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--/.container -->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--/#menu-bar -->\r\n");
      out.write("    </header>\r\n");
      out.write("    \r\n");
      out.write("<!--End Header--> \r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.10.2.min.js\"></script>\r\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("<script src=\"js/retina-1.1.0.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.cookie.js\"></script> <!-- jQuery cookie -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/styleswitch.js\"></script> <!-- Style Colors Switcher -->\r\n");
      out.write("<!--\r\n");
      out.write("<script src=\"js/jquery.fractionslider.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\r\n");
      out.write("-->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.smartmenus.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.smartmenus.bootstrap.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.jcarousel.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jflickrfeed.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.magnific-popup.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.isotope.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/swipe.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-scrolltofixed-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-scrolltofixed-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.flexslider-min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script src=\"js/main.js\"></script>");
      out.write("\n");
      out.write("<section class=\"wrapper\">\n");
      out.write("    <section class=\"page_head\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12 col-md-12 col-sm-12\">\n");
      out.write("                   <div class=\"page_title\">\n");
      out.write("                        <h2>Courses offered</h2>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section></section>\n");
      out.write("<body>\n");
      out.write("<table width=\"1150\" border=\"0\" align=\"center\"cellpadding=\"5px\" cellspacing=\"0\">\n");
      out.write("<tr>\n");
      out.write("<td>\n");
      out.write("<div id=\"accordion\">\n");
      out.write("\t");

                              
                   try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="select * from classtable";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
             
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                    do
                    {
                    out.println("<h3>" + myresult.getString("classname") + "</h3><div><p>" + myresult.getString("Syllabus") + "</p></div>");
                    }
                    while(myresult.next());
                            
                   
                }
                else
                {
                    out.println("<option>No data added yet</option>");
                }
                                
            }
            catch(Exception e)
            {
                out.println("Error in Query " + e.getMessage());
            }
            finally
            {
                myconnection.close();
            }
            
            }
            catch(Exception e)
            {
                out.println("Error in Connection " + e.getMessage());
            }
            
      out.write("\n");
      out.write(" \n");
      out.write(" \n");
      out.write("</div>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("    ");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">\n");
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
      out.write("\r\n");
      out.write("<section class=\"footer_bottom\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-sm-6\">\r\n");
      out.write("                <p class=\"copyright\">&copy; Copyright 2015 Edge | Powered by  <a href=\"http://www.jqueryrain.com/\">jQuery Rain</a></p>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-sm-6 \">\r\n");
      out.write("                <div class=\"footer_social\">\r\n");
      out.write("                    <ul class=\"footbot_social\">\r\n");
      out.write("                        <li><a class=\"fb\" href=\"#.\" data-placement=\"top\" data-toggle=\"tooltip\" title=\"Facebook\"><i class=\"fa fa-facebook\"></i></a></li>\r\n");
      out.write("                        <li><a class=\"twtr\" href=\"#.\" data-placement=\"top\" data-toggle=\"tooltip\" title=\"Twitter\"><i class=\"fa fa-twitter\"></i></a></li>\r\n");
      out.write("                        <li><a class=\"dribbble\" href=\"#.\" data-placement=\"top\" data-toggle=\"tooltip\" title=\"Dribbble\"><i class=\"fa fa-dribbble\"></i></a></li>\r\n");
      out.write("                        <li><a class=\"skype\" href=\"#.\" data-placement=\"top\" data-toggle=\"tooltip\" title=\"Skype\"><i class=\"fa fa-skype\"></i></a></li>\r\n");
      out.write("                        <li><a class=\"rss\" href=\"#.\" data-placement=\"top\" data-toggle=\"tooltip\" title=\"RSS\"><i class=\"fa fa-rss\"></i></a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</section>\r\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
