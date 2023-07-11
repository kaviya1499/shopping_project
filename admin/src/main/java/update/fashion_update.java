package update;


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
@WebServlet("/fashion_update")
public class fashion_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public fashion_update() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String table_name=null;
		 String filename1=null;
		String filename2=null;
		String cat_id =  request.getParameter("cat_id");
		
		
		String table1="fashion";
		String file1 = "fashion_table.jsp";
		String files1 = "fashion_edit_form.jsp";
		

		String table2="grocery";
		String file2 = "grocery_table.jsp";
		String files2 = "grocery_edit_form.jsp";

		String table3="electronic";
		String file3 = "electronics_table.jsp";
		String files3 = "electronics_edit_form.jsp";

		String table4="furniture";
		String file4 = "furniture_table.jsp";
		String files4 = "furniture_edit_form.jsp";

		String table5="healthcare";
		String file5 = "health_table.jsp";
		String files5 = "health_edit_form.jsp";
		

		String table6="gift";
		String file6 = "gift_table.jsp";
		String files6 = "gift_edit_form.jsp";
		

		String table7="education";
		String file7 = "education_table.jsp";
		String files7 = "education_edit_form.jsp";
		

		String table8="sports";
		String file8 = "sports_table.jsp";
		String files8 = "sports_edit_form.jsp";
		
		if(cat_id.equals("1")) {
			   table_name= table1;
			   filename1= file1;
			   filename2= files1;
			}
		else if(cat_id.equals("2")) {
			   table_name= table2;
			   filename1= file2;
			   filename2= files2;
			}
		else if(cat_id.equals("3")) {
			   table_name= table3;
			   filename1= file3;
			   filename2= files3;
			}
		else if(cat_id.equals("4")) {
			   table_name= table4;
			   filename1= file4;
			   filename2= files4;
			}
		else if(cat_id.equals("5")) {
			   table_name= table5;
			   filename1= file5;
			   filename2= files5;
			}
		else if(cat_id.equals("6")) {
			   table_name= table6;
			   filename1= file6;
			   filename2= files6;
			}
		else if(cat_id.equals("7")) {
			   table_name= table7;
			   filename1= file7;
			   filename2= files7;
			}
		else if(cat_id.equals("8")) {
			   table_name= table8;
			   filename1= file8;
			   filename2= files8;
			}
		
		
		
		String id = request.getParameter("fas_id");
		String name = request.getParameter("fas_name");
		String price = request.getParameter("fas_price");
        String about = request.getParameter("fas_about");
        System.out.println(cat_id+id+name+price+about);
		
		
		System.out.println("In do post method of Add Image servlet.");
		Part file=request.getPart("fas_image");
		System.out.println(file);
		String imageFileName=file.getSubmittedFileName();  // get selected image file name
		System.out.println("Selected Image File Name : "+imageFileName);
		System.out.println(imageFileName.isEmpty());
		
		if(!(imageFileName.isEmpty())) {
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
		}
		//getting database connection (jdbc code)
		Connection connection=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?characterEncoding=latin1","root","password");
			PreparedStatement stmt;
			
			
			
				
			
			if(!(imageFileName.isEmpty())) {
			String query="update "+table_name+" set name = ?,price=?,discription=?,image=? where id=? ";
			stmt=connection.prepareStatement(query);
			 stmt.setString(1, name);
			 stmt.setString(2, price);
			 stmt.setString(3, about);
			stmt.setString(4,imageFileName);
			stmt.setString(5,id);
			}
			else 
			{
				String query="update "+table_name+" set name = ?,price=?,discription=? where id=? ";
				stmt=connection.prepareStatement(query);
				 stmt.setString(1, name);
				 stmt.setString(2, price);
				 stmt.setString(3, about);
				
				stmt.setString(4,id);
				
			}
			
			
			
			int row=stmt.executeUpdate(); // it returns no of rows affected.
			
			if(row>0)
			{
				  response.sendRedirect(filename1);
			}
			
			else
			{
				  response.sendRedirect(filename2);
			}
			
			
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
	}

}