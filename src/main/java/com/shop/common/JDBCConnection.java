package com.shop.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.shop.user.Impl.MemberDao;

public class JDBCConnection
{
	private static MemberDao mDao;
	private static  Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
	public static Connection getConnection() {
	String url = "jdbc:mysql://127.0.0.1:3306/bookrecommendationdb?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
	String id = "root", pw = "1234";
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(url, id, pw);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return con;
}
	
	public static void close(PreparedStatement stmt, Connection conn) {
		if (stmt != null) {
			try {
				if (!stmt.isClosed())
					stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				stmt = null;
			}
		}
		if (conn != null) {
			try {
				if (!conn.isClosed())
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				conn = null;
			}
		}
	}

public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
	if (rs != null) {
		try {
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	if (pstmt != null) {
		try {
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	if (con != null) {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
}
