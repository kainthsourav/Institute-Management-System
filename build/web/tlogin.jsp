<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
           <td><h4>Choose Class</h4></td>
          <td><label>
            <select name="class9" id="class9" class="form-control">
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
            </select>
          </label></td>
            <td><div id="m1"></div></td>
     
        </tr>
            <tr>
           <td><h4>Choose Teacher</h4></td>
          <td><label>
            <select name="name1" id="name1" class="form-control">
                <option>Choose Class First</option>
            </select></label></td><td><div id="m4"></div></td>
           <tr>
               <td><h4>Username</h4></td>
              <td><input type="text" name="Username" id="Username" class="form-control"></td>
              <td><div id="m2"></div></td>
            </tr>
           <tr>
               <td><h4>Password</h4></td>
              <td><input type="text" name="Password" id="Password" class="form-control"></td>
              <td><div id="m3"></div></td>
            </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="Submit" id="Submit" value="Create Login"  class="btn btn-default btn-lg"></td>
        </tr>
          <tr>
          <td>&nbsp;</td>
          <td>
              <%if(request.getParameter("class9")!=null && request.getParameter("name1")!=null)
        {
          try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query2="select * from user where classid=? and name=?";
                 PreparedStatement mystatement2=myconnection.prepareStatement(query2);
                  mystatement2.setString(1,request.getParameter("class9"));
                mystatement2.setString(2,request.getParameter("name1"));
                 ResultSet myresult2=mystatement2.executeQuery();
                 if(myresult2.next())
                {
                     out.println("<font color='red'>User Already Created</font>");
                }
                else
                {
                String query="insert into user values(?,?,?,?,?)";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                 mystatement.setString(1,request.getParameter("class9"));
                mystatement.setString(2,request.getParameter("name1"));
                mystatement.setString(3,request.getParameter("Username"));
                mystatement.setString(4,request.getParameter("Password"));
                 mystatement.setString(5,("Teacher"));
                 if(mystatement.executeUpdate()>0)
                 {
                       out.println("<font color='green'> Created Successfully</font>");
                }
                
            }
            }
            catch(Exception e)
            {
                out.println("Error in Query" + e.getMessage());
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
            
            
        %></td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>
    <%@include file="footer.jsp" %>
    <%@include file="java.jsp" %>
    <script type="text/javascript">
        
    $(document).ready(function(){
             $("#class9").change(function(){
                 var a=$("#class9").val();
                  $.ajax(
		{
		  url: 'ajax.jsp',
		  type: 'post',
		  data: {"tlogin":a},
		 beforeSend: function () 
		 { 
		 	$("#m1").html("<img src=images/preloader.gif>"); 
		 },
		  success: function(result) 
			  {
                              $("#m1").html("");
				$('#name1').html(result);
			  },
		  error: function(e) 
			  {
				$('#m1').html("error " + e);
			  }
		});
                 
             });
             
         });
        
     </script>
    <script type="text/javascript">
        function val()
    {
    
       document.getElementById("m2").innerHTML="";
       document.getElementById("m3").innerHTML="";
       document.getElementById("m1").innerHTML="";
       document.getElementById("m4").innerHTML="";
        if(document.form1.class9.selectedIndex==0)
         {
              document.getElementById("m1").innerHTML="<font color=red>Choose any Class</font>";
             return false;
         }
         if(document.form1.name1.selectedIndex==0)
         {
              document.getElementById("m4").innerHTML="<font color=red>Select Teacher</font>";
             return false;
         }
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
