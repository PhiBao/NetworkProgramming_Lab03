package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StaffDAO;
import model.Staff;

@WebServlet(name = "Handle_CreateStaff", urlPatterns = { "/Handle_CreateStaff" })
public class Handle_CreateStaff extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

		try {

			Staff staff = new Staff();
			staff.setIdnv(request.getParameter("IDNV"));
			staff.setIdpb(request.getParameter("IDPB"));
			staff.setHoTen(request.getParameter("HoTen"));
			staff.setDiaChi(request.getParameter("DiaChi"));

			StaffDAO.insert(staff);

			response.sendRedirect("/update/staff");

		} catch (Exception e) {
			System.out.println("Request err: " + e.getMessage());
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
