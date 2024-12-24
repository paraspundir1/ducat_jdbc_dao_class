package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbconnection.DbConnection;
import model.User;

public class GeneralDao {

	
	public static User login(String email,String password ) {
		User user = new User();
		PreparedStatement pst =null;
		String query="select * from usersdata where email=? and password =?";
		try {
			
			
			 pst =DbConnection.getConnection().prepareStatement(query);
			 pst.setString(1, email);
			 pst.setString(2, password);
			 ResultSet rs = pst.executeQuery();
				if (rs.next()) {
					user =new User();
					user.setName(rs.getString("name"));
					user.setEmail(rs.getString("email"));
					user.setGender(rs.getString("gender"));
					user.setAdress(rs.getString("address"));
					user.setPhone(rs.getString("phone"));
					
				}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
		
		
		
		
		
		return user;
	}
	
	
	
	
}
