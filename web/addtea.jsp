
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/jquery-ui.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
    <%@include file="adminheader.jsp" %>
    <section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                   <nav id="breadcrumbs">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Add</li>
                            <li>Add Teacher</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Add Teacher</h2>
                    </div>
                </div>
            </div>
        </div>
    </section></section>
   
    <table width="1150" border="0" align="center" cellpadding="5px" cellspacing="0">
        <tr>
              <td>&nbsp;</td>
            </tr>
        <tr>
        <td valign="top"><form action="" method="post" name="form1" id="form1" onsubmit="return val();">
          <table width="400" border="0" align="center" cellpadding="5" cellspacing="0">
            <tr>
              <td width="113">Class Name</td>
                      <td width="267"><select name="class3" id="class3" class="form-control">
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
                              
                              
                              
                          </select></td><div id="message1"></div>
            </tr>
                 
            <tr>
              <td>Name</td>
              <td><input type="text" name="sname" id="sname" class="form-control"></td><td><div id="m1"></div></td>
            </tr>
            <tr>
              <td>Gender</td>
              <td><label>
                <input type="radio" name="gender" value="male" id="gender_0">
                Male</label>
                <label>
                  <input type="radio" name="gender" value="female" id="gender_1">
              Female</label></td>
            </tr>
            <tr>
              <td>Date of Birth</td>
              <td><input type="text" name="dob" id="dob" class="form-control"></td><td><div id="m2"></div></td>
            </tr>
            <tr>
              <td>Address</td>
              <td><textarea name="address" id="address" class="form-control"></textarea></td><td><div id="m3"></div></td>
            </tr>
            <tr>
              <td>Phone</td>
              <td>
<input type="text" name="phone" id="phone" class="form-control" onkeypress="return checkkey(event);"></td><td><div id="m4"></div></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="Submit" id="Submit" value="Add Student"  class="btn btn-default btn-lg">
              <input type="reset" name="reset" id="reset" value="Reset" class="btn btn-default btn-lg"></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr><td><div id="msg2"></div></td></tr>
            <tr>
                <td><% if(request.getParameter("Submit")!=null)
              {
              try
              {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="insert into ttable values(?,?,?,?,?,?)";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,request.getParameter("class3"));
                  mystatement.setString(2,request.getParameter("sname"));
                  if(request.getParameter("gender").equals("male")) 
                    {
                    mystatement.setString(3,"Male");    
                    }
                    else if(request.getParameter("gender").equals("female")) 
                    {
                    mystatement.setString(3,"Female");    
                    }   
                   mystatement.setString(4,request.getParameter("dob"));
                    mystatement.setString(5,request.getParameter("address"));
                    mystatement.setString(6,request.getParameter("phone"));
                  if(mystatement.executeUpdate()>0){
                    out.println("Added Successfully");
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
      %></td>
            </tr>
          </table>
        </form></td>
      </tr>
    </table>
            
          <%@include file="footer.jsp" %>
          <%@include file="java.jsp" %>
          <script type="text/javascript">
           function checkkey(a)
     {
        
       var key=a.keyCode?a.keyCode:a.which;
         if(key>=48 && key<=57 || key==8 || key==37 || key==39 || key==46)
         {
             return true;
         }
         else
         {
             return false;
         } 
        
     }
    function val()
    {
       document.getElementById("m1").innerHTML="";
         document.getElementById("m3").innerHTML="";
          document.getElementById("m4").innerHTML="";
       if(document.getElementById("sname").value.length==0)
       {
          document.getElementById("m1").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       if(document.getElementById("dob").value.length==0)
       {
          document.getElementById("m2").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
        if(document.getElementById("address").value.length==0)
       {
          document.getElementById("m3").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       if(document.getElementById("phone").value.length==0)
       {
          document.getElementById("m4").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       
    }
    </script>
     <script>
  $(function() {
    $( "#dob" ).datepicker({
        dateFormat:"yy-mm-dd",
       changeMonth: true,
      changeYear: true
    });
  });
  </script>
    </body>
</html>
