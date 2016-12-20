package controller;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
public class ServletHomeController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String language=req.getParameter("lang");
		HttpSession session=req.getSession();
		
ResourceBundle rb=ResourceBundle.getBundle("dictionary",new Locale(language));

		
		session.setAttribute("langselected",rb);		
		resp.sendRedirect("index.jsp");
		
	
	}
}
