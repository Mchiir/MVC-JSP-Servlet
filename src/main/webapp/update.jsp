<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"  %>


<%

    if(request.getParameter("submit") != null) {
        String id = request.getParameter("id");
        String name = request.getParameter("sname");
        String course = request.getParameter("course");
        String fee = request.getParameter("fee");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_java_jsp", "root", "");
        pst = con.prepareStatement("UPDATE records SET sname=?, course=?, fee=? WHERE id=?");
        pst.setString(1, name);
        pst.setString(2, course);
        pst.setString(3, fee);
        pst.setString(4, id);
        pst.executeUpdate();

        con.close();
        pst.close();
        %>

        <script>
            alert("Record updated!!");
        </script>

    <%
    }
%>


<html>
<head>
    <title>JSP Page</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1>Update Student</h1>

    <div class="row">
        <div class="col-sm-4">
            <form method="post" accept="#">

                <%

                Connection con;
                PreparedStatement pst;
                ResultSet rs;
        
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_java_jsp", "root", "");

                String id = request.getParameter("id");
                pst = con.prepareStatement("SELECT * FROM records WHERE id=?");
                pst.setString(1, id);
                rs = pst.executeQuery();

                    while(rs.next())
                    {               

                    
                %>
                
                <div alight="left">
                    <label class="form-label">Student Name</label>
                    <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("sname")%>" name="sname" id="sname" required>
                </div>

                <div alight="left">
                    <label class="form-label">Course</label>
                    <input type="text" class="form-control" placeholder="Course" value="<%= rs.getString("course")%>" name="course" id="course" required>
                </div>

                <div alight="left">
                    <label class="form-label">Fee</label>
                    <input type="text" class="form-control" placeholder="Fee" value="<%= rs.getString("fee")%>" name="fee" id="fee" required>
                </div>

                <%
                    }

                    rs.close();
                    pst.close();
                    con.close();
                %>
                

                <br>

                <div alight="right">
                    <input type="submit" id="submit" value="Update" name="submit" class="btn btn-info">
                    <input type="reset" id="reset" value="Reset" name="reset" class="btn btn-warning">
                </div>

                    <div align="right">

                        <p><a href="index.jsp">Click Back</a></p>
                        
                    </div>

            </form>
        </div>
    </div>
</body>
</html>
