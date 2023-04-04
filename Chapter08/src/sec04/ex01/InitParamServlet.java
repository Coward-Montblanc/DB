package sec04.ex01;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetServletContext
 */
@WebServlet(
		urlPatterns = {
				"/sinit",
				"/sinit2"
		},
		initParams = {
				@WebInitParam(name = "email", value = "admin@email.com"),
				@WebInitParam(name = "tel", value = "010-1234-5678")
		})
public class InitParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			response.setContentType("text/html;charset=utf-8");
			
			PrintWriter out = response.getWriter();
			//getServletContext 객체 가져오기
			
			String email = getInitParameter("email");
			String tel = getInitParameter("tel");
			
			
			out.print("<html><body>");
			out.print("<table><tr>");
			out.print("<td>email: </td><td>" + email + "</td></tr>");
			out.print("<td>tel: </td><td>" + tel + "</td></tr>");
			out.print("</table></body></html>");
			out.close();
	}

}
