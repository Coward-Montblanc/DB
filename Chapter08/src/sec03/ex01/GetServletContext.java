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
@WebServlet("/cget")
public class GetServletContext extends HttpServlet {
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
			//member로 이전에 바인딩 된 회원정보 가져오기
			List member = (ArrayList)context.getAttribute("member");
			String name = (String)member.get(0);
			int age = (Integer)member.get(1);
			
			out.print("<html><body>");
			out.print("이름 : " + name + "<br>");
			out.print("나이 : " + age + "<br>");
			out.print("</body></html>");
	}

}
