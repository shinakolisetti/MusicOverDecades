import java.sql.DriverManager;
import com.mysql.jdbc.Connection;

public class JavaToSQL { 
	public void connectToDB() { 
		String url = "jdbc:mysql://mymusicdb.c4bpngja197w.us-west-2.rds.amazonaws.com:3306/"; 
		String dbName = "MusicOverDecades";
				String driver = "com.mysql.jdbc.Driver"; 
		String userName = "db_student"; 
		String password = "db-student"; 
		try { 
			Class.forName(driver).newInstance(); 
			Connection conn = (Connection) DriverManager.getConnection(url+dbName,userName,password); 
			conn.close(); 
		} catch (Exception e) { 
			e.printStackTrace(); 
			return;
		} 
		System.out.println("SUCCESS");
	} 
}
