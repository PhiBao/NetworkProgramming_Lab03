package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Department;
import util.MySQLConnection;

public class DepartmentDAO {

	public static ArrayList<Department> getAllDepartment() throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM phongban");
		ResultSet rs = ps.executeQuery();
		ArrayList<Department> list = new ArrayList<Department>();

		while (rs.next()) {
			Department department = new Department();
			department.setIdpb(rs.getString("IDPB"));
			department.setTenPhongBan(rs.getString("Tenpb"));
			department.setMoTa(rs.getString("Mota"));

			list.add(department);
		}

		return list;
	}

	public static Department getDepartmentByID(String idpb) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM phongban WHERE IDPB = '" + idpb + "' ");
		ResultSet rs = ps.executeQuery();
		Department department = new Department();

		while (rs.next()) {
			department.setIdpb(rs.getString("IDPB"));
			department.setTenPhongBan(rs.getString("Tenpb"));
			department.setMoTa(rs.getString("Mota"));
		}

		return department;
	}

	public static void insert(Department department) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("INSERT INTO phongban(IDPB, Tenpb, Mota) VALUES(?, ?, ?)");

		ps.setString(1, department.getIdpb());
		ps.setString(2, department.getTenPhongBan());
		ps.setString(3, department.getMoTa());

		ps.execute();
	}

	public static void update(Department department) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("UPDATE phongban SET Tenpb=?,Mota=? WHERE IDPB=?");
		ps.setString(1, department.getTenPhongBan());
		ps.setString(2, department.getMoTa());
		ps.setString(3, department.getIdpb());

		ps.executeUpdate();
	}

	public static void delete(String idpb) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("DELETE FROM phongban WHERE IDPB=?");
		ps.setString(1, idpb);

		ps.executeUpdate();
	}

	public static void multiDelete(String[] idpb) throws SQLException {

		Connection conn = MySQLConnection.connect();
		for (String id : idpb) {
			PreparedStatement ps = conn.prepareStatement("DELETE FROM phongban WHERE IDPB=?");
			ps.setString(1, id);

			ps.executeUpdate();
		}
	}

	public static void deleteAll() throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("TRUNCATE phongban");

		ps.executeUpdate();
	}

}
