<%-- 
    Document   : all
    Created on : 13-Nov-2015, 23:52:45
    Author     : Sourav
--%>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>All Course </title>
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script src="js/jquery-ui.js" type="text/javascript"></script>

</head>
<%@include file="header.jsp"%>
<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                   <nav id="breadcrumbs">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Training</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Course Offered</h2>
                    </div>
                </div>
            </div>
        </div>
    </section></section>
<body>
<table width="1150" border="0" align="center"cellpadding="5px" cellspacing="0">
    <tr><td>&nbsp;</td>
        <td>&nbsp;</td>
<td>
<div id="accordion" class="panel-group accordion">
	<%
                              
              
                    out.println("<h3><strong>" + "Professional Diploma in Web Designing" + "</strong></h3><div class='panel-body'>"
                   + "<ul class='list_style right-arrow'><li>" +"HTML" + "</li></ul>" + 
                     "<ul class='list_style right-arrow'><li>" +"Photoshop" + "</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "Dreamweaver" +"</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "Flash"+ "</li></ul>" +
                      "<ul class='list_style right-arrow'><li>" + "Fireworks"+ "</li></ul>" +
                       "<ul class='list_style right-arrow'><li>" + "CorelDRAW"+ "</li></ul>" +
                      "<ul class='list_style right-arrow'><li>" + "Swish"+ "</li></ul>" +
                      "<ul class='list_style right-arrow'><li>" + "Javascript Web Scroller"+ "</li></ul>" +
                       "<ul class='list_style right-arrow'><li>" + "Javascript / JQuery"+ "</li></ul>" +
                        "<ul class='list_style right-arrow'><li>" + "PHP Forms"+ "</li></ul>" +
                            "<ul class='list_style right-arrow'><li>" + "WS-FTP"+ "</li></ul>" +
                            "<ul class='list_style right-arrow'><li>" + "DHTML Menus"+ "</li></ul>" +
                             "<ul class='list_style right-arrow'><li>" + "Eye Candy"+
                            "</li></ul></div>" 
                           + "<h3><strong>" + ".NET (.NET Framework)" + "</strong></h3><div class='panel-body'>" 
                             + "<ul class='list_style right-arrow'><li>" +" ASP.NET" + "</li></ul>" + 
                     "<ul class='list_style right-arrow'><li>" +"C#.NET"+ "</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "VB.NET" +"</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "SQL SERVER"+ "</li></ul>" +
                      "<ul class='list_style right-arrow'><li>" + "AJAX"+ "</li></ul>" +
                       "<ul class='list_style right-arrow'><li>" + "XML"+ "</li></ul>" +
                            "</li></ul></div>" 
                       + "<h3><strong>" + "PHP / MYSQL" + "</strong></h3><div class='panel-body'>"+
                         "<ul class='list_style right-arrow'><li>" +"PHP / MYSQL" + "</li></ul>" + 
                     "<ul class='list_style right-arrow'><li>" +"PHP++"+ "</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "WORDPRESS" +"</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "JOOMLA"+ "</li></ul>" +
                      "<ul class='list_style right-arrow'><li>" + "AJAX"+ "</li></ul>"+
                            "</li></ul></div>"
                            +
                            "<h3><strong>" + "Diploma in Software Programming" + "</strong></h3><div class='panel-body'>"+
                         "<ul class='list_style right-arrow'><li>" +"Introduction to Software Development" + "</li></ul>" + 
                     "<ul class='list_style right-arrow'><li>" +"VB.NET"+ "</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "C#.NET" +"</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "SQL SERVER"+ "</li></ul>" +
                      "<ul class='list_style right-arrow'><li>" + "Database Programming using ADO.NET"+ "</li></ul>"+
                            "</li></ul></div>" 
                        +
                            "<h3><strong>" + "DTP" + "</strong></h3><div class='panel-body'>"+
                         "<ul class='list_style right-arrow'><li>" +"Photoshop"+ "</li></ul>" + 
                     "<ul class='list_style right-arrow'><li>" +"CorelDRAW"+ "</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "Pagemaker" +"</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "Illustrator"+ "</li></ul>" +
                            "</li></ul></div>"
                       +"<h3><strong>" + "Hardware" + "</strong></h3><div class='panel-body'>"+
                         "<ul class='list_style right-arrow'><li>" +"Computer Hardware"+ "</li></ul>" + 
                     "<ul class='list_style right-arrow'><li>" +"Assembling"+ "</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "Computer Software" +"</li></ul>" +
                     "</li></ul></div>"
                            +"<h3><strong>" + "Diploma in Office Management" + "</strong></h3><div class='panel-body'>"+
                         "<ul class='list_style right-arrow'><li>" + "Diploma in Office ManagementComputer Fundamentals"+ "</li></ul>" + 
                     "<ul class='list_style right-arrow'><li>" +"Operating System"+ "</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "Office" +"</li></ul>" +
                     "<ul class='list_style right-arrow'><li>" + "Internet / Email" +"</li></ul>" +
                     "</li></ul></div>"
                      );
                 
            %>
</div>
</td>
</tr>
</table>
    <%@include file="footer.jsp" %>
    <%@include file="java.jsp" %>
    <script>
   $(function() {
    $( "#accordion" ).accordion({
      collapsible: true 
    });
  });
  </script>
</body>
</html>
