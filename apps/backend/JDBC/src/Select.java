import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Select{
	public static final String url = "jdbc:mysql://localhost/ecom";
	public static final String username = "root";
	public static final String password = "";
	
	public static void main(String[]args){
		items();
	}
	
	// loading the data into an array list
	public static void items(){
		try{
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet re = query.executeQuery("select * from item");
			String spc = " ";
			while (re.next()){
				System.out.println(re.getInt("itemid")+spc+re.getString("title")+spc+re.getDouble("price"));
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
	
	public static void sellers(){
		try{
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery("select * from seller");
			while (rslt.next()){
				
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
	
	public static void buyers(){
		try{
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery("select * from buyer");
			while (rslt.next()){
				
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
	
	public static void users(){
		try{
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery("select * from user");
			while (rslt.next()){
				
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
}