<%@page import="java.sql.*"  %>

<%

        String id = request.getParameter("id");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_java_jsp", "root", "");
        pst = con.prepareStatement("DELETE FROM records WHERE id=?");
       
        pst.setString(1, id);
        pst.executeUpdate();


        con.close();
        pst.close();
        %>

        <script>
            alert("Record Deleted!!");
        </script>