<%
    session.invalidate();
    Cookie ck[]=request.getCookies();
    if(ck!=null)
    {
        for(int x=0;x<ck.length;x++)
        {
            if(ck[x].getName().equals("name"))
            {
                Cookie cko=new Cookie("name","0");
                cko.setMaxAge(0);
                response.addCookie(cko);
            }
            else if(ck[x].getName().equals("uname"))
            {
                Cookie cko=new Cookie("uname","0");
                cko.setMaxAge(0);
                response.addCookie(cko);
            }
        }    
    }
     response.sendRedirect("index.jsp");
    %>