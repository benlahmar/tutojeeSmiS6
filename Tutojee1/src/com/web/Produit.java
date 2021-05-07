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

/**
 * Servlet implementation class Produit
 */
@WebServlet("/Produit")
public class Produit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Produit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		HttpSession ss = request.getSession(false);//recuperer la session
		String lg=ss.getAttribute("gg").toString();
		out.print("Bienvenu...Mr   "+lg);
		
		out.print("<br/>IdSession:  "+ss.getId());
		out.print("<br/>is new :"+ss.isNew());
		
		long dd = ss.getLastAccessedTime();
		out.print("<br/>lastaccessTime : "+dd);
		//long 1/1/1970
		long tt = ss.getCreationTime();
		
		long x=(dd-tt)/1000;
		out.print("<br/>   x:  "+x);
		if(x>5*60)
			ss.invalidate();
		
		
		
		
	}

}
