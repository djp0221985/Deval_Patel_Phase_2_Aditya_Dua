package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManagerImpl implements ConnectionManager
{	
	public Connection getConnection()
	{
		Connection connection = null;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");			
			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "Patel@1985");			
			
		}		
		catch(ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
		
		return connection;
	}
}