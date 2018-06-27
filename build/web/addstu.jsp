
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
                            <li>Add Student</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Add Student</h2>
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
        <td valign="top"><form action="" method="post" name="form1" id="form1"  onsubmit="return checkvalidation();">
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
                              
                              
                              
                          </select></td><td><div id="message1"></div></td>
            </tr>
                 
            <tr>
              <td>Section Name</td>
              <td><select name="section" id="section" class="form-control">
                              <option>Choose Section First</option>
                  </select>
              
              </td><td><div id="message2"></div></td>
            </tr>
            <tr>
              <td>Roll No</td>
              <td><input type="text" name="rollno" id="rollno" onkeypress="return checkkey(event);" class="form-control"></td>
              <td><div id="m1"></div></td>
            </tr>
            <tr>
              <td>Student Name</td>
              <td><input type="text" name="sname" id="sname"  onfocus="abc(this);" onblur="abc2(this);" class="form-control">
              <td><div id="m2"></div></td></td>
            </tr>
            <tr>
              <td>Address</td>
              <td><textarea name="address" id="address" class="form-control"></textarea><td><div id="m3"></div></td></td>
            </tr>
            <tr>
              <td>Phone</td>
              <td>
<input type="text" name="phone" id="phone"  onkeypress="return checkkey(event);" class="form-control"><td><div id="m4"></div></td></td>
            </tr>
            <tr>
              <td>Gender</td>
              <td>
                <label>
                  <input type="radio" name="gender" value="male" id="gender_0">
                  Male</label>
                
                <label>
                  <input type="radio" name="gender" value="female" id="gender_1">
                  Female</label>
               </td>
            </tr>
            <tr>
              <td>DOB</td>
              <td><input type="text" name="dob" id="dob" class="form-control"><td><div id="m5"></div></td></td>
            </tr>
            <tr>
              <td>Father Name</td>
              <td><input type="text" name="fname" id="fname" class="form-control"><td><div id="m6"></div></td></td>
            </tr>
            <tr>
              <td>Mother Name</td>
              <td><input type="text" name="mname" id="mname" class="form-control"><td><div id="m7"></div></td></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="Submit" id="Submit" value="Add Student"  class="btn btn-default btn-lg">
              <input type="reset" name="reset" id="reset" value="Reset" class="btn btn-default btn-lg"></td>
            </tr>
            <tr><td><div id="msg2"></div></td></tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table>
        </form></td>
      </tr>
    </table>
            
          <%@include file="footer.jsp" %>
          <%@include file="java.jsp" %>
          <script type="text/javascript">
    function abc(x)
     {
        if(x.value=="Enter Name")
        {
           document.getElementById(x.id).value=""
        }        
     }
      function abc2(x)
     {
        if(x.value=="")
        {
           document.getElementById(x.id).value="Enter Name"
        } 
         
     }
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
     function checkvalidation()
     {
         document.getElementById("message1").innerHTML=""
         document.getElementById("message2").innerHTML=""
          document.getElementById("m1").innerHTML=""
          document.getElementById("m2").innerHTML=""
          document.getElementById("m3").innerHTML=""
          document.getElementById("m4").innerHTML=""
          document.getElementById("m5").innerHTML=""
          document.getElementById("m6").innerHTML=""
          document.getElementById("m7").innerHTML=""
          if(document.form1.class3.selectedIndex==0)
         {
              document.getElementById("message1").innerHTML="<font color=red>Choose any Class</font>";
             return false;
         }
         if(document.form1.section.selectedIndex==0)
         {
              document.getElementById("message2").innerHTML="<font color=red>Choose any Section</font>";
             return false;
         }
         if(document.getElementById("rollno").value.length==0)
         {
             document.getElementById("m1").innerHTML="<font color=red>Cannot be blank</font>";
             return false;
         }
          if(document.getElementById("sname").value.length==0)
         {
             document.getElementById("m2").innerHTML="<font color=red>Cannot be blank</font>";
             return false;
         }
         if(document.getElementById("address").value.length==0)
         {
             document.getElementById("m3").innerHTML="<font color=red>Cannot be not blank</font>";
             return false;
         }
         if(document.getElementById("phone").value.length==0)
         {
             document.getElementById("m4").innerHTML="<font color=red>Cannot be not blank</font>";
             return false;
         }
          if(document.getElementById("dob").value.length==0)
         {
             document.getElementById("m5").innerHTML="<font color=red>Cannot be not blank</font>";
             return false;
         }
          if(document.getElementById("fname").value.length==0)
         {
             document.getElementById("m6").innerHTML="<font color=red>Cannot be not blank</font>";
             return false;
         }
         if(document.getElementById("mname").value.length==0)
         {
             document.getElementById("m7").innerHTML="<font color=red>Cannot be not blank</font>";
             return false;
         }
         
         
    }
     </script>
           <script type="text/javascript">     
    $(document).ready(function(){
             $("#rollno").blur(function(){
                 var a=$("#rollno").val();
                  $.ajax(
		{
		  url: 'ajax.jsp',
		  type: 'post',
		  data: {"rol":a},
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
        
    $(document).ready(function(){
             $("#class3").change(function(){
                 var a=$("#class3").val();
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
