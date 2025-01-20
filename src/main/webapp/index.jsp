<%@ page import="java.io.*, java.util.*" %>

<html>
<head>
    <title>HTTP Header Request Example</title>
</head>

<body>
<center>
    <h2>HTTP Parameter Request Example</h2>
    <table width="100%" border="1" align="center">
        <tr bgcolor="#949494">
            <th>Param Name</th>
            <th>Param Value(s)</th>
        </tr>
        <%
            Enumeration<String> paramNames = request.getParameterNames();
            while(paramNames.hasMoreElements()) {
                String paramName = paramNames.nextElement();
                out.print("<tr><td>" + paramName + "</td>\n");

                // Use getParameter() to get the value of the parameter
                String paramValue = request.getParameter(paramName);

                out.println("<td>" + paramValue + "</td></tr>\n");
            }
        %>
    </table>
</center>
</body>
</html>