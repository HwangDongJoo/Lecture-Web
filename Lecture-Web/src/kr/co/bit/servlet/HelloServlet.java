package kr.co.bit.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

public class HelloServlet extends HttpServlet {
	/*public void init(ServletConfig config) throws ServletException{
		System.out.println("init : �ѹ��� ����Ǵ� �޼ҵ��Դϴ�.");
	}*/
	
	@Override
	public void service(ServletRequest request, ServletResponse response){
		System.out.println("service : �����۾��� ����Ǵ� �޼ҵ��Դϴ�.");
		System.out.println("service : ����ڰ� ��û�Ҷ����� ȣ��Ǵ� �޼ҵ��Դϴ�.");
	}
	
	/*public void destroy(){
		System.out.println("destroy : �����籸���ÿ� ȣ��Ǵ� �޼ҵ��Դϴ�.");
	}*/
}
