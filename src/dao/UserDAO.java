package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;
import util.MySQLConnection;

public class UserDAO {

	public static User getUser(String username, String password) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement(
				"SELECT * FROM users WHERE Username = ? AND Password = ?");
		ps.setString(1, username);
		ps.setString(2, password);
		
		ResultSet rs = ps.executeQuery();
		User user = new User();

		while (rs.next()) {
			user.setUsername(rs.getString("Username"));
			user.setPassword(rs.getString("Password"));
		}

		return user;
	}

	public static void insert(User user) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("INSERT INTO users(Username, Password) VALUES(?, ?)");
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());

		ps.execute();
	}

}
