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
                            <li>Add</li>
                            <li>Add Class</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Add Class</h2>
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
            <td><h4>Class Name</h4></td>
          <td>
            <input type="text" name="class1" id="class1" class="form-control"  /></td>
            <td> <div id="m1"></div></td>
     
        </tr>
          <tr>
       <td><h4>Syllabus</h4></td>
          <td><label>
            <textarea name="topic" id="topic" class="form-control" ></textarea>
              </label></td></tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="Submit" name="Add" id="Add" value="Add" class="btn btn-default btn-lg"/></td>
        </tr>
          <tr>
          <td>&nbsp;</td>
          <td>
              <% 
              if(request.getParameter("Add")!=null)
              {
              try
          {
              Connection con;
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(path+place,username,password);
              try
              {
                  String q= "insert into classtable(classname,Syllabus) values(?,?)";
                 PreparedStatement mystatement=con.prepareStatement(q);
                  mystatement.setString(1,request.getParameter("class1"));
                   mystatement.setString(2,request.getParameter("topic"));
                 int a= mystatement.executeUpdate();
                 if(a>0)
                 {
                     out.println("Class Added Sucuessfully");
                 }
                 else
                 {
                     out.println("Unable To Add Class");
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
              %>
          </td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>
    <%@include file="footer.jsp" %>
    <%@include file="java.jsp" %>
    <script type="text/javascript">     
    $(document).ready(function(){
             $("#class1").blur(function(){
                 var a=$("#class1").val();
                  $.ajax(
		{
		  url: 'ajax.jsp',
		  type: 'post',
		  data: {"nm":a},
		 beforeSend: function () 
		 { 
		 	$("#m1").html("<img src=images/preloader.gif>"); 
		 },
		  success: function(result) 
			  {
                              $("#m1").html(result);
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
       document.getElementById("m1").innerHTML="";
       if(document.getElementById("class1").value.length==0)
       {
          document.getElementById("m1").innerHTML="<font color=red>  Cannot be empty</font>";
          return false;
       }
       
       
    }
    </script>
</body>
</html>
