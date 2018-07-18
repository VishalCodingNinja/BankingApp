package com.onlinebank.myapplication;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

public class DBUtilHelper {
private	List<Customer> l;
	private DataSource dataSource;
	
	public DBUtilHelper(DataSource dataSource) {
		//super();
		this.dataSource = dataSource;
	}

	
	public void signup(HttpServletRequest request) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String  password = request.getParameter("password");
		String contact = request.getParameter("contact");
		String city = request.getParameter("city");
		String address = request.getParameter("address");
		String accounttype=request.getParameter("accounttype");
		Customer c=new Customer(name,email,password,contact,city,address,accounttype);
		//getAccountNo();
		saveCustomer(c);
		l= new ArrayList<>();
		l.add(c);
		request.setAttribute("cust",l );
		
		
	}

	private void saveCustomer(Customer c) {
	 Connection myConn = null;
	 PreparedStatement myStmt = null;
	 try {
		 ///create the connection
		myConn=dataSource.getConnection();
		//query
		String sql="insert into Customers(account_no ,  name , email , password , contact , city, address , accounttype ) values(?,?,?,?,?,?,?,?)"; 
		//create the prepared statement
		myStmt=myConn.prepareStatement(sql);
		//set the values
		myStmt.setNull(1, java.sql.Types.INTEGER);//cppy pasted form stackoverflow
		myStmt.setString(2,c.getName());
		myStmt.setString(3,c.getEmail());
		myStmt.setString(4,c.getPassword());
		myStmt.setString(5,c.getContact());
		myStmt.setString(6,c.getCity());
		myStmt.setString(7,c.getAddress());
		myStmt.setString(8,c.getaccounttype());
		
		//execute the statement
		myStmt.execute();
	} catch (Exception e) {
		e.printStackTrace();
	}finally
	 {
		close(myConn,myStmt,null);
		
	 }
	}


	private void close(Connection myConn, PreparedStatement myStmt, ResultSet myRs) {
		try {
			if(myRs!=null)
			{
				myRs.close();
			}
			if(myConn!=null)
			{
				myConn.close();
			}
			if(myStmt!=null)
			{
				myStmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
}
