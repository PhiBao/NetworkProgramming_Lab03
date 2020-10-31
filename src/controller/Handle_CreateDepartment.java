package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DepartmentDAO;
import model.Department;

@WebServlet(name = "Handle_CreateDepartment", urlPatterns = { "/Handle_CreateDepartment" })
public class Handle_CreateDepartment extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

		try {

			Department department = new Department();
			department.setIdpb(request.getParameter("IDPB"));
			department.setTenPhongBan(request.getParameter("TenPhongBan"));
			department.setMoTa(request.getParameter("MoTa"));

			DepartmentDAO.insert(department);

			response.sendRedirect("/department");

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
