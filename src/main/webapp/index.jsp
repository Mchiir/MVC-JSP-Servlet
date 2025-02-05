<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@page import="java.sql.*"  %>
<%

    if(request.getParameter("submit") != null) {
        String name = request.getParameter("sname");
        String course = request.getParameter("course");
        String fee = request.getParameter("fee");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_java_jsp", "root", "");
        pst = con.prepareStatement("INSERT INTO records(sname, course, fee) VALUES (?,?,?)");
        pst.setString(1, name);
        pst.setString(2, course);
        pst.setString(3, fee);
        pst.executeUpdate();


        con.close();
        pst.close();
        %>

        <script>
            alert("Record addeddd");
        </script>

    <%

    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>JSP</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<h1><%= "Student Registration System with JSP" %>
</h1>
    <br>

    <div class="row">

        <!-- Input form -->
        <div class="col-sm-4">
            <form method="post" accept="#">
                <div alight="left">
                    <label class="form-label">Student Name</label>
                    <input type="text" class="form-control" placeholder="Student Name" name="sname" id="sname" required>
                </div>
 
                <div alight="left">
                    <label class="form-label">Course</label>
                    <input type="text" class="form-control" placeholder="Course" name="course" id="course" required>
                </div>

                <div alight="left">
                    <label class="form-label">Fee</label>
                    <input type="text" class="form-control" placeholder="Fee" name="fee" id="fee" required>
                </div>

                <br>

                <div alight="right">
                    <input type="submit" id="submit" value="Submit" name="submit" class="btn btn-info">
                    <input type="reset" id="reset" value="Reset" name="reset" class="btn btn-warning">
                </div>
                
            </form>
        </div>

        <!-- Results table -->
        <div class="col-sm-8">
            <table id="tbl-student" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                <thead>
                    <tr>
                        <th>Student Name</th>
                        <th>Course</th>
                        <th>Fee</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>

                    <%
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.cj.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_java_jsp", "root", "");

                        String query = "SELECT * from records";
                        Statement st = con.createStatement();

                        rs = st.executeQuery(query);

                            while(rs.next())
                            {
                                String id = rs.getString("id");
                             
                            %>

                                <tr>
                                    <td><%=rs.getString("sname") %></td>
                                    <td><%=rs.getString("course") %></td>
                                    <td><%=rs.getString("fee") %></td>
                                    <td><a href="update.jsp?id=<%=id%>">Edit</a></td>
                                    <td><a href="delete.jsp?id=<%=id%>">Delete</a></td>
                                </tr>

                            <%
                        }
                        
                    %>

                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </thead>


            </table>
            
            
        </div>        
    </div>

<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>