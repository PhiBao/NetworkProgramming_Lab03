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

}
