/*
 * 08-600 Java and J2EE Programming
 * Homework #9
 * Anjal Patni
 * apatni
 * 9th December 2014
 */

package model;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

import org.genericdao.ConnectionPool;
import org.genericdao.DAOException;


public class Model {
	private CustomerDAO customerDAO;

	public Model(ServletConfig config) throws ServletException{
		try {
			String jdbcDriver = config.getInitParameter("jdbcDriverName");
			String jdbcURL    = config.getInitParameter("jdbcURL");
			
			ConnectionPool pool = new ConnectionPool(jdbcDriver, jdbcURL);
			customerDAO  = new CustomerDAO(pool, "Customer");
			 		
		} catch (DAOException e) {
			throw new ServletException(e);
		} 
	}
	
	public CustomerDAO getCustomerDAO() { return customerDAO; }
	
	

}
