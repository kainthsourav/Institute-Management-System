<%-- 
    Document   : hire
    Created on : 18-Nov-2015, 21:54:38
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
    <%@include file="header.jsp"%>
<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                   <nav id="breadcrumbs">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Jobs & Career</li>
                            <li>Hire From Us</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2><p> Job Description</p></h2>
                    </div>
                </div>
            </div>
        </div>
    </section></section>
    <body>
    <h1>&nbsp;</h1>
        <table width="1150" border="0" align="center"cellpadding="5px" cellspacing="0">
  <tr>
      <td height="430"><form id="form1" name="form1" method="post" action="" onsubmit="return val();">
      <table width="40%" heignt="100%" border="0"align="center" cellpadding="5px" cellspacing="5px">
        <tr>
            <td><h4>Job Title</h4></td>
          <td><label>
            <input type="text" name="job" id="job" class="form-control">
          </label></td>
            <td><div id="m1"></div></td>
        </tr>
       
        <tr>
            <td><h4>Company Name</h4></td>
          <td><label>
            <input type="text" name="com" id="com" class="form-control">
          </label></td>
          <td><div id="m2"></div></td>
        </tr>
        <tr>
          <td><h4>Location</h4></td>
          <td><label>
            <input type="text" name="loc" id="loc" class="form-control">
          </label></td>
          <td><div id="m3"></div></td>
        </tr>
        <tr>
          <td><h4>Phone</h4></td>
          <td><label>
            <input type="text" name="phone" id="phone" class="form-control">
          </label></td>
          <td><div id="m4"></div></td>
        </tr>
        <tr>
            <td><h4>Address</h4></td>
          <td><label>
            <textarea name="add" id="add" class="form-control"></textarea>
          </label></td><td><div id="m5"></div></td>
        </tr>
        <tr>
            <td><h4>E-mail Address</h4></td>
          <td><label>
            <input type="text" name="email" id="email" class="form-control">
          </label></td> <td><div id="m6"></div></td>
        </tr>
        <tr>
            <td><h4>Keyskills Required</h4></td>
          <td><label>
            <input type="text" name="key" id="key" class="form-control">
          </label></td> <td><div id="m7"></div></td>
        </tr>
        <tr>
            <td><h4>Experience</h4></td>
          <td><label>
            <input type="text" name="exp" id="exp" class="form-control">
          </label></td> <td><div id="m8"></div></td>
        </tr>
        <tr>
            <td><h4>Salary</h4></td>
          <td><label>
            <input type="text" name="sal" id="sal" class="form-control">
          </label></td> <td><div id="m9"></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="Submit" name="Submit" id="Submit" value="Submit"class="btn btn-default btn-lg"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><% if(request.getParameter("Submit")!=null)
          {
          try
          {
              Connection con;
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(path+place,username,password);
              try
              {
                  String q= "insert into jobs (jobname,comname,loc,phone,address,email,skills,exp,sal)values(?,?,?,?,?,?,?,?,?)";
                 PreparedStatement mystatement=con.prepareStatement(q);
                mystatement.setString(1,request.getParameter("job"));
                mystatement.setString(2,request.getParameter("com"));
                mystatement.setString(3,request.getParameter("loc"));
                mystatement.setString(4,request.getParameter("phone"));
                 mystatement.setString(5,request.getParameter("add"));
                  mystatement.setString(6,request.getParameter("email"));
                   mystatement.setString(7,request.getParameter("key"));
                    mystatement.setString(8,request.getParameter("exp"));
                     mystatement.setString(9,request.getParameter("sal"));
                int a= mystatement.executeUpdate();
                 if(a>0)
                 { 
                    out.println("<script type='text/javascript'>alert('Thank You For Your Interest')</script>");
                 }
                 else
                 {
                     out.println("Unable To Contact");
                 }
            }
            catch (Exception e)
            {
                 out.println( "Error in Query " +e.getMessage());
                 
            }
            finally{
                con.close();
            }
        }
            catch (Exception e)
            {
                 out.println("Error in Connection " +e.getMessage());
                 
            }
          }   
              %></td>
        </tr>
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
        document.getElementById("m2").innerHTML="";
         document.getElementById("m3").innerHTML="";
          document.getElementById("m4").innerHTML="";
          document.getElementById("m5").innerHTML="";
          document.getElementById("m6").innerHTML="";
          document.getElementById("m7").innerHTML="";
          document.getElementById("m8").innerHTML="";
          document.getElementById("m9").innerHTML="";
          
       if(document.getElementById("job").value.length==0)
       {
          document.getElementById("m1").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       if(document.getElementById("com").value.length==0)
       {
          document.getElementById("m2").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       if(document.getElementById("loc").value.length==0)
       {
          document.getElementById("m3").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
        if(document.getElementById("phone").value.length==0)
       {
          document.getElementById("m4").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       if(document.getElementById("add").value.length==0)
       {
          document.getElementById("m5").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
        if(document.getElementById("email").value.length==0)
       {
          document.getElementById("m6").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
        if(document.getElementById("key").value.length==0)
       {
          document.getElementById("m7").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
        if(document.getElementById("exp").value.length==0)
       {
          document.getElementById("m8").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       if(document.getElementById("sal").value.length==0)
       {
          document.getElementById("m9").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       
    }
    </script>
    </body>
</html>
