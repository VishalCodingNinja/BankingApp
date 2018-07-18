package com.onlinebank.myapplication;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class BankServlet
 */
@WebServlet("/BankServlet")
public class BankServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DBUtilHelper db;
	//System.out.println("hi");
	@Resource(name="jdbc/bank_database")
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
	 db=new DBUtilHelper(dataSource);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("1");	
		//db = new DBUtilHelper(dataSource);
		String val=request.getParameter("command");
		//System.out.println(val.equals("SIGNUP"));
			switch (val) {
			case "SIGNUP":
				System.out.println("2");
				signup(request,response);
				
				break;

			default:
				break;
			}
			//RequestDispatcher rs=request.getRequestDispatcher(Afterlogin)
	}

	private void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Customer c=db.signup(request);
		db.signup(request);
		RequestDispatcher rs=request.getRequestDispatcher("WEB-INF/Afterlogin.jsp");
		
		rs.forward(request, response);
	}

	

}
