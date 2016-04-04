package com.estsoft.mysite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.estsoft.db.DBConnection;
import com.estsoft.mysite.vo.BoardVo;

public class BoardDao {
	private DBConnection dbConnection;

	public BoardDao(DBConnection dbConnection) {
		this.dbConnection = dbConnection;
	}

	public BoardVo get(long boardNo) {
		BoardVo boardVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = dbConnection.getConnection();
			String sql = "SELECT no, title, content, user_no, hits, reg_date, group_no, order_no, depth FROM board WHERE no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, boardNo);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				Long no = rs.getLong(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				Long user_no = rs.getLong(4);
				Long hits = rs.getLong(5);
				String reg_date = rs.getString(6);
				Long group_no = rs.getLong(7);
				Long order_no = rs.getLong(8);
				Long depth = rs.getLong(9);
				boardVo = new BoardVo();
				boardVo.setNo(no);
				boardVo.setTitle(title);
				boardVo.setContent(content);
				boardVo.setUser_no(user_no);
				boardVo.setHits(hits);
				boardVo.setRegDate(reg_date);
				boardVo.setGroup_no(group_no);
				boardVo.setDepth(depth);
				boardVo.setOrder_no(order_no);
			}
			return boardVo;
		} catch (SQLException e) {
			System.out.println("error:" + e);
			return null;
		} finally {
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
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void incrementHits(BoardVo BoardVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = dbConnection.getConnection();
			String sql = "UPDATE board SET hits = hits+1 WHERE no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, BoardVo.getNo());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("error:" + e);
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public void update(BoardVo BoardVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = dbConnection.getConnection();
			String sql = "UPDATE Board SET title=?, content=? WHERE no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, BoardVo.getTitle());
			pstmt.setString(2, BoardVo.getContent());
			pstmt.setLong(3, BoardVo.getNo());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("error:" + e);
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public void insert(BoardVo vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = dbConnection.getConnection();
			String sql = "INSERT INTO board VALUES( null, ?, now(), ?, ?, (select ifnull( max( group_no ), 0 ) + 1 from board as b), "
					+ "1, 1, 0 )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setLong( 3, vo.getUser_no() );
		    pstmt.setLong( 4, vo.getGroup_no() );
			pstmt.executeUpdate();
		} catch (SQLException ex) {
			System.out.println("error:" + ex);
		} finally {
			try {
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
	}
	
	public void reply(BoardVo vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		try {
			conn = dbConnection.getConnection();
			String sql = "UPDATE board SET order_no = order_no+1 WHERE order_no >= ? and group_no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, vo.getOrder_no());
			pstmt.setLong(2, vo.getGroup_no());
			pstmt.executeUpdate();
			String sql2 = "INSERT INTO board VALUES( null, ?, now(), ?, ?, ?, ?, ?, 1)";
			pstmt2 = conn.prepareStatement(sql2);
			pstmt2.setString(1, vo.getTitle());
			pstmt2.setString(2, vo.getContent());
			pstmt2.setLong( 3, vo.getUser_no() );
		    pstmt2.setLong( 4, vo.getGroup_no() );
			pstmt2.setLong( 5, vo.getOrder_no() );
			pstmt2.setLong( 6, vo.getDepth() );
			pstmt2.executeUpdate();
		} catch (SQLException ex) {
			System.out.println("error:" + ex);
		} finally {
			try {
				if (pstmt != null && pstmt2!= null) {
					pstmt.close();
					pstmt2.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
	}

	public void delete(BoardVo vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = dbConnection.getConnection();
			// String sql = "DELETE FROM board WHERE no = ? AND user_no = ?";
			String sql = "DELETE FROM board WHERE no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, vo.getNo());
			// pstmt.setLong( 2, vo.getUser_no() );
			pstmt.executeUpdate();
		} catch (SQLException ex) {
			System.out.println("error:" + ex);
		} finally {
			try {
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
	}

	public List<BoardVo> getList() {
		List<BoardVo> list = new ArrayList<BoardVo>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = dbConnection.getConnection();
			stmt = conn.createStatement();
			String sql = "SELECT no, title, DATE_FORMAT( reg_date, '%Y-%m-%d %p %h:%i:%s' ), content"
					+ " content, user_no, group_no, order_no, depth, hits from board ORDER BY group_no desc, order_no";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Long no = rs.getLong(1);
				String title = rs.getString(2);
				String regDate = rs.getString(3);
				String content = rs.getString(4);
				Long user_no = rs.getLong(5);
				Long group_no = rs.getLong(6);
				Long order_no = rs.getLong(7);
				Long depth = rs.getLong(8);
				Long hits = rs.getLong(9);

				BoardVo vo = new BoardVo();
				vo.setNo(no);
				vo.setTitle(title);
				vo.setRegDate(regDate);
				vo.setContent(content);
				vo.setUser_no(user_no);
				vo.setGroup_no(group_no);
				vo.setOrder_no(order_no);
				vo.setDepth(depth);
				vo.setHits(hits);

				list.add(vo);
			}
		} catch (SQLException ex) {
			System.out.println("error: " + ex);
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}

		return list;
	}

}
