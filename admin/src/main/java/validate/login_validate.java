package validate;


import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/login_validate")
public class login_validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public login_validate() {
        super();
    }
    
    
    
    String names;
	String pass;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		/* String about = request.getParameter("fas_about"); */
		
		
		System.out.println(username);
		
		
		
		/*
		 * System.out.println("In do post method of Add Image servlet."); Part
		 * file=request.getPart("fas_image");
		 * 
		 * String imageFileName=file.getSubmittedFileName(); // get selected image file
		 * name System.out.println("Selected Image File Name : "+imageFileName);
		 * 
		 * 
		 * String uploadPath="C:/workspace2/dashboard/srcmain/webapp/images/products/"+
		 * imageFileName; // upload path where we have to upload our actual image
		 * System.out.println("Upload Path : "+uploadPath);
		 */
		// Uploading our selected image into the images folder
		
		/*
		 * try {
		 * 
		 * FileOutputStream fos=new FileOutputStream(uploadPath); InputStream
		 * is=file.getInputStream();
		 * 
		 * byte[] data=new byte[is.available()]; is.read(data); fos.write(data);
		 * fos.close();
		 * 
		 * }
		 * 
		 * catch(Exception e) { e.printStackTrace(); }
		 */
		//**********************
		
		//getting database connection (jdbc code)
		Connection connection=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?characterEncoding=latin1","root","password");
			PreparedStatement st = connection.prepareStatement("select * from admin where id = 1 ");
			final ResultSet rs = st.executeQuery();
			System.out.println("bbb");
			
			 
			 
			if (rs.next()) {
                names = rs.getString("username");
                System.out.println(names);
                
                
                pass = rs.getString("password");
               
			}
                 
              
     			
			    Boolean first=false;
     			Boolean second=false;
     			
     			
     			
     			if(names.equals(username)) {
     				
     				first=true;
     				System.out.println(first);
     			}
                 if(pass.equals(password)) {
     				
     				second=true;
     				System.out.println(second);
     			}
     			
     			
     			
     			
     			
     			if(first && second)
     			{
     				  response.sendRedirect("dashboard.jsp");
     			}
     			
     			else
     			{
     				  response.sendRedirect("index.jsp");
     			}
                 
                 
                 
                 
			 }
			
		
		
			
			
			
		
		catch (Exception e)
		{
			System.out.println(e);
		}
		
	}

}
