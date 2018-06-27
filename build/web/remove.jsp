<%-- 
    Document   : remove
    Created on : 25-Nov-2015, 20:17:41
    Author     : Sourav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@include file="adminheader.jsp"%>
<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                   <nav id="breadcrumbs">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Access Management</li>
                            <li>Manage Access</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Access Management</h2>
                    </div>
                </div>
            </div>
        </div>
    </section></section>
    <body>
        <table width="1150" border="0" align="center" cellpadding="5" cellspacing="0">
      <tr>
          <td height="470"><form action="" method="post" name="form1" id="form1" onsubmit="return val(); ">
          <table width="470" border="0" align="center" cellspacing="0" cellpadding="5">
            <tr>
              <td width="113">Class Name</td>
                      <td width="267"><select name="class" id="c" class="form-control">
                              <option>Choose Class</option>
                              <%
                              
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
                    out.println("<option value=" + myresult.getString("classid") + ">" + myresult.getString("classname") + "</option>");
                    }
                    while(myresult.next());
                            
                   
                }
                else
                {
                    out.println("<option>No Classes added yet</option>");
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
            %>
                              
                              
                              
                          </select></td><td><div id="m1"></div></td>
            </tr>
            <tr><td>&nbsp;</td>
                <td><input type="Submit" name="Submit" id="Submit" value="Submit"class="btn btn-default btn-lg"/></td></tr>
            <tr> <td>&nbsp;</td></tr>
            <tr> <td>&nbsp;</td></tr>
            <tr> <td>&nbsp;</td></tr>
            <tr><td>
                    <%if(request.getParameter("Submit")!=null)
                 {
          
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
              myconnection=DriverManager.getConnection(path+place,username,password);
              try
              {
                  String q="select * from user where classid=?";
                  PreparedStatement mystatement=myconnection.prepareStatement(q);
                  mystatement.setString(1, request.getParameter("class"));
                  ResultSet myresult=mystatement.executeQuery();
                 
                 if(myresult.next())
                  {
                  out.println("<table class='table table-striped table-hover' width=430 cellpadding=5 align=center cellspacing=0 border=0>");
                  out.println("<tr><th align=left>Name</th><th align=left>Username</th><th align=left>Password</th><th>Account Type</th><th>Update</th><th>Delete"
                          + "</th></tr>");
                    do
                    {
                        out.println("<tr><td>" + myresult.getString("name") 
                                + "</td><td>" + myresult.getString("uname") + "<td>" +myresult.getString("password") + "<td>" +myresult.getString("type")
                                +  "</td><td><a href='update.jsp?name=" + myresult.getString("name") + "'>Update</a></td>"
                                + "<td><a href='delete.jsp?name=" + myresult.getString("name") + "'>Delete</a></td></tr>");
                               
                    }
                    while(myresult.next());
                  out.println("</table>"); 
                      
                      
                  }
                  else
                  {
                       
                      out.println("No Users found");
                  }
              }
              catch(Exception e)
              {
                  out.println("Error in query due to " + e.getMessage());
              }
              finally
              {
                  myconnection.close();
              }
        
     
    }
   %></td></tr>
         </table>
              </form></td>
      </tr>
    </table>
         <%@include file="footer.jsp" %>
    <%@include file="java.jsp" %>
     <script type="text/javascript">
        function val()
    {
    
       document.getElementById("m1").innerHTML="";
       
       if(document.form1.c.selectedIndex==0)
         {
              document.getElementById("m1").innerHTML="<font color=red>Choose any Class</font>";
             return false;
         }
     }
    </script>
    </body>
</html>
