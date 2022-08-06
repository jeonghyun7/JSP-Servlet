package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/second2")
public class SecondServlet2 extends HttpServlet {
	
	public void init(ServletConfig config) throws ServletException {
		
	}

	public void destroy() {
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		out.println("<html><body>");
		out.println("이름 : " + name);
		out.println("<br>");
		out.println("dipatch를 이용한 forward 실습입디다.");
		out.println("</body></html");
	}

}
