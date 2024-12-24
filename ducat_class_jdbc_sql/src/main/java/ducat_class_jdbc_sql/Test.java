package ducat_class_jdbc_sql;

import java.sql.Connection;
import java.sql.DriverManager;

public class Test {

	
	
	
	
	
	public static void main(String [] args) {
		
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ducat","root","1234");
			System.out.println("success ");
	}catch (Exception e) {
		e.printStackTrace();
}
	}
}
