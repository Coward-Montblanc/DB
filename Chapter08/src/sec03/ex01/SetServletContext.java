package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetServletContext
 */
@WebServlet("/cset")
public class SetServletContext extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		//getServletContext 객체 가져오기
		ServletContext context = getServletContext();
		
		List member = new ArrayList();
		member.add("강석현");
		member.add(23);
		//ServletContext 객체에 데이터를 바인딩
		context.setAttribute("member", member);
		
		out.print("<html><body>");
		out.print("강석현 23");
		out.print("</body></html>");
	}

}
