<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%
String sname="",uname="",pass="";
if(request.getParameter("name")!=null)
{
            try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
                try
                {
                    String query2="select * from user where name=?";
                    PreparedStatement mystatement2=myconnection.prepareStatement(query2);
                    mystatement2.setString(1,request.getParameter("name"));
                    ResultSet myresult2=mystatement2.executeQuery();
                    if(myresult2.next())
                    {
                        
                        sname=myresult2.getString("name");
                         uname=myresult2.getString("uname");
                         pass=myresult2.getString("password");
                    }

                } catch(Exception e)
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
            
}

%>
<title>Class</title>
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
                            <li>Teacher Login</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Create Username</h2>
                    </div>
                </div>
            </div>
        </div>
    </section></section>
<body>
    
<table width="1150" border="0" align="center"cellpadding="5px" cellspacing="0">
  <tr>
      <td height="430"><form id="form1" name="form1" method="post" action="" onsubmit="return val();">
      <table width="40%" heignt="100%" border="0"align="center" cellpadding="5px" cellspacing="5px">
            <tr>
           <td><h4>Name</h4></td>
          <td><label>
                  <input type="text" name="name" id="name" class="form-control" value="<%=sname%>">
          </label></td>
           <tr>
               <td><h4>Username</h4></td>
              <td><input type="text" name="Username" id="Username" class="form-control" value="<%=uname%>"></td>
              <td><div id="m2"></div></td>
            </tr>
           <tr>
               <td><h4>Password</h4></td>
              <td><input type="text" name="Password" id="Password" class="form-control" value="<%=pass%>"></td>
              <td><div id="m3"></div></td>
            </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="Submit" id="Submit" value="Update"  class="btn btn-default btn-lg"></td>
        </tr>
          <tr>
          <td>&nbsp;</td>
          <td></td>
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
    
       document.getElementById("m2").innerHTML="";
       document.getElementById("m3").innerHTML="";
      if(document.getElementById("Username").value.length==0)
       {
          document.getElementById("m2").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
        if(document.getElementById("Password").value.length==0)
       {
          document.getElementById("m3").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       
    }
    </script>
</body>
</html>
