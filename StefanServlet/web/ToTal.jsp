<%-- 
    Document   : ToTal
    Created on : Mar 1, 2016, 4:41:20 PM
    Author     : stefan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>To tal sum</title>
    </head>
    <body>
        
        <% int number1 = Integer.valueOf(request.getParameter("number1")); 
         int number2 = Integer.valueOf(request.getParameter("number2")); 
        int number3 = number1 + number2;        
        %>
              
        

        <h1>Total: <%out.print(number3);%> </h1>
    </body>
</html>
