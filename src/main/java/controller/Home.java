package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.electricityBilling.dao.electricityBillingDAO;
import com.electricityBilling.model.electricityBilling;


@WebServlet("/")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	electricityBillingDAO dao;
    
    public Home() {
        super();
        
    }
    
    public void init() {
    	
    	dao = new electricityBillingDAO();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.getWriter().append("Served at: ").append(request.getContextPath()); 
		
		RequestDispatcher requestDispatcher;
		String action  = request.getServletPath();
		
		switch(action)
		{
		case "/register":
			requestDispatcher = request.getRequestDispatcher("registration.jsp");
			requestDispatcher.forward(request, response);
			break;
			
		case "/login":
			requestDispatcher = request.getRequestDispatcher("login.jsp");
			requestDispatcher.forward(request, response);
			break;
			
		case "/insert" : insertUser(request, response); break;
		
		case "/list": listUser(request, response);break;
		
		case "/loginprocess":
			try {
				loginProcess(request, response);
			} catch (ServletException | IOException | SQLException e) {
				
				e.printStackTrace();
			}break;
		
			
		}
		
		
		
	}

	
	public void insertUser(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String contact=request.getParameter("contactNumber");
		String country=request.getParameter("country");
		String password=request.getParameter("password");
		electricityBilling user= new electricityBilling(name, email, country,password);
		dao.insertUser(user);
		response.sendRedirect("list");
	}
	
	public void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
			List<electricityBilling> users=dao.selectAllUsers();
			request.setAttribute("listuser", users);
			RequestDispatcher dispatcher=request.getRequestDispatcher("userList.jsp");
			dispatcher.forward(request, response);

	}
	
	
	public void loginProcess(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException, SQLException
	{
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		electricityBilling dao=new electricityBilling();
		try(Connection connection=dao.getConnection())
		{
			PreparedStatement preparedStatement=connection.prepareStatement("select * from users where email=? and passwd=?");
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			
			ResultSet result=preparedStatement.executeQuery();
			
			if(result.next())
			{
				HttpSession httpSession=request.getSession();
				httpSession.setAttribute("status", "active");
				httpSession.setAttribute("email",email);
				RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
			}
			else
			{
				HttpSession httpSession=request.getSession();
				httpSession.setAttribute("status", "Inactive");
				RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
