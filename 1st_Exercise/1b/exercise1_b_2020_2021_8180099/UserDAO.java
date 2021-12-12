package exercise1_b_2020_2021_8180099;

import java.util.ArrayList;
import java.util.List;

/**
 * UserDAO provides all the necessary methods related to user's. 
 * In further lessons we will use JDBC API in order to connect the the database and store/retrieve users etc. 
 */
public class UserDAO {
		
	/**
	 * This method returns a List with all Users
	 * 
	 * @return List<User>
	 */
	public List<User> getUsers() {

		List<User> users = new ArrayList<User>();
		
		// adding some users for the sake of the example
		users.add(new User("John", "Doe", "jdoe@somewhere.com", "jdoe", "1111"));
		users.add(new User("Mary", "Smith", "msmith@somewhere.com", "msmith",  "1111"));
		
		return users;

	} //End of getUsers

	/**
	 * Search user by username
	 * 
	 * @param username, String
	 * @return User, the User object
	 * @throws Exception, if user not found
	 */
	public User findUser(String username) throws Exception {

		List<User> users = getUsers();

		for (User user : users) {

			if ( user.getUsername().equals(username) ) {
				return user;
			}

		}
		
		throw new Exception("User with username: " + username + " does not exist");
		
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

		List<User> users = getUsers();

		for (User user: users) {

			if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
				return user; // credentials are valid, so return the User object
			}

		}
		//credentials are Wrong, so throw an error
		throw new Exception("Wrong username or password");
		
	} //End of authenticate

} //End of class
