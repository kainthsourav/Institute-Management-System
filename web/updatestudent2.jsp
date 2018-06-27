<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String classid="",sectionid="",rollno="",sname="",address="",phone="",gender="",dob="",fname="",mname="";
if(request.getParameter("rollno")!=null)
{
            try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
                try
                {
                    String query2="select * from studenttable where rollno=?";
                    PreparedStatement mystatement2=myconnection.prepareStatement(query2);
                    mystatement2.setString(1,request.getParameter("rollno"));
                    ResultSet myresult2=mystatement2.executeQuery();
                    if(myresult2.next())
                    {
                        classid=myresult2.getString("class");
                        sectionid=myresult2.getString("section");
                        sname=myresult2.getString("sname");
                         rollno=myresult2.getString("rollno");
                        address=myresult2.getString("address");
                        phone=myresult2.getString("phone");
                        gender=myresult2.getString("gender");
                        dob=myresult2.getString("dob");
                        fname=myresult2.getString("fname");
                        mname=myresult2.getString("mname");
                    }

                } catch(Exception e)
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/jquery-ui.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
    <%@include file="userheader.jsp" %>
   
    <table width="1100" border="0" align="center" cellpadding="5" cellspacing="0">
    <tr><td> <h1>Update Student</h1></td></tr>
      <tr>
        <td valign="top"><form action="" method="post" name="form1" id="form1">
          <table width="400" border="0" align="center" cellpadding="5" cellspacing="0">
            <tr>
              <td width="113">Class Name</td>
                      <td width="267"><select name="classq" id="classq" class="form-control">
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
                          if(classid.equals(myresult.getString("classid")))
                        {
                    out.println("<option value=" + myresult.getString("classid") + " selected='selected'>" + myresult.getString("classname") + "</option>");
                        }
                          else
                          {
                              out.println("<option value=" + myresult.getString("classid") + ">" + myresult.getString("classname") + "</option>");
                          }
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
                              
                              
                              
                          </select><div id="message1"></div></td>
            </tr>
            <tr>
              <td>Section Name</td>
              <td><select name="section" id="section" class="form-control">
                              <option>Choose Section First</option>
                               <%
                              
                   try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="select * from sectiontable group by sectionname";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
             
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                    do
                    {
                        if(sectionid.equals(myresult.getString("sectionid")))
                        {
out.println("<option value=" + myresult.getString("sectionid") + " selected='selected'>" + myresult.getString("sectionname") + "</option>");
                        }
                        else
                        {
  out.println("<option value=" + myresult.getString("sectionid") + " >" + myresult.getString("sectionname") + "</option>");   
                        }
                        
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
              
              </td>
            </tr>
            <tr>
              <td>Roll No</td>
              <td><input type="text" name="rollno" id="rollno" class="form-control" value="<%=rollno%>"></td>
            </tr>
            <tr>
              <td>Student Name</td>
              <td><input type="text" name="sname" id="sname" class="form-control" value="<%=sname%>"></td>
            </tr>
            <tr>
              <td>Address</td>
              <td><textarea name="address" id="address" class="form-control"><%=address%></textarea></td>
            </tr>
            <tr>
              <td>Phone</td>
              <td>
<input type="text" name="phone" id="phone" class="form-control" value="<%=phone%>"></td>
            </tr>
            <tr>
              <td>Gender</td>
              <td>
                <label>
                    <%
                    if(gender.equalsIgnoreCase("male"))
                    {
                        out.println("<input type='radio' name='gender' value='male' id='gender_0' checked='checked'>Male");
                        out.println("<input type='radio' name='gender' value='female' id='gender_1'>Female");
                    }
                    else if(gender.equalsIgnoreCase("female"))
                    {
                        out.println("<input type='radio' name='gender' value='male' id='gender_0'>Male");
                        out.println("<input type='radio' name='gender' value='female' id='gender_1' checked='checked'>Female");
                    }
                    %>
                    </label>
                
               
               </td>
            </tr>
            <tr>
              <td>DOB</td>
              <td><input type="text" name="dob" id="dob" class="form-control" value="<%=dob%>"></td>
            </tr>
            <tr>
              <td>Father Name</td>
              <td><input type="text" name="fname" id="fname" class="form-control" value="<%=fname%>"></td>
            </tr>
            <tr>
              <td>Mother Name</td>
              <td><input type="text" name="mname" id="mname" class="form-control" value="<%=mname%>">
        </td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="Submit" id="Submit" value="Add Student"  class="btn btn-default btn-lg">
              <input type="reset" name="reset" id="reset" value="Reset" class="btn btn-default btn-lg"></td>
            </tr>
            <tr><td><div id="msg2"></div></td></tr>
          </table>
        </form></td>
      </tr>
    </table>
                 <script type="text/javascript" src="js/jquery.js"></script>
          <%@include file="footer.jsp" %>
     <%@include file="java.jsp" %>
<script type="text/javascript">
        
    $(document).ready(function(){
             $("#classq").change(function(){
                 var a=$("#classq").val();
                  $.ajax(
		{
		  url: 'ajax.jsp',
		  type: 'post',
		  data: {"cl":a},
		 beforeSend: function () 
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
     $('#form1').submit(function (e) 
	  {
         e.preventDefault();
		// var formData = new FormData($(this)[0]); - compulsory if file upload is there
          $.ajax(
		  {
			type: 'post',
            url: 'ajax.jsp',
           // data: formData,//compulsory if file upload is there
	   data: $("#form1").serialize(),
		/*	contentType: false, - - compulsory if file upload is there
		    cache: false,
		    processData: false, */
            success: function (reslt) 
			{

			$('#msg2').html(reslt);
				
            },
		  error: function(e) 
			  {
				$('#msg2').html("error" + e);
			  }
          });
	 
		
	
});</script>

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
