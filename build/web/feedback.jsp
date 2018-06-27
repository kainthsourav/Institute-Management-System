<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Class</title>
</head>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Edge Responsive Multipurpose Template</title>
    <meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/flexslider.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="css/animate.css"/>

    <link rel="stylesheet" type="text/css" href="css/switcher.css" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
 <%@include file="header.jsp"%>
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
          <td><h4>Email</h4></td>
          <td><input type="text" name="email" id="email" class="form-control"  /></td>
          <td><div id="m3"></div></td>
        </tr>
        <tr>
          <td><h4>Feedback</h4></td>
          <td><label>
            <textarea name="topic" id="topic" class="form-control" ></textarea>
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
                  String q= "insert into feedback (name,email,topic)values(?,?,?)";
                 PreparedStatement mystatement=con.prepareStatement(q);
                mystatement.setString(1,request.getParameter("name"));
                mystatement.setString(2,request.getParameter("email"));
                mystatement.setString(3,request.getParameter("topic"));
                int a= mystatement.executeUpdate();
                 if(a>0)
                 {
                     out.println("Thank You For Feedback");
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
     <script type="text/javascript">
        function val()
    {
       document.getElementById("m1").innerHTML="";
         document.getElementById("m3").innerHTML="";
          document.getElementById("m4").innerHTML="";
       if(document.getElementById("name").value.length==0)
       {
          document.getElementById("m1").innerHTML="<font color=red>  Cannot be empty</font>";
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
     <%@include file="footer.jsp" %>
    <%@include file="java.jsp" %>
</body>
</html>
