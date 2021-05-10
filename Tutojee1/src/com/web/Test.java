package com.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.User;
import com.util.UserManager;

/**
 * Servlet implementation class Test
 */
@WebServlet(
		description = "un test de servlet", 
		urlPatterns = { 
				"/Test", 
				"/pop"
		})
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       int cpt1=0;
       int cpt2=0;
       
       UserManager um;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		um=new UserManager();
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		
	   String lg=request.getParameter("log");
	   String ps=request.getParameter("pass");
	   User u=um.authentification(lg, ps);
	   if(u!=null)
	   {
		   HttpSession ses = request.getSession(true);
		   
		   
		   ses.setAttribute("user", u);
		   
		   response.sendRedirect("starter.jsp");
	   }else
		  
		   {
		   	cpt1++;
		   	response.sendRedirect("auth.jsp?res=err&cpt="+cpt1);
		   }
		
		
		
		
		
	}

	

	
}
