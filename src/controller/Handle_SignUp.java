package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.User;

@WebServlet(name = "Handle_SignUp", urlPatterns = { "/Handle_SignUp" })
public class Handle_SignUp extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String passwordConfirm = request.getParameter("passwordConfirm");
			
			HttpSession session = request.getSession();
			session.removeAttribute("invalid");
			
			if (password.equals(passwordConfirm)) {
				User user = new User();
				user.setUsername(username);
				user.setPassword(password);
				UserDAO.insert(user);

				session.removeAttribute("error");
				response.sendRedirect("/home");
			} else {
				session.setAttribute("error", "Y");
				response.sendRedirect("/signup");
			}

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
