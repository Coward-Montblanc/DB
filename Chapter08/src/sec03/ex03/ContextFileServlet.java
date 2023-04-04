package sec03.ex03;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetServletContext
 */
@WebServlet("/cfile")
public class ContextFileServlet extends HttpServlet {
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

			InputStream is = context.getResourceAsStream("/WEB-INF/bin/init.txt");
			BufferedReader buffer = new BufferedReader(new InputStreamReader(is));
			
			String menu = null;
			String menu_member = null;
			String menu_order = null;
			String menu_goods = null;
			
			while ((menu=buffer.readLine())!=null) {
				StringTokenizer tokens = new StringTokenizer(menu, ",");
				menu_member = tokens.nextToken();
				menu_order = tokens.nextToken();
				menu_goods = tokens.nextToken();
			}
			out.print("<html><body>");
			out.print(menu_member + "<br>");
			out.print(menu_order + "<br>");
			out.print(menu_goods + "<br>");
			out.print("</body></html>");
			out.close();
	}

}
