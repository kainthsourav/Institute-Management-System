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
    <%@include file="userheader.jsp"%>
<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                   <nav id="breadcrumbs">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Assignments</li>
                            <li>View</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>View Assignments</h2>
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
                 String query="select * from classtable where classid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                 mystatement.setString(1,session.getAttribute("class").toString());
             
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                    do
                    {
                    out.println("<option>" + myresult.getString("classname") + "</option>");
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
                  String q="select * from assignments where class=?";
                  PreparedStatement mystatement=myconnection.prepareStatement(q);
                  mystatement.setString(1, request.getParameter("class"));
                  ResultSet myresult=mystatement.executeQuery();
                 
                 if(myresult.next())
                  {
                  out.println("<table  class='table table-striped table-hover' width=500 cellpadding=5 align=center cellspacing=0 border=0>");
                  out.println("<tr><th>Class</th><th>Assignment<th>View</th><th>Delete"
                          + "</th></tr>");
                    do
                    {
                        out.println("<tr><td>" + myresult.getString("class") 
                                + "</td><td>" + myresult.getString("name") + "</td><td>" + "<a href='#'>" +"View"+"</a></td><td>" + "<a href='#'>" +"Delete"+"</a></td></tr>");
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
              document.getElementById("m1").innerHTML="<font color=red>Choose Class</font>";
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
