package com.pawsypaila_controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.pawsypaila_dao.RegisterDAO;

/**
 * Servlet implementation class signupController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/register" })
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    String fullName = request.getParameter("fullName");
    String phone    = request.getParameter("phone");
    String email    = request.getParameter("email");
    String password = request.getParameter("password");

    RegisterDAO dao = new RegisterDAO();

    try {
        dao.insertUser(fullName, phone, email, password);
        System.out.println("User inserted successfully");
    } catch (Exception e) {
        e.printStackTrace();
    }

    response.sendRedirect(request.getContextPath() + "/register");
	}

}
