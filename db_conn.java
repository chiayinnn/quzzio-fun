import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class db_conn {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/quizzio_db";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
    }

    public static void main(String[] args) {
        try (Connection connection = getConnection()) {
            System.out.println("Connection to MySQL database established successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Connection to MySQL database failed.");
        }
    }
}
