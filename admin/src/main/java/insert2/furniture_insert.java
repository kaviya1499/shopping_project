package insert2;


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
@WebServlet("/furniture_insert")
public class furniture_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public furniture_insert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("fas_name");
		String price = request.getParameter("fas_price");
        String about = request.getParameter("fas_about");
		
		
		
		System.out.println("In do post method of Add Image servlet.");
		Part file=request.getPart("fas_image");
		
		String imageFileName=file.getSubmittedFileName();  // get selected image file name
		System.out.println("Selected Image File Name : "+imageFileName);
		
		
		String uploadPath="C:/workspace2/admin/src/main/webapp/images/products/"+imageFileName;  // upload path where we have to upload our actual image
		System.out.println("Upload Path : "+uploadPath);
		
		// Uploading our selected image into the images folder
		
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//**********************
		
		//getting database connection (jdbc code)
		Connection connection=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?characterEncoding=latin1","root","password");
			PreparedStatement stmt;
			String query="insert into furniture(name,price,discription,image) values(?,?,?,?)";
			stmt=connection.prepareStatement(query);
			 stmt.setString(1, name);
			 stmt.setString(2, price);
			 stmt.setString(3, about);
			stmt.setString(4,imageFileName);
			int row=stmt.executeUpdate(); // it returns no of rows affected.
			
			if(row>0)
			{
				  response.sendRedirect("furniture_table.jsp");
			}
			
			else
			{
				  response.sendRedirect("furniture_form.jsp");
			}
			
			
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
	}

}
