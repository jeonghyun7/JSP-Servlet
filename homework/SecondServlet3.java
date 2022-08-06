package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/second3")
public class SecondServlet3 extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		
	}

	public void destroy() {
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String address = (String)request.getAttribute("address");
		
		out.println("<html><body>");
		out.println("주소 : " + address);
		out.println("<br>");
		out.println("dispatch를 이용한 바인딩 실습입니다.");
		out.println("</body></html");
	}

}
