package helloworld;

import java.sql.*;

public class Jdbcconnection {
	
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost:3306/harsha";
	static final String USER = "root";
	static final String PASS = "harsha123";
	public static Connection conn;
	
	public Jdbcconnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
	    conn = DriverManager.getConnection(DB_URL,USER,PASS);
	}
	
	public void setConn(Connection conn)
	{
		Jdbcconnection.conn = conn;
	}
	
	public Connection getConn()
	{
		return Jdbcconnection.conn;
	}
	
	

}
