package exercise2_2020_2021_8180099;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


/**
 * UserDAO provides all the necessary methods related to users in order to connect to the database and store/retrieve users etc.
 * 
 * @author 
 *
 */
public class UserDAO {
		
	/**
	 * This method returns a List with all Users
	 * 
	 * @return List<User>
	 */
	public List<User> getUsers() throws Exception {
		List<User> users = new ArrayList<User>();
				
		   DB db = new DB();
		   Connection con = null;
		   PreparedStatement stmt1 = null;
		   ResultSet rs = null;
		   String sqlQuery = "SELECT * FROM users_ex2_8180099_2020_2021 ;";
		   try {
		      con = db.getConnection();
			  stmt1 = con.prepareStatement(sqlQuery);
			  rs = stmt1.executeQuery();
			  
			  while(rs.next()) {
			       users.add(new User(rs.getString("name"), rs.getString("surname"), rs.getString("email"), rs.getString("username"), rs.getString("password"))); 
		      }
		   rs.close();
		   stmt1.close();
		   db.close();
		   
		   return users;
		   
		   } catch(SQLException e) {
			   throw new SQLException(e.getMessage());
		   } finally {
			   try {
			     db.close();
			   } catch (Exception e) {
			   }
		   }
		
		
	} //End of getUsers

	/**
	 * Search user by username
	 * 
	 * @param username, String
	 * @return User, the User object
	 * @throws Exception, if user not found
	 */
	public User findUser(String username) throws Exception {
		
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt2 = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT * FROM users_ex2_8180099_2020_2021 WHERE username=? ;";
		try {
			con = db.getConnection();
			stmt2 = con.prepareStatement(sqlQuery);
			stmt2.setString(1,username);
			rs = stmt2.executeQuery();
			if (!rs.next()) {
				return null;
			}
			User user1 = new User(rs.getString("name"), rs.getString("surname"), rs.getString("email"), rs.getString("username"), rs.getString("password"));
			rs.close();
			stmt2.close();
			db.close();
			return user1;
			
			} catch(SQLException e) {
			   throw new SQLException(e.getMessage());
		   } finally {
			   try {
			     db.close();
			   } catch (Exception e) {
			   }
		   }
		
		
	 } //End of findUser

	/**
	 * This method is used to authenticate a user.
	 * 
	 * @param username, String
	 * @param password, String
	 * @return User, the User object
	 * @throws Exception, if the credentials are not valid
	 */
	public User authenticate(String username, String password) throws Exception {
		 
			DB db = new DB();
			Connection con = null;
			PreparedStatement stmt3 = null;
			ResultSet rs = null;
			String sqlQuery = "SELECT * FROM users_ex2_8180099_2020_2021 WHERE username = ? AND password = ? ;" ; 
			try {
				con = db.getConnection();
				stmt3 = con.prepareStatement(sqlQuery);
				stmt3.setString(1,username);
				stmt3.setString(2,password);
				rs = stmt3.executeQuery();
			    if (!rs.next()) {
					throw new Exception("Wrong username or password");
				}
				User user2 = new User(rs.getString("name"), rs.getString("surname"), rs.getString("email"), rs.getString("username"), rs.getString("password"));
				rs.close();
				stmt3.close();
				db.close();
				return user2;
			} catch(SQLException e) {
			   throw new SQLException(e.getMessage());
		   } finally {
			   try {
			     db.close();
			   } catch (Exception e) {
			   }
		   }
				
	} //End of authenticate
	
	/**
	 * Register/create new User.
	 * 
	 * @param user, User
	 * @throws Exception, if encounter any error.
	 */
	public void register(User user) throws Exception {
			
         DB db = new DB();
		 Connection con = null;
		 PreparedStatement stmt4 = null;
		 ResultSet rs = null;
		 String sqlQuery = "SELECT * FROM users_ex2_8180099_2020_2021 WHERE username = ? OR email = ? ;" ;
		 String sqlUpdate = "INSERT INTO users_ex2_8180099_2020_2021(username, name, surname, email, password) VALUES (?,?,?,?,?) ;" ;
		 try {
			 con = db.getConnection();
			 stmt4 = con.prepareStatement(sqlQuery);
			 stmt4.setString(1, user.getUsername());
			 stmt4.setString(2, user.getEmail());
			 rs = stmt4.executeQuery();
			 if (rs.next()) {
				 throw new Exception("username or email already registered");
				 
			 } 
			 
			 stmt4 = con.prepareStatement(sqlUpdate);
			 stmt4.setString(1, user.getUsername());
			 stmt4.setString(2, user.getName());
			 stmt4.setString(3, user.getSurname());
			 stmt4.setString(4, user.getEmail());
			 stmt4.setString(5, user.getPassword());
			 stmt4.executeUpdate();
			 rs.close();
			 stmt4.close();
			 db.close();
			 
		 } catch(SQLException e) {
			   throw new SQLException(e.getMessage());
		   } finally {
			   try {
			     db.close();
			   } catch (Exception e) {
			   }
		   }
		
	}//end of register

} //End of class
