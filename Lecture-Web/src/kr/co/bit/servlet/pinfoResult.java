package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class pinfoResult extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		//정보 받아오기
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String mail = request.getParameter("mail")==null?"받지않음":"받음";
		String adMail = request.getParameter("adMail")==null?"받지않음":"받음";
		String delMail = request.getParameter("delMail")==null?"받지않음":"받음";
		String[] job = request.getParameterValues("job");
		
		/*System.out.println(job[0]);*/
		
		response.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		StringBuilder sb = new StringBuilder();
		
		sb.append("<html>");
		sb.append("<head>");
		sb.append("</head>");
		sb.append("<body>");
		sb.append("<h2>개인 정보 출력</h2>");
		sb.append("이름 : " + name + "<br/>");
		sb.append("아 이 디 : " + id + "<br/>");
		sb.append("암호 : " + password + "<br/>");
		sb.append("성별 : " + gender + "<br/>");
		sb.append("공지메일 : " + mail + "<br/>");
		sb.append("광고메일 : " + adMail + "<br/>");
		sb.append("배송 확인 메일 : " + delMail + "<br/>");
		sb.append("직업 : " + job[0] + "<br/>");
		sb.append("</body>");
		sb.append("</html>");
		
		out.println(sb.toString());
		out.flush();
		out.close();
	}
	
}
