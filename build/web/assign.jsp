<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Class</title>
</head>
<%@include file="userheader.jsp"%>
<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                   <nav id="breadcrumbs">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Access Management</li>
                            <li>Student Login</li>
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
                 String query="select * from classtable where classid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                 mystatement.setString(1,session.getAttribute("class").toString());
             
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
           <td><h4>Choose Student</h4></td>
          <td><label>
            <select name="name1" id="name1" class="form-control">
                <option>Choose Class First</option>
            </select></label></td><td><div id="m2"></div></td></tr>
            <tr>
           <td><h4>Roll No</h4></td>
          <td><label>
            <select name="rollno" id="rollno" class="form-control">
                <option>Choose Student First</option>
            </select></label></td><td><div id="m3"></div></td></tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="Submit" id="Submit" value="Submit"  class="btn btn-default btn-lg"></td>
        </tr>
          <tr>
          <td>&nbsp;</td>
          <td>
              <%if(request.getParameter("class9")!=null && request.getParameter("name1")!=null )
        {
          try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String q="select * from assignments2 where name=? and rollno=?";
                  PreparedStatement mystatement=myconnection.prepareStatement(q);
                  mystatement.setString(1,request.getParameter("name1"));
                   mystatement.setString(2,request.getParameter("rollno"));
                  ResultSet myresult=mystatement.executeQuery();
                 if(myresult.next())
                  {
                  out.println("<table  class='table table-striped table-hover' width=500 cellpadding=5 align=center cellspacing=0 border=0>");
                  out.println("<tr><th>Assignment Name<th>View</th><th>Delete"
                          + "</th></tr>");
                    do
                    {
                        out.println("<tr><td>" + myresult.getString("topic") + "</td><td>" + "<a href='#'>" +"View"+"</a></td><td>" + "<a href='#'>" +"Delete"+"</a></td></tr>");
                    }
                    while(myresult.next());
                  out.println("</table>"); 
                      
                      
                  }
                  else
                  {
                       
                      out.println("<font color='red'>'No Records Found'</font>");
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
        function val()
    {
        document.getElementById("m1").innerHTML="";
       document.getElementById("m2").innerHTML="";
       document.getElementById("m3").innerHTML="";
       if(document.form1.class9.selectedIndex==0)
         {
              document.getElementById("m1").innerHTML="<font color=red>Choose any Class</font>";
             return false;
         }
         if(document.form1.name1.selectedIndex==0)
         {
              document.getElementById("m2").innerHTML="<font color=red>Select Student</font>";
             return false;
         }
         if(document.form1.rollno.selectedIndex==0)
         {
              document.getElementById("m3").innerHTML="<font color=red>Select Roll No</font>";
             return false;
         }
     }
      </script>
    <script type="text/javascript">
        
    $(document).ready(function(){
             $("#class9").change(function(){
                 var a=$("#class9").val();
                  $.ajax(
		{
		  url: 'ajax2.jsp',
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
        
    $(document).ready(function(){
             $("#name1").change(function(){
                 var a=$("#name1").val();
                  $.ajax(
		{
		  url: 'ajax2.jsp',
		  type: 'post',
		  data: {"slogin":a},
		 beforeSend: function () 
		 { 
		 	$("#msg1").html("<img src=images/preloader.gif>"); 
                      
		 },
		  success: function(result) 
			  {
                              $("#msg1").html("");
                               
				$('#rollno').html(result);
                                
			  },
		  error: function(e) 
			  {
				$('#msg1').html("error " + e);
                               
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
