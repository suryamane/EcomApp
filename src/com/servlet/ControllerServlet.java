package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Products;
import com.bean.User;
import com.dao.ProductsDaoImp;
import com.dao.UserDao;
import com.dao.UserDaoImpl;
@WebServlet("/controllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ControllerServlet() {
		super();
	}
	UserDao dao = new UserDaoImpl();
	ProductsDaoImp pdao = new ProductsDaoImp();
protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	String action=request.getParameter("action");
	List<Products> cartProducts=new ArrayList<Products>();
	ServletContext context = getServletContext();
	
	HttpSession session = request.getSession();
	/* **********login and getting products **************** */
	if(action.equals("login")) {
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		User user = new User(uname, password);
		boolean valid = dao.validateUser(user);
		session.setAttribute("uname", uname);
		if (valid) {
			System.out.println("success");
			List<Products> products = pdao.getProducts();
			context.setAttribute("products", products);
			response.sendRedirect("Products.jsp");

		} else {
			System.out.println("failed");
			request.setAttribute("message", "Please try again !! Your credentials are invalid!!");
			/*response.sendRedirect("Signin.jsp");*/
			RequestDispatcher view = request.getRequestDispatcher("Signin.jsp");
			view.forward(request, response);
		}
	}
	/* *******logout and come to sign-in page ******** */
	else if(action.equals("logout")) {
		session.invalidate();
		response.sendRedirect("Signin.jsp");
		
		}
	/* ******description page********** */
	else if(action.equals("description")) {
		
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		Products activeProduct=pdao.getById(id);
		request.setAttribute("product", activeProduct);
		RequestDispatcher view = request.getRequestDispatcher("description.jsp");
		view.forward(request, response);
		/*response.sendRedirect("description.jsp");*/
		}
	/* Adding Item to cart */
	else if(action.equals("add2Cart")) {
		int id=Integer.parseInt(request.getParameter("id"));
		Products cartProduct=pdao.getById(id);
		cartProducts.add(cartProduct);
		session.setAttribute("cart", cartProducts);
	}
	}
	
protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
	}

}
