<html>
<body>
<h2>Welcome to JSP basic app by @Mchrispin the codder!!!</h2>

    <h3>Using get method to read form data</h3>
    <ul>
        <li>
            <p><b>First name:</b></p>
            <%= request.getParameter("first_name")%>
        </li>
        <li>
            <p><b>Last name:</b></p>
            <%= request.getParameter("last_name")%>
        </li>
    </ul>
</body>
</html>