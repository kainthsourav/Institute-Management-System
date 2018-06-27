<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Class</title>
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
                            <li>New Assignment</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Upload A New Assignment</h2>
                    </div>
                </div>
            </div>
        </div>
    </section></section>
<body>
    
<table width="1150" border="0" align="center"cellpadding="5px" cellspacing="0">
  <tr>
      <td height="430"><form action="" method="post" enctype="multipart/form-data" name="form1" id="form1" onsubmit="return val();">
      <table width="41%" heignt="100%" border="0"align="center" cellpadding="5px" cellspacing="5px">
          <tr> <td><h4>Class Name</h4></td>
                      <td width="267"><select name="class" id="class" class="form-control">
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
     
        </tr>
            <tr>
            <td><h4>Name</h4></td>
          <td>
            <input type="text" name="Name" id="Name" class="form-control"  /></td>
            <td><div id="m2"></div></td>
        </tr>
          
        <tr>
          <td><h4>Assignment Upload</h4></td>
          <td><label>
            <input type="file" name="File" id="File">
              </label></td>
        </tr>
          <tr>
          <td>&nbsp;</td>
          <td><input type="Submit" name="Submit" id="Submit" value="Submit" class="btn btn-default btn-lg"/></td>
        </tr>
          <tr>
            <td></td>
            <td></td>
          </tr>
      </table>
    </form><%
boolean a = ServletFileUpload.isMultipartContent(request);
String filename="", class2="", name="";
boolean flag=false;
if(a)
    {
    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    List items = null;
   try
   {
   items = upload.parseRequest(request);
   }
   catch (FileUploadException e)
   {
       e.printStackTrace();
   }
   for(Object myitem:items)
   {

   FileItem item = (FileItem)myitem;
     
        if (item.isFormField())
        {
            String itemName1 = item.getFieldName();
            String value=item.getString();
          
            if(itemName1.equals("class")) //control's name - textbox name
           {
                class2=value;//variable name    
                
           }
            if(itemName1.equals("Name")) //control's name - textbox name
           {
                name=value;//variable name    
                
           }
        }
        else
        {
                String type=item.getContentType();
               
                if(item.getSize()>0)
                {
               if( type.equals("text/plain"))
                    {
                 filename=new java.util.Date().getTime()+item.getName();
                String path2=config.getServletContext().getRealPath("/") + "uploads\\" 
                        + filename;
                File savefile=new File(path2);
                item.write(savefile);
                flag=true;
                }
                else
                    {
                        flag=false;
                        out.println("<font color='red'>Sorry this Format is Not Supported</font>");
                    }
               
                
                }
                else
                {
                  
                }
                
                }
        }
        if(flag==true)
        {
            try
            {
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,username,password);
            try
            {
                String query="insert into assignments values(?,?,?)";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,filename);
                mystatement.setString(2,class2);
                 mystatement.setString(3,name);
                if(mystatement.executeUpdate()>0)
                {
                    out.println("<align='center>'<font color='green'>Saved Successfully</font></align>");
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
   
        }
   
%></td>
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
              document.getElementById("m1").innerHTML="<font color=red>Choose Class</font>";
             return false;
         }
         if(document.getElementById("Name").value.length==0)
         {
              document.getElementById("m2").innerHTML="<font color=red>Cannot be blank</font>";
             return false;
         }
     }
    </script>
</body>
</html>
