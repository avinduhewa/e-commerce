import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Add{
	public static final String url = "jdbc:mysql://localhost/ecom";
	public static final String username = "root";
	public static final String password = "";
	
	public static void main(String[]args){

	}
	
	// loading the data into an array list
	public static void items(int itemid, String title, String description, String image, double price, String location, int sellerid, String status){
		try{
			String addItem = "INSERT INTO `item` (`itemid`, `title`, `description`, `image`, `price`, `creationdate`, `location`, `sellerid`, `status`) VALUES ('"+itemid+"', '"+title+"', '"+description+"', '"+image+"', '"+price+"', CURRENT_TIMESTAMP, '"+location+"', '"+sellerid+"', '"+status+"')";
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery(addItem);
			while (rslt.next()){
				System.out.println();
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
	
	public static void sellers(int sellerid, int userid, String location){
		try{
			String addseller = "INSERT INTO `seller` (`sellerid`, `userid`, `location`) VALUES ('"+sellerid+"', '"+userid+"', '"+location+"')";
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery(addseller);
			while (rslt.next()){
				System.out.println();
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
	
	public static void buyers(int buyerid, int userid){
		try{
			String addbuyer = "INSERT INTO `buyer` (`buyerid`, `userid`) VALUES ('"+buyerid+"', '"+userid+"')";
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery(addbuyer);
			while (rslt.next()){
				System.out.println();
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
	
	public static void users(int userid, String fname, String lname, String email, String password, String image){
		try{
			String adduser = "INSERT INTO `user` (`userid`, `fname`, `lname`, `email`, `password`, `userimage`) VALUES ('"+userid+"', '"+fname+"', '"+lname+"', '"+email+"', '"+password+"', '"+image+"')";
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement query = conn.createStatement();
			ResultSet rslt = query.executeQuery(adduser);
			while (rslt.next()){
				System.out.println();
			}
		}catch(Exception ecx){
			ecx.printStackTrace();
		}
	}
}