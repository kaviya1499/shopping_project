<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String delid=request.getParameter("delid");
String cat_id=request.getParameter("catid");
//System.out.println(catid);

String table_name=null;
String filename1=null;
//String filename2=null;

String table1="fashion";
String file1 = "fashion_table.jsp";



String table2="grocery";
String file2 = "grocery_table.jsp";


String table3="electronic";
String file3 = "electronics_table.jsp";


String table4="furniture";
String file4 = "furniture_table.jsp";


String table5="healthcare";
String file5 = "health_table.jsp";



String table6="gift";
String file6 = "gift_table.jsp";



String table7="education";
String file7 = "education_table.jsp";



String table8="sports";
String file8 = "sports_table.jsp";


String table9="register_user";
String file9 = "register.jsp";


if(cat_id.equals("1")) {
	   table_name= table1;
	   filename1= file1;
	   
	}
else if(cat_id.equals("2")) {
	   table_name= table2;
	   filename1= file2;
	  
	}
else if(cat_id.equals("3")) {
	   table_name= table3;
	   filename1= file3;
	  
	}
else if(cat_id.equals("4")) {
	   table_name= table4;
	   filename1= file4;
	
	}
else if(cat_id.equals("5")) {
	   table_name= table5;
	   filename1= file5;
	  
	}
else if(cat_id.equals("6")) {
	   table_name= table6;
	   filename1= file6;
	  
	}
else if(cat_id.equals("7")) {
	   table_name= table7;
	   filename1= file7;
	 
	}
else if(cat_id.equals("8")) {
	   table_name= table8;
	   filename1= file8;
	  
	}
else if(cat_id.equals("9")) {
	   table_name= table9;
	   filename1= file9;
	  
	}




Connection connection=null;
	 try {
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?characterEncoding=latin1","root","password");
			PreparedStatement st;
			if(cat_id.equals("9")){
				 st = connection.prepareStatement(" delete from "+table_name+" where reg_id = "+delid+" ");
			}
			else{
			 st = connection.prepareStatement(" delete from "+table_name+" where id = "+delid+" ");
			}
			//final ResultSet rs = st.executeQuery();
			//System.out.println("bbb");
			
			//st.setString(1, name); 
		
			
			int i = st.executeUpdate();
			/* if(i > 0)
			{ */
				response.sendRedirect(filename1);
			/* }
			else
			{
				response.sendRedirect("dashboard.jsp");
			}
			   */ 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>