<html>
<head>
<title>Using GET and POST Method to Read Form Data</title>
</head>
<body>
<center>
<h1>Retrospective data input</h1>
<ul>
<li><p><b>Navn:</b>
   <%= request.getParameter("name")%>
</p></li>
<li><p><b>Start doing:</b>
   <%= request.getParameter("start_doing")%>
</p></li>
<li><p><b>Continue doing:</b>
   <%= request.getParameter("keep_doing")%>
</p></li>
<li><p><b>Stop doing:</b>
   <%= request.getParameter("stop_doing")%>
</p></li>
</ul>
</body>
</html>