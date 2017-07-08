package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet {

	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String method = request.getMethod();
		StringBuffer url = request.getRequestURL();
		String uri = request.getRequestURI();
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("    <head>");
		out.println("        <title>메소드 호출방식</title>");
		out.println("    </head>");
		out.println("    <body>");
		out.println("-----------------------------------------------<br/>");
		out.println("        파라미터(ID) : " + id + "<br/>");
		out.println("        요청방식 : " + method + "<br/>");
		out.println("        URL : " + url + "<br/>");
		out.println("        URI : " + uri + "<br/>");
		out.println("-----------------------------------------------<br/>");
		out.println("    </body>");
		out.println("</html>");
		
		out.flush();
		out.close();
		
		/*System.out.println("id : " + id);
		System.out.println("method : " + method);
		System.out.println("url : " + url);
		System.out.println("uri : " + uri);*/
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String method = request.getMethod();
		StringBuffer url = request.getRequestURL();
		String uri = request.getRequestURI();
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("    <head>");
		out.println("        <title>메소드 호출방식</title>");
		out.println("    </head>");
		out.println("    <body>");
		out.println("-----------------------------------------------<br/>");
		out.println("        파라미터(ID) : " + id + "<br/>");
		out.println("        요청방식 : " + method + "<br/>");
		out.println("        URL : " + url + "<br/>");
		out.println("        URI : " + uri + "<br/>");
		out.println("-----------------------------------------------<br/>");
		out.println("    </body>");
		out.println("</html>");
		
		out.flush();
		out.close();
		
	}
	
	
	
	
	
}
