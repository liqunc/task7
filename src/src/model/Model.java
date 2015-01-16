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
	private EmployeeDAO employeeDAO;
	private FundDAO fundDAO;
	private FundPriceHistoryDAO fundPriceHistoryDAO;
	private PositionDAO positionDAO;
	private TransactionDAO transactionDAO;

	public Model(ServletConfig config) throws ServletException{
		try {
			String jdbcDriver = config.getInitParameter("jdbcDriverName");
			String jdbcURL    = config.getInitParameter("jdbcURL");
			
			ConnectionPool pool = new ConnectionPool(jdbcDriver, jdbcURL);
			customerDAO  = new CustomerDAO(pool, "Customer");
			employeeDAO = new EmployeeDAO(pool,"Employee");
			fundDAO = new FundDAO(pool,"Fund");
			fundPriceHistoryDAO = new FundPriceHistoryDAO(pool,"Fund_Price_History");
			positionDAO = new PositionDAO(pool,"Position");
			transactionDAO = new TransactionDAO(pool,"Transaction");
			 		
		} catch (DAOException e) {
			throw new ServletException(e);
		} 
	}
	
	public CustomerDAO getCustomerDAO() { return customerDAO; }
	public EmployeeDAO getEmployeeDAO() { return employeeDAO; }
	public FundDAO getFundDAO() { return fundDAO; }
	public FundPriceHistoryDAO getFundPriceHistoryDAO() { return fundPriceHistoryDAO; }
	public PositionDAO getPositionDAO() { return positionDAO; }
	public TransactionDAO getTransactionDAO() { return transactionDAO; }
	
}
