import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       try{
           // Set response content type
           response.setContentType("text/html");

           // Get PrintWriter to write the response
           PrintWriter out = response.getWriter();

           // Write HTML response
           out.println("<html><body>");
           out.println("<h2>Hello, World! This is a Servlet Response.</h2>");
           out.println("</body></html>");
       }catch(Exception e){
           e.printStackTrace();
       }
    }
}
