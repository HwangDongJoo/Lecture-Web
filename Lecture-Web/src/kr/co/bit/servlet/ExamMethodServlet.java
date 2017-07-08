package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExamMethodServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//http://localhost:8000/Lecture-web/examMethod?name=%E3%85%81%E3%84%B4&hobby=reading&hobby=music&hobby=movie
		
		String name = request.getParameter("name");
		String[] hobby = request.getParameterValues("hobby");
		
		/*System.out.println("name : " + name);
		for(String s:hobby){
			System.out.println(s);
		}*/
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		StringBuilder sb = new StringBuilder();
		sb.append("<HTML>");
		sb.append("<HEAD><TITLE></TITLE></HEAD>");
		sb.append("<BODY>");
		sb.append("name : " + name + "<br/>");
		sb.append("hobby : ");
		for(int i=0; i<hobby.length; i++){
			if(i!=0)
				sb.append(",&nbsp");
			sb.append(hobby[i]);
		}
		sb.append("</BODY>");
		sb.append("</HTML>");
		
		out.println(sb.toString());
		out.flush();
		out.close();
		
	}
	
}
