package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
			static Connection con=null;
	
			public static Connection getConnection() throws Exception {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ducat","root","1234");
				
				return con;
			}
			public static void closeConnection() throws Exception {
				
			try {
				
				if(con!=null) {
					
					con.close();
				}
				
			}catch (Exception e) {
				e.printStackTrace();
				
			}
			
			}
	
	
	
	
}
