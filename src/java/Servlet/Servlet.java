package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Servlet extends HttpServlet
{
    void display(HttpServletRequest req,HttpServletResponse res)
    {
         PrintWriter out=null;
        try
        {
         res.setContentType("text/html");
         out=res.getWriter();
         String uname1=getServletContext().getInitParameter("UNAME");
          String pass1=getServletContext().getInitParameter("PASSWORD");
          String PATH=getServletContext().getInitParameter("PATH");
          String PLACE=getServletContext().getInitParameter("PLACE");
          try
          {
              Connection con;
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(PATH+PLACE,uname1,pass1);
              try
              {
                  String q= "select * from user where uname=? and password=?";
                 PreparedStatement mystatement=con.prepareStatement(q);
                mystatement.setString(1,req.getParameter("uname"));
                mystatement.setString(2,req.getParameter("pass"));
           
                HttpSession mysession=req.getSession();
                
                
                ResultSet myresult=mystatement.executeQuery();
                if(myresult.next())
                {
                    if(myresult.getString("type").equals("Student"))
                    { 
                        if(req.getParameter("rem")!=null)
                        {
                            Cookie mycookie=new Cookie("name",req.getParameter("uname"));
                            mycookie.setMaxAge(60*60*24*7);
                            res.addCookie(mycookie);
                            
                        }
                          mysession.setAttribute("rollno", myresult.getString("rollno"));
                   mysession.setAttribute("uname", myresult.getString("uname"));
                      RequestDispatcher mydispatcher=req.getRequestDispatcher("Welcome.jsp");
                      mydispatcher.forward(req, res);
                    }
                  else  if(myresult.getString("type").equals("Teacher"))
                    { 
                        if(req.getParameter("rem")!=null)
                        {
                            Cookie mycookie=new Cookie("name",req.getParameter("uname"));
                            mycookie.setMaxAge(60*60*24*7);
                            res.addCookie(mycookie);
                            
                        }
                         mysession.setAttribute("class", myresult.getString("classid"));
                   mysession.setAttribute("uname", myresult.getString("uname"));
                      RequestDispatcher mydispatcher=req.getRequestDispatcher("Tpage.jsp");
                      mydispatcher.forward(req, res);
                    }
                    else if(myresult.getString("type").equals("admin"))
                    {          
                        if(req.getParameter("rem")!=null)
                        {    
                            Cookie mycookie=new Cookie("uname",req.getParameter("uname"));
                            mycookie.setMaxAge(60*60*24*7);
                            res.addCookie(mycookie);
                            
                        }
                    mysession.setAttribute("admin", myresult.getString("uname"));
                      RequestDispatcher mydispatcher=req.getRequestDispatcher("Awelcome.jsp");
                      mydispatcher.forward(req, res);
                    }
                }
                else
                {
                    RequestDispatcher mydispatcher=req.getRequestDispatcher("login.jsp");
                    mydispatcher.include(req, res);
                    out.println("<script type='text/javascript'>alert('Wrong username/password')</script>");
                }
                                
            }
            catch(Exception e)
            {
                out.println("Error in Query " + e.getMessage());
            }
            finally
            {
                out.close();
            }
            
            }
            catch(Exception e)
            {
                out.println("Error in Connection " + e.getMessage());
            }
            
          
          
          
          
          
          
         
         
      /*   if(a.equalsIgnoreCase("Vipul") && b.equalsIgnoreCase("123"))
         {
                RequestDispatcher mydispatcher=req.getRequestDispatcher("welcome.jsp");
                mydispatcher.forward(req, res);
              
         }
         else
         {
               RequestDispatcher mydispatcher=req.getRequestDispatcher("input.jsp");
                mydispatcher.include(req, res);
             mywriter.println("Wrong username/password");
         } */
        }
        catch(Exception e)
        {
            e.printStackTrace();
            out.println("Error Occured");
        }
        
    }
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res)
    {
        display(req,res);
    }
    @Override
    public void doPost(HttpServletRequest req,HttpServletResponse res)
    {
       display(req,res);
    }
    

}

              