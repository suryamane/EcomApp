package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.User;
import com.dao.DBConnectionUtil;
import com.dao.DbConnections;
import com.dao.ProductsDaoImp;
import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.mysql.jdbc.Util;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	UserDao dao = new UserDaoImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		ProductsDaoImp pdao = new ProductsDaoImp();
		List products = pdao.getProducts();
		User user = new User(uname, password);
		System.out.println(user);
		boolean valid = dao.validateUser(user);
		 HttpSession session=request.getSession(); 
		 session.setAttribute("uname",uname );
		if (valid) {
			System.out.println("success");
			session.setAttribute("products", products);

			RequestDispatcher view = request.getRequestDispatcher("Products.jsp");
			view.forward(request, response);

		} else {

			request.setAttribute("message", "Please try again !! Your credentials are invalid!!");
			RequestDispatcher view = request.getRequestDispatcher("Signin.jsp");
			view.forward(request, response);
			// response.sendRedirect("login.html");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
