package user;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://userdb.cpeg4xklh37z.ap-northeast-2.rds.amazonaws.com:3306/deploy?useSSL=false&serverTimezone=Asia/Seoul"; 
			String dbID = "hyunam";
			String dbPassword = "dktlqkf12";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;	// 로그인 성공					
				}
				else
					return 0;	// 비밀번호 불일치
			}
			return -1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;	// 데이터베이스 오류
	}
	
}