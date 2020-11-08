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
	
	public static ArrayList<Staff> getStaffByIDPB(String idpb) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM nhanvien WHERE IDPB = ?");
		ps.setString(1, idpb);
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

	public static void insert(Staff staff) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn
				.prepareStatement("INSERT INTO nhanvien(IDNV, IDPB, Hoten, Diachi) VALUES(?, ?, ?, ?)");
		ps.setString(1, staff.getIdnv());
		ps.setString(2, staff.getIdpb());
		ps.setString(3, staff.getHoTen());
		ps.setString(4, staff.getDiaChi());

		ps.execute();
	}

	public static void update(Staff staff) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("UPDATE nhanvien SET IDPB=?,Hoten=?,Diachi=? WHERE IDNV=?");
		ps.setString(1, staff.getIdpb());
		ps.setString(2, staff.getHoTen());
		ps.setString(3, staff.getDiaChi());
		ps.setString(4, staff.getIdnv());

		ps.executeUpdate();
	}

	public static void delete(String idnv) throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("DELETE FROM nhanvien WHERE IDNV=?");
		ps.setString(1, idnv);

		ps.executeUpdate();
	}

	public static void multiDelete(String[] idnv) throws SQLException {

		Connection conn = MySQLConnection.connect();
		for (String id : idnv) {
			PreparedStatement ps = conn.prepareStatement("DELETE FROM nhanvien WHERE IDNV=?");
			ps.setString(1, id);

			ps.executeUpdate();
		}
	}

	public static void deleteAll() throws SQLException {

		Connection conn = MySQLConnection.connect();
		PreparedStatement ps = conn.prepareStatement("TRUNCATE nhanvien");

		ps.executeUpdate();
	}

}
