package kr.co.bit.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

public class HelloServlet extends HttpServlet {
	/*public void init(ServletConfig config) throws ServletException{
		System.out.println("init : 한번만 실행되는 메소드입니다.");
	}*/
	
	@Override
	public void service(ServletRequest request, ServletResponse response){
		System.out.println("service : 실제작업이 수행되는 메소드입니다.");
		System.out.println("service : 사용자가 요청할때마다 호출되는 메소드입니다.");
	}
	
	/*public void destroy(){
		System.out.println("destroy : 서버재구동시에 호출되는 메소드입니다.");
	}*/
}
