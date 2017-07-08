package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * http://localhost:8000/Lecture-Web/table?rows=4&cols=3
 * 
 * -------------------------------------
 * |cel(0,0)|cel(0,1)|cel(0,2)|cel(0,3)|
 * -------------------------------------
 * |cel(1,0)|cel(1,1)|cel(1,2)|cel(1,3)|
 * -------------------------------------
 * |cel(2,0)|cel(2,1)|cel(2,2)|cel(2,3)|
 * -------------------------------------
 * 
 * http://localhost:8000/Lecture-Web/table
 * 5 X 5 테이블 생성
 */
@WebServlet("/servlet/tableExam")
public class TableServlet extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rowStr = request.getParameter("rows");
		String colStr = request.getParameter("cols");
		
		int rows = rowStr == null ? 5 : Integer.parseInt(rowStr);
		int cols = colStr == null ? 5 : Integer.parseInt(colStr);
		
		/*try{
			rows = Integer.parseInt(request.getParameter("rows"));
			cols = Integer.parseInt(request.getParameter("cols"));
		} catch (Exception e) {
			// TODO: handle exception
			rows = 5;
			cols = 5;
		}*/
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		StringBuilder sb = new StringBuilder();
		
		sb.append("<html>");
		sb.append("<head><title></title></head>");
		sb.append("<body>");
		sb.append("<table border='1'>");
		for(int i=0; i<rows; i++){
			sb.append("<tr>");
			for(int j=0; j<cols; j++){
				sb.append("<td>cel(" + i +", " + j + ")</td>");
			}
			sb.append("</tr>");
		}
		sb.append("</html>");
		sb.append("<html>");
		sb.append("</body>");
		sb.append("</html>");
		
		out.println(sb.toString());
		out.flush();
		out.close();
	}

	/*@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		StringBuilder sb = new StringBuilder();
		
		sb.append("<html>");
		sb.append("<head><title></title></head>");
		sb.append("<body>");
		sb.append("<table border='1'>");
		for(int i=0; i<5; i++){
			sb.append("<tr>");
			for(int j=0; j<5; j++){
				sb.append("<td>cel(" + i +", " + j + ")</td>");
			}
			sb.append("</tr>");
		}
		sb.append("</html>");
		sb.append("<html>");
		sb.append("</body>");
		sb.append("</html>");
		
		out.println(sb.toString());
		out.flush();
		out.close();
	}*/
	
}
