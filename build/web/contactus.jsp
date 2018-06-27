<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Class</title>
</head>
<%@include file="header.jsp"%>
<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                   <div class="page_title">
                        <h2>Contact Us</h2>
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
          <td>
            <input type="text" name="name" id="name" class="form-control"/></td>
            <td><div id="m1"></div></td>
        </tr>
       
        <tr>
            <td><h4>Phone</h4></td>
          <td><input type="text" name="phone" id="phone" class="form-control"  /></td>
          <td><div id="m2"></div></td>
        </tr>
        <tr>
          <td><h4>Email</h4></td>
          <td><input type="text" name="email" id="email" class="form-control"  /></td>
          <td><div id="m3"></div></td>
        </tr>
        <tr>
          <td><h4>Contact</h4></td>
          <td><label>
            <textarea name="topic" id="topic"></textarea>
          </label></td>
          <td><div id="m4"></div></td>
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
                  String q= "insert into contact (name,phone,email,topic)values(?,?,?,?)";
                 PreparedStatement mystatement=con.prepareStatement(q);
                mystatement.setString(1,request.getParameter("name"));
                mystatement.setString(2,request.getParameter("phone"));
                mystatement.setString(3,request.getParameter("email"));
                mystatement.setString(4,request.getParameter("topic"));
                int a= mystatement.executeUpdate();
                 if(a>0)
                 {
                     out.println("Thank You For Contacting Us");
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
        <tr>
          <td>&nbsp;</td>
          
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
       if(document.getElementById("name").value.length==0)
       {
          document.getElementById("m1").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       if(document.getElementById("phone").value.length==0)
       {
          document.getElementById("m2").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       if(document.getElementById("email").value.length==0)
       {
          document.getElementById("m3").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
        if(document.getElementById("topic").value.length==0)
       {
          document.getElementById("m4").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       
    }
    </script>
</body>
</html>
