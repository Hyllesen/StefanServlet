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
        <h1>Hello World!</h1>       
       
    <%-- start web service invocation --%><hr/>
    <%
    try {
	brugerautorisation.transport.soap.BrugeradminImplService service = new brugerautorisation.transport.soap.BrugeradminImplService();
	brugerautorisation.transport.soap.Brugeradmin port = service.getBrugeradminImplPort();
	 // TODO initialize WS operation arguments here
	java.lang.String arg0 = request.getParameter("oldpass");
	java.lang.String arg1 = request.getParameter("newpass1");
	java.lang.String arg2 = request.getParameter("newpass2");
	// TODO process result here
	brugerautorisation.transport.soap.Bruger result = port.ændrAdgangskode(arg0, arg1, arg2);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>
