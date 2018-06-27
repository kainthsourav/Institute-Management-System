package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("</section>");
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
