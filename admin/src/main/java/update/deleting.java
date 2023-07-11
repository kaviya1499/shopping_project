package update;

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
@WebServlet("/deleting")
public class deleting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleting() {
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
		String catid = request.getParameter("cat-id");
		String delid = request.getParameter("del_id");
		
		
		
		Connection connection=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?characterEncoding=latin1","root","password");
			PreparedStatement st = connection.prepareStatement(" delete from fashion where id = 1 ");
			//final ResultSet rs = st.executeQuery();
			//System.out.println("bbb");
			
			//st.setString(1, name); 
		
			
			int i = st.executeUpdate();
			if(i > 0)
			{
				response.sendRedirect("fashion_table.jsp");
			}
			else
			{
				response.sendRedirect("dashboard.jsp");
			}
			    
                 
			 }
			
	
		catch (Exception e)
		{
			System.out.println(e);
		}
		
		
		
		
	}

}
