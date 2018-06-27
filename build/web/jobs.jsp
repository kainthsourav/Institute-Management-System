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
<%@include file="header.jsp"%>
<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                   <nav id="breadcrumbs">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li>Jobs & Career</li>
                            <li>Get Jobs</li>
                        </ul>
                    </nav>

                    <div class="page_title">
                        <h2>Get Jobs</h2>
                    </div>
                </div>
            </div>
        </div>
    </section></section>
<body>
    
<table width="1150" border="0" align="center"cellpadding="5px" cellspacing="0">
  <tr>
      <td height="430"><form action="" method="post" enctype="multipart/form-data" name="form1" id="form1">
      <table width="41%" heignt="100%" border="0"align="center" cellpadding="5px" cellspacing="5px">
        <tr>
            <td width="28%"></td>
          <td width="72%">&nbsp;</td>
     
        </tr>
          
        <tr>
          <td><h4>Resume Upload</h4></td>
          <td><label>
            <input type="file" name="File" id="File">
              </label></td> <td><font color="red">Only Upload MS-World  File</font></td>
        </tr>
          <tr>
          <td>&nbsp;</td>
          <td><input type="Submit" name="Upload" id="Upload" value="Upload" class="btn btn-default btn-lg"/></td>
        </tr>
          <tr>
            <td>&nbsp;</td>
            <td></td>
          </tr>
      </table>
    </form><%
boolean a = ServletFileUpload.isMultipartContent(request);
String filename="";
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
            
        }
        else
        {
                String type=item.getContentType();
               
                if(item.getSize()>0)
                {
               if( type.equals("application/msword") || type.equals("text/plain"))
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
                        out.println("Sorry this Format is Not Supported");
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
                String query="insert into res (res) values(?)";
                PreparedStatement mystatement=myconnection.prepareStatement(query);
                mystatement.setString(1,filename);
                if(mystatement.executeUpdate()>0){
                    out.println("Saved Successfully");
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
</body>
</html>
