import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Delete{
	public static final String url = "jdbc:mysql://localhost/ecom";
	public static final String username = "root";
	public static final String password = "";
	
	public static void main(String[]args){

	}
	
	// loading the data into an array list
	public static void items(int itemid){
		try{
			String deleteitem = "DELETE FROM `item` WHERE `item`.`itemid` = "+itemid;
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery(deleteitem);
			while (rslt.next()){
				System.out.println();
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
	
	public static void sellers(int sellerid){
		try{
			String deleteseller = "DELETE FROM `seller` WHERE `seller`.`sellerid` = "+sellerid;
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery(deleteseller);
			while (rslt.next()){
				
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
	
	public static void buyers(int buyerid){
		try{
			String deltebuyer = "DELETE FROM `buyer` WHERE `buyer`.`buyerid` = "+buyerid;
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery(deltebuyer);
			while (rslt.next()){
				
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
	
	public static void users(int userid){
		try{
			String deleteitem = "DELETE FROM `user` WHERE `user`.`userid` = "+userid;
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery(deleteitem);
			while (rslt.next()){
				System.out.println();
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
}