package shivi.Utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtility {
	public static Connection getConnection()
	{     Connection con=null;
		try {
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/java", "postgres","74484");
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return con;
		
	}
	

}
