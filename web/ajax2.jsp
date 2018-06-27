<%@page import="java.sql.*" %>
<%@include file="db.jsp" %>
<%
    if(request.getParameter("tlogin")!=null)
  { 
      
      try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                
                String query="select * from studenttable where class=?";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,request.getParameter("tlogin"));
              
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                   out.println("<option>Select Student Now</option>");
                    do
                    {
                     out.println("<option>" + myresult.getString("sname") + "</option>");
                    }
                    while(myresult.next());
                }
                else
                {
                    out.println("<option>No Student Added</option>");
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
      }
   else  if(request.getParameter("slogin")!=null)
  { 
      
      try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                
                String query="select * from studenttable where sname=?";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,request.getParameter("slogin"));
              
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                   out.println("<option>Select RollNo Now</option>");
                    do
                    {
                     out.println("<option>" + myresult.getString("rollno") + "</option>");
                    }
                    while(myresult.next());
                }
                else
                {
                    out.println("<option>No Student Added</option>");
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
      }
   
%>


