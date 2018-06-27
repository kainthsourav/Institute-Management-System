<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
</head>
<%@include file="header.jsp"%>
<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                   <div class="page_title">
                        <h2>Login</h2>
                    </div>
                </div>
            </div>
        </div>
    </section></section>
<body>
    
<table width="1150" border="0" align="center"cellpadding="5px" cellspacing="0">
  <tr>
      <td height="430"><form id="form1" name="form1" method="post" action="xyz" onsubmit="return val()">
      <table width="40%" heignt="100%" border="0"align="center" cellpadding="5px" cellspacing="5px">
        <tr>
            <td><h4>Username</h4></td>
          <td><label>
                  <input type="text" name="uname"  id="uname" id="Enter Username" onfocus="abc(this);" onblur="abc2(this);" class="form-control"  /></td>
</label><td><div id="m1"></div></td>
        </tr>
        <tr>
            <td><h4>Password</h4></td>
          <td><label>
                  <input type="password" name="pass"  id="pass"class="form-control" /></td>
</label><td><div id="m2"></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><label>
            <input type="checkbox" name="rem" id="rem"> Remember me
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="Sign In" id="Sign In" value="Sign In"class="btn btn-default btn-lg"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>
    <%@include file="footer.jsp" %>
    <%@include file="java.jsp" %>
    <script type="text/javascript">
    function abc(x)
    {
        if(x.value=="Enter Username")
        {
            document.getElementById(x.id).value="";
        }
    }
    function abc2(x)
    {
        if(x.value=="")
        {
            document.getElementById(x.id).value="Enter Username";
        }
    }
    function val()
    {
       document.getElementById("m1").innerHTML="";
       document.getElementById("m2").innerHTML="";
       if(document.getElementById("uname").value.length==0)
       {
          document.getElementById("m1").innerHTML="<font color=red>Username Required</font>";
          return false;
       }
       if(document.getElementById("pass").value.length==0)
       {
          document.getElementById("m2").innerHTML="<font color=red>Password cannot be blank</font>";
          return false;
       }
    }
     
 </script>
</body>
</html>