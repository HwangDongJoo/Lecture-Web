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
		//���� �޾ƿ���
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String mail = request.getParameter("mail")==null?"��������":"����";
		String adMail = request.getParameter("adMail")==null?"��������":"����";
		String delMail = request.getParameter("delMail")==null?"��������":"����";
		String[] job = request.getParameterValues("job");
		
		/*System.out.println(job[0]);*/
		
		response.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		StringBuilder sb = new StringBuilder();
		
		sb.append("<html>");
		sb.append("<head>");
		sb.append("</head>");
		sb.append("<body>");
		sb.append("<h2>���� ���� ���</h2>");
		sb.append("�̸� : " + name + "<br/>");
		sb.append("�� �� �� : " + id + "<br/>");
		sb.append("��ȣ : " + password + "<br/>");
		sb.append("���� : " + gender + "<br/>");
		sb.append("�������� : " + mail + "<br/>");
		sb.append("������� : " + adMail + "<br/>");
		sb.append("��� Ȯ�� ���� : " + delMail + "<br/>");
		sb.append("���� : " + job[0] + "<br/>");
		sb.append("</body>");
		sb.append("</html>");
		
		out.println(sb.toString());
		out.flush();
		out.close();
	}
	
}
