package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Staff;
import util.MySQLConnection;

public class StaffDAO {

	public static ArrayList<Staff> getAllStaff() throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM nhanvien");
		ResultSet rs = ps.executeQuery();
		ArrayList<Staff> list = new ArrayList<Staff>();

		while (rs.next()) {
			Staff staff = new Staff();
			staff.setIdnv(rs.getString("IDNV"));
			staff.setIdpb(rs.getString("IDPB"));
			staff.setHoTen(rs.getString("Hoten"));
			staff.setDiaChi(rs.getString("Diachi"));

			list.add(staff);
		}

		return list;
	}

	public static Staff getStaffByID(String idnv) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM nhanvien WHERE IDNV = '" + idnv + "' ");
		ResultSet rs = ps.executeQuery();
		Staff staff = new Staff();

		while (rs.next()) {
			staff.setIdnv(rs.getString("IDNV"));
			staff.setIdpb(rs.getString("IDPB"));
			staff.setHoTen(rs.getString("Hoten"));
			staff.setDiaChi(rs.getString("Diachi"));
		}

		return staff;
	}

	public static ArrayList<Staff> getStaffOfDepartment(String idpb) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM nhanvien WHERE IDPB = '" + idpb + "' ");
		ResultSet rs = ps.executeQuery();
		ArrayList<Staff> list = new ArrayList<Staff>();

		while (rs.next()) {
			Staff staff = new Staff();
			staff.setIdnv(rs.getString("IDNV"));
			staff.setIdpb(rs.getString("IDPB"));
			staff.setHoTen(rs.getString("Hoten"));
			staff.setDiaChi(rs.getString("Diachi"));

			list.add(staff);
		}

		return list;
	}
	
	// Test
	
	  public static void main(String[] args) throws SQLException { ArrayList<Staff>
	  list = getAllStaff();
	  
	  for (Staff p : list) { System.out.println(p.getIdnv()); }
	  
	  }
	 

}
