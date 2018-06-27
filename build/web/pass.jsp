<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Change Password</title>
</head>
<%@include file="sheader.jsp"%>
<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                   <nav id="breadcrumbs">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Account</li>
                            <li>Change Password</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Change Password</h2>
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
            <td><h4>Old Password</h4></td>
          <td>
            <input type="text" name="opass" id="opass" class="form-control"  /></td>
            <td> <div id="m1"></div></td>
     
        </tr>
          <tr>
            <td><h4>New Password</h4></td>
          <td>
            <input type="text" name="npass" id="npass" class="form-control"  /></td>
            <td> <div id="m2"></div></td>
     
        </tr>
          <tr>
            <td><h4>New Password</h4></td>
          <td>
            <input type="text" name="npass2" id="npass2" class="form-control"  /></td>
            <td> <div id="m3"></div></td>
        </tr>
          
        <tr>
          <td>&nbsp;</td>
          <td><input type="Submit" name="Submit" id="Submit" value="Submit" class="btn btn-default btn-lg"/></td>
        </tr>
          <tr>
          <td>&nbsp;</td>
          <td>
              <% 
              if(request.getParameter("Submit")!=null)
              {
              try
          {
              Connection con;
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(path+place,username,password);
              try
              {
                  String q= "select * from user where uname=?";
                 PreparedStatement mystatement=con.prepareStatement(q);
                  mystatement.setString(1,session.getAttribute("uname").toString());
                ResultSet myresult=mystatement.executeQuery();
                  if(myresult.next())
                 {
                      String a,b;
                      a=myresult.getString("password");
                       b=request.getParameter("opass");
                        if(a.equals(b))
                        {
                            String v= "UPDATE `user` SET `password`=? where uname=?";
                         PreparedStatement mystatement2=con.prepareStatement(v);
                            mystatement2.setString(1,request.getParameter("npass"));
                              mystatement2.setString(2,session.getAttribute("uname").toString());
                             int c= mystatement2.executeUpdate();
                                if(c>0)
                         {
                     out.println("<Font color='green'>Password Changed Sucuessfully</font>");
                          }
                      else
                      {
                     out.println("<Font color='red'>Unable Change Password</font>");
                       }
                        }
                        else{
                            out.println("<Font color='red'>Old Password is Incorrect</font>");
                        }
                 }
                 else
                 {
                     out.println("Error in Connection ");
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
              %>
          </td>
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
          document.getElementById("m1").innerHTML=""
          document.getElementById("m2").innerHTML=""
          document.getElementById("m3").innerHTML=""
          if(document.getElementById("opass").value.length==0)
         {
             document.getElementById("m1").innerHTML="<font color=red>Please Fill Old Password</font>";
             return false;
         }
          if(document.getElementById("npass").value.length==0)
         {
             document.getElementById("m2").innerHTML="<font color=red>Cannot  Be Empty</font>";
             return false;
         }
          if(document.getElementById("npass2").value.length==0)
         {
             document.getElementById("m3").innerHTML="<font color=red>Cannot  Be Empty</font>";
             return false;
         }
         var a,b;
         a=document.getElementById("npass").value;
         b=document.getElementById("npass2").value;
         if(a!=b)
         {
             document.getElementById("m2").innerHTML="<font color=red>Password are not same</font>";
             document.getElementById("m3").innerHTML="<font color=red>Password are not same</font>";
             return false;
         }   
         
    }
     </script>
   
    
</body>
</html>
