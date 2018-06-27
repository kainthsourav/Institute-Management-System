<%-- 
    Document   : slist
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
                            <li>View/Update/Delete</li>
                            <li>List Of Students</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>List Of Students</h2>
                    </div>
                </div>
            </div>
        </div>
    </section></section>
    <body>
        <table width="1150" border="0" align="center" cellpadding="5" cellspacing="0">
            <tr><td>&nbsp;</td></tr>
      <tr>
          <td height="400"><form action="" method="post" name="form1" id="form1" onsubmit="return val();">
          <table width="400" border="0" align="center" cellspacing="0" cellpadding="5" >
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
                              
                              
                              
                          </select></td><td>&nbsp;</td><td><div id="m1"></div></td>
            </tr>
            <tr>
              <td>Section Name</td>
              <td><select name="section" id="section" class="form-control">
                              <option>Choose Class First</option>
                  </select>
              
              </td><td>&nbsp;</td><td><div id="m2"></div></td>
            </tr><tr><td>&nbsp;</td>
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
                  String q="select * from studenttable where class=? and section=?";
                  PreparedStatement mystatement=myconnection.prepareStatement(q);
                  mystatement.setString(1, request.getParameter("class"));
                  mystatement.setString(2, request.getParameter("section"));
                  ResultSet myresult=mystatement.executeQuery();
                 
                 if(myresult.next())
                  {
                  out.println("<table  class='table table-striped table-hover' width=500 cellpadding=5 align=center cellspacing=0 border=0>");
                  out.println("<tr><th>RollNo</th><th>Name</th><th>Address</th><th>Update</th><th>Delete"
                          + "</th></tr>");
                    do
                    {
                        out.println("<tr><td>" + myresult.getString("rollno") 
                                + "</td><td>" + myresult.getString("sname") + "<td>" +myresult.getString("address") 
                                 +  "</td><td><a href='updatestudent.jsp?rollno=" + myresult.getString("rollno") + "'>Update</a></td>"
                                + "<td><a href='deletestudent.jsp?rollno=" + myresult.getString("rollno") + "'>Delete</a></td></tr>");
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
       document.getElementById("m2").innerHTML="";
       
       if(document.form1.c.selectedIndex==0)
         {
              document.getElementById("m1").innerHTML="<font color=red>Choose Class</font>";
             return false;
         }
         if(document.form1.section.selectedIndex==0)
         {
              document.getElementById("m2").innerHTML="<font color=red>Choose Section</font>";
             return false;
         }
     }
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
             $("#c").change(function(){
                 var a=$("#c").val();
                  $.ajax(
		  {
		  url: 'ajax.jsp',
		  type: 'post',
		  data: {"ca":a},
		 beforeSend: function() 
		 { 
		 	$("#message1").html("<img src=images/preloader.gif>"); 
		 },
		  success: function(result) 
			  {
                              $("#message1").html("");
				$('#section').html(result);
			  },
		  error: function(e) 
			  {
				$('#message1').html("error " + e);
			  }
		});
                 
             });
             
         });
         
         
         
     </script>
     <script>
     $('#section').change(function () 
	  {
         
	
         var a=$("#c").val();
         var b=$("#section").val();
                  $.ajax(
		  {
		  url: 'ajax.jsp',
		  type: 'post',
		  data: {"c":a, "sec":b},
		 beforeSend: function() 
		 { 
		 	$("#msg2").html("<img src=images/preloader2.gif>"); 
		 },
		  success: function(result) 
			  {
                              $("#msg2").html("");
				$('#msg2').html(result);
			  },
		  error: function(e) 
			  {
				$('#msg2').html("error " + e);
			  }
		});
	 
		
	
});</script>
    
    </body>
</html>
