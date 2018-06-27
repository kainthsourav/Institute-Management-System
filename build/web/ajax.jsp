<%@page import="java.sql.*" %>
<%@include file="db.jsp" %>
<%
if(request.getParameter("nm")!=null)  
  {
  String a;
  a=request.getParameter("nm");

   try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="select * from classtable where classname=?";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,a);
              
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                    out.println("<font color='red'> Not Available</font>");
                   
                }
                else
                {
                   out.println("<font color='green'> Available</font>");
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
else if(request.getParameter("rol")!=null)  
  {
  String a;
  a=request.getParameter("rol");

   try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="select * from studenttable where rollno=?";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,a);
              
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                    out.println("<font color='red'> Not Available</font>");
                   
                }
                else
                {
                   out.println("<font color='green'> Available</font>");
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
  
  else if(request.getParameter("cl")!=null)
  { 
      
      try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="select * from sectiontable where classid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,request.getParameter("cl"));
              
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                   out.println("<option>Choose Section Now</option>");
                    do
                    {
                     out.println("<option value=" + myresult.getString("sectionid") + ">" + myresult.getString("sectionname") + "</option>");
                    }
                    while(myresult.next());
                }
                else
                {
                    out.println("<option>No Sections Found</option>");
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
         else   if(request.getParameter("class3")!=null && request.getParameter("section")!=null)
        {
 try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="insert into studenttable values(?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,request.getParameter("class3"));
                mystatement.setString(2,request.getParameter("section"));
                 mystatement.setString(3,request.getParameter("rollno"));
                  mystatement.setString(4,request.getParameter("sname"));
                   mystatement.setString(5,request.getParameter("address"));
                    mystatement.setString(6,request.getParameter("phone"));
                    if(request.getParameter("gender").equals("male")) 
                    {
                    mystatement.setString(7,"Male");    
                    }
                    else if(request.getParameter("gender").equals("female")) 
                    {
                    mystatement.setString(7,"Female");    
                    }
                    mystatement.setString(8,request.getParameter("dob"));   
                    mystatement.setString(9,request.getParameter("fname"));   
                    mystatement.setString(10,request.getParameter("mname"));   
                    
                
                if(mystatement.executeUpdate()>0){
                    out.println("Student added successfully");
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
         else   if(request.getParameter("classq")!=null && request.getParameter("section")!=null)
        {
 try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="UPDATE `studenttable` SET `class`=?,`section`=?,`sname`=?,`address`=?,`phone`=?,`gender`=?,`dob`=?,`fname`=?,`mname`=? WHERE rollno=?";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,request.getParameter("classq"));
                mystatement.setString(2,request.getParameter("section"));
                  mystatement.setString(3,request.getParameter("sname"));
                   mystatement.setString(4,request.getParameter("address"));
                    mystatement.setString(5,request.getParameter("phone"));
                    if(request.getParameter("gender").equals("male")) 
                    {
                    mystatement.setString(6,"Male");    
                    }
                    else if(request.getParameter("gender").equals("female")) 
                    {
                    mystatement.setString(6,"Female");    
                    }
                    mystatement.setString(7,request.getParameter("dob"));   
                    mystatement.setString(8,request.getParameter("fname"));   
                    mystatement.setString(9,request.getParameter("mname"));  
                    mystatement.setString(10,request.getParameter("rollno"));  
                    
                
                if(mystatement.executeUpdate()>0){
                    out.println("Student added successfully");
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
        else if(request.getParameter("tlogin")!=null)
  { 
      
      try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="select * from ttable where classid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,request.getParameter("tlogin"));
              
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                   out.println("<option>Select Teacher Now</option>");
                    do
                    {
                     out.println("<option>" + myresult.getString("name") + "</option>");
                    }
                    while(myresult.next());
                }
                else
                {
                    out.println("<option>No Teacher Added</option>");
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
        
    else if(request.getParameter("ca")!=null)
  { 
      
      try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="select * from sectiontable where classid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,request.getParameter("ca"));
              
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                   out.println("<option>Choose Section Now</option>");
                    do
                    {
                     out.println("<option value=" + myresult.getString("sectionid") + ">" + myresult.getString("sectionname") + "</option>");
                    }
                    while(myresult.next());
                }
                else
                {
                    out.println("<option>No Sections Found</option>");
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
    
