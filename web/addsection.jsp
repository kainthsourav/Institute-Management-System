<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add Section</title>
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
                            <li>Add</li>
                            <li>Add Section</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Add Section</h2>
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
            <td><h4>Class</h4></td>
          <td><label>
            <select name="class" id="class" class="form-control">
                <option>Choose Class</option>
              <%  try
              {
              Connection con;
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(path+place,username,password);
              try
              {
                  String q= "select * from classtable";
                 PreparedStatement mystatement=con.prepareStatement(q);
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
                   out.println("<option>" + "No Classes Added Yet" + " <option)>");
                    
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
            </select>
          </label></td>
            <td><div id="m1"></div></td>
        </tr>
       
        <tr>
          <td><h4>Section Name</h4></td>
          <td><input type="text" name="section"id="section" class="form-control"  /></td>
           <td><div id="m2"></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="Submit" name="Submit" id="Add" value="Submit"class="btn btn-default btn-lg"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>
              <% if(request.getParameter("Submit")!=null)
              {
              try
          {
              Connection con;
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(path+place,username,password);
              try
              {
                  String query2="select * from sectiontable where classid=? and sectionname=?";
                 PreparedStatement mystatement2=con.prepareStatement(query2);
                  mystatement2.setString(1,request.getParameter("class"));
                mystatement2.setString(2,request.getParameter("section"));
                 ResultSet myresult2=mystatement2.executeQuery();
                 if(myresult2.next())
                {
                     out.println("<font color='red'>Section Already Exist</font>");
                  
                }
                 else{
               String query="insert into sectiontable (classid,sectionname) values(?,?)";
                PreparedStatement mystatement=con.prepareStatement(query);
                mystatement.setString(1,request.getParameter("class"));
                mystatement.setString(2,request.getParameter("section"));
                int a= mystatement.executeUpdate();
                 if(a>0)
                 {
                     out.println("Section Added Sucuessfully");
                 }
                 else
                 {
                     out.println("Unable To Add Section");
                 }
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
          <td>&nbsp;</td>
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
       if(document.form1.class.selectedIndex==0)
       {
          document.getElementById("m1").innerHTML="<font color=red> Choose class </font>";
          return false;
       }
       if(document.getElementById("section").value.length==0)
       {
          document.getElementById("m2").innerHTML="<font color=red> Cannot be blank</font>";
          return false;
       }
    } 
    </script>
</body>
</html>
