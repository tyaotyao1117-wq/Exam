package dao;
import java.sql.Connection;

//import javax.naming.InitialContext;
//import javax.sql.DataSource;

import java.sql.DriverManager;

public class Dao {
 
//   static DataSource ds;
 
   public Connection getConnection() throws Exception {
 
//       if (ds == null) {
//           InitialContext ic = new InitialContext();
//           ds = (DataSource)ic.lookup("java:/comp/env/jdbc/book");
//       }
// 
//       return ds.getConnection();
	   
	   Class.forName("org.postgresql.Driver");
	   return DriverManager.getConnection(
			    "jdbc:postgresql://localhost:5432/exam",
			    "postgres",
			    "postgres"
			);
   }
}