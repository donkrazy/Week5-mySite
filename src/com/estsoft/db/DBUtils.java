package com.estsoft.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DBUtils {
	public static void clean_up(Connection conn, PreparedStatement pstmt) {
		try {
			if (pstmt != null && conn != null) {
				pstmt.close();
				conn.close();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	public static void clean_up(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	public static void clean_up(Connection conn, Statement stmt, ResultSet rs) {
		try {
			if (rs != null && stmt != null && conn != null) {
				rs.close();
				stmt.close();
				conn.close();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

}
