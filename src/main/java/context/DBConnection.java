package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//public class DBConnection {
//    private String jdbcURL = "jdbc:mysql://localhost:3306/ql_sanphamwhey";
//    private String jdbcUsername = "root";
//    private String jdbcPassword = "123456";

//    public Connection getConnection() {
//        Connection connection = null;
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            connection =  DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
//        } catch (SQLException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } catch (ClassNotFoundException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//        return connection;
//    }

public class DBConnection {
    public static String jdbcURL = "jdbc:mysql://localhost:3306/ql_sanphamwhey?useSSL=false";
    public static String jdbcUsername = "root";
    public static String jdbcPassword = "12345678";

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
}

