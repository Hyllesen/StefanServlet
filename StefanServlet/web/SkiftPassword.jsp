<%-- 
    Document   : changepass.jsp
    Created on : Mar 1, 2016, 5:04:00 PM
    Author     : stefan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    <%-- start web service invocation --%><hr/>
    <%
    try {
	brugerautorisation.transport.soap.BrugeradminImplService service = new brugerautorisation.transport.soap.BrugeradminImplService();
	brugerautorisation.transport.soap.Brugeradmin port = service.getBrugeradminImplPort();
	 // TODO initialize WS operation arguments here

	java.lang.String userid = request.getParameter("username");
	java.lang.String oldpass = request.getParameter("oldpass");
        java.lang.String newpass1 = request.getParameter("newpass1");
	java.lang.String newpass2 = request.getParameter("newpass2");
	// TODO process result here
        if(newpass1.equals(newpass2)) {
            brugerautorisation.transport.soap.Bruger result = port.ændrAdgangskode(userid, oldpass, newpass1);
            if(result.getAdgangskode().equals(newpass1)) {
                %>Adgangskoden er ændret! <%
            } 
        } else {
        %>De nye adgangskoder matcher ikke <%
}
       


    } catch (Exception ex) {
    out.print(ex.toString());
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>
