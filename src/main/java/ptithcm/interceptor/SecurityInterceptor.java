package ptithcm.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;



public class SecurityInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handle) throws Exception {
		System.out.println("LoggerInterceptor.preHandle()");
		HttpSession session = request.getSession();
		if (session.getAttribute("username") == null) {
			response.sendRedirect(request.getContextPath() + "/login.htm");
			return false;
		}
		return true;
	}

	
}