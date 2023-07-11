package validate;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register_update
 */
@WebServlet("/register_update")
public class register_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register_update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String id = request.getParameter("val-id");
		String name = request.getParameter("val-username");
		String email = request.getParameter("val-email");
		String number = request.getParameter("val-phone");
		String password = request.getParameter("val-password");
		String confirmpassword = request.getParameter("val-confirm-password");
		
		
		Connection connection=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?characterEncoding=latin1","root","password");
			PreparedStatement st = connection.prepareStatement(" update register_user set name = ?,email=?,mobile_no=?,password=?,confirm_password=? where reg_id= ? ");
			//final ResultSet rs = st.executeQuery();
			//System.out.println("bbb");
			
			st.setString(1, name); 
			st.setString(2, email);
			st.setString(3, number); 
			st.setString(4, password);
			st.setString(5, confirmpassword); 
			st.setString(6, id);
			
			int i = st.executeUpdate();
			if(i > 0)
			{
				response.sendRedirect("register.jsp");
			}
			else
			{
				response.sendRedirect("register_edit.jsp");
			}
			    
                 
			 }
			
	
		catch (Exception e)
		{
			System.out.println(e);
		}
		
		
		
		
	}

}
