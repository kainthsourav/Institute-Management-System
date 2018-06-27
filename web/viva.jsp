<%-- 
    Document   : all
    Created on : 13-Nov-2015, 23:52:45
    Author     : Sourav
--%>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script src="js/jquery-ui.js" type="text/javascript"></script>

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
                            <li>Viva Questions</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Core Java</h2>
                    </div>
                </div>
            </div>
        </div>
    </section></section>
<body>
<table width="1150" border="0" align="center"cellpadding="5px" cellspacing="0">
<tr>
<td>
<div>
	<%  try
              {
              Connection con;
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(path+place,username,password);
              try
              {
                  String q= "select * from viva";
                 PreparedStatement mystatement=con.prepareStatement(q);
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                  
                    do
                    {
                        
                       out.println("<div><h3><font color='red'>"+ myresult.getString("ques") +"</h3></font>"+"<p><font size='3'>"+ myresult.getString("ans") +"</font></p></div>");
                    }
                    while(myresult.next());
                  }
                else
                {
                   out.println("<option>" + "No Records Found" + " <option)>");
                    
                }
            }
            catch(Exception e)
            {
                 out.println("Error in Query " + e.getMessage());
            }
            finally
            {
                con.close();
            }
          
        }
        catch(Exception e)
        {
           out.println("Error in Connection " + e.getMessage());
        }
              %>
</div>
</td>
</tr>
</table>
    <%@include file="footer.jsp" %>
    <%@include file="java.jsp" %>
    <script>
   $(function() {
    $( "#accordion" ).accordion({
      collapsible: true 
    });
  });
  </script>
</body>
</html>
